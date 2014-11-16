using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;
using Aphelion.Recon.RulesEngine;

namespace Aphelion.Recon
{
    public class ReconWriter
    {
        public ReconType rtCompare { get; set; }
        public string strReconTypeCode
        {
            get
            {
                return rtCompare.ToString();
            }
            set {
            switch (value.ToUpper()) {
                case "SUMMARY":
                    rtCompare = ReconType.SUMMARY;
                    break;
                case "PREVDAY":
                    rtCompare = ReconType.PREVDAY;
                    break;
                case "DETAIL":
                    rtCompare = ReconType.DETAIL;
                    break;

        }
            }
        }

        public RulesBase rbCompare { get; private set; }
        public DataTable dtSummary { get; private set; }
        public DataTable dtDetail { get; private set; }
        public DateTime dtReconDate { get; set; }
        public int intReconProcessStepID { get; set; }
        private string _strReconProcessStep;

        public string strReconProcessStep
        {
            get
            {
                return _strReconProcessStep;
            }
            set
            {
                this._strReconProcessStep = value;
                if (intReconProcessStepID == 0)
                {
                    sqlConn.Open();
                    SqlCommand comm = new SqlCommand(string.Format(SQL.constSQLGetProcessStep, this._strReconProcessStep), sqlConn);
                    //intReconProcessStepID = System.Convert.ToInt32(comm.ExecuteScalar().ToString());
                    SqlDataReader reader = comm.ExecuteReader();
                    if (reader.HasRows)
                    {
                        reader.Read();
                        intReconProcessStepID = reader.GetInt32(0);
                        this.strReconTypeCode = reader.GetString(4);
                    }
                    sqlConn.Close();
                }
            }
        }

        private int _intReconStatusID = 0;

        public int intReconStatusID
        {
            get
            {
                if (this._intReconStatusID == 0)
                {
                    this._intReconStatusID = TypeCache.GetTypeCache(this.sqlConn.ConnectionString).getReconStatusID(this.strReconStatus);
                }

                return this._intReconStatusID;
            }
        }
        public string strReconStatus { get; set; }

        public string strConn { get; set; }  

        public SqlConnection sqlConn { get; set; }

        public ReconWriter(string pConn, RulesBase pRB)
        {
            this.strConn = pConn;
            this.rbCompare = pRB;
            sqlConn = new SqlConnection(this.strConn);
            this.dtReconDate = System.DateTime.Now;
        }
        public void SetupDataTables()
        {
            sqlConn.Open();
            SqlCommand comm = new SqlCommand();
            SqlDataAdapter da ;

            this.dtSummary = new DataTable("ReconSummary");
            comm.Connection = sqlConn;
            comm.CommandText = string.Format(SQL.constSQLGetReconSummary, this._strReconProcessStep, this.dtReconDate);
            da = new SqlDataAdapter(comm);
            da.Fill(dtSummary);
       
            this.dtDetail = new DataTable("ReconDetail");
            comm.Connection = sqlConn;
            comm.CommandText = string.Format(SQL.constSQLGetReconDetail, this._strReconProcessStep, this.dtReconDate);
            da = new SqlDataAdapter(comm);
            da.Fill(dtDetail);
            

        }

        public void PopulateDetailsFromSource()
        {
            #region summary
            DataRow drSummary;
            bool boolInsert = false;
            if (dtSummary.Rows.Count == 0)
            {
                boolInsert = true;
                drSummary =  dtSummary.Rows.Add();
                if ( dtReconDate == null)
                {
                    dtReconDate = DateTime.Now;
                }
                drSummary["ReconDate"] = dtReconDate;
                drSummary["ReconStart"] = DateTime.Now;
                drSummary["ReconProcessStepID"] = this.intReconProcessStepID;
                if (strReconStatus == null || strReconStatus == "")
                {
                    strReconStatus = "STARTED";
                }
                drSummary["ReconStatusID"] = this.intReconStatusID;
            }
            else
            {
                drSummary = dtSummary.Rows[0];
            }
            drSummary["SourceTotal"] = rbCompare.decSourceTotal;
            drSummary["DestTotal"] = rbCompare.decDestinationTotal;

            drSummary["SourceCount"] = rbCompare.intSourceCount;
            drSummary["DestCount"] = rbCompare.intDestinationCount;

            if (rbCompare.decSourceTotal != rbCompare.decDestinationTotal)
            {
                drSummary["ReconStatusID"] = TypeCache.GetTypeCache(this.sqlConn.ConnectionString).getReconStatusID("ISSUES");
            }
            dtSummary.AcceptChanges();
            if (boolInsert)
            {
                SqlBulkCopy bulkCopy = new SqlBulkCopy(sqlConn);
                bulkCopy.BatchSize = 20000;
                bulkCopy.DestinationTableName = "Recon." + dtSummary.TableName;
                for (int i = 0; i < dtSummary.Columns.Count; i++ )
                {
                    SqlBulkCopyColumnMapping cMap = new SqlBulkCopyColumnMapping(i, i);
                    bulkCopy.ColumnMappings.Add(cMap);
                } 
                bulkCopy.WriteToServer(dtSummary);
  
            }
            else
            {
                ///TODO: Support updates of same day recons
                SqlDataAdapter da = new SqlDataAdapter(string.Format(SQL.constSQLGetReconSummary, this._strReconProcessStep, this.dtReconDate), sqlConn);
                new SqlCommandBuilder(da);
                da.Update(dtSummary);
                dtSummary.AcceptChanges();
            }
            #endregion

            if (rtCompare == ReconType.SUMMARY)
            {
                LoadSummaryAsDetails(drSummary);
            }
            else
            {
                LoadDetails(drSummary);
            }

        }


        private void LoadDetails(DataRow drSummary)
        {
            foreach (DataRow drMatch in this.rbCompare.dtMatchedBalanced.Rows)
            {
                DataRow drSource = dtDetail.Rows.Add();
                drSource["ReconSummaryID"] = drSummary["ID"];
                drSource["ReconItemStatusID"] = TypeCache.GetTypeCache().getReconStatusID("AUTO");
                drSource["Value"] = drMatch["SrcValue"];
                drSource["SourceKey"] = drMatch["SrcSourceKey"];
                drSource.AcceptChanges();

                DataRow drDestination = dtDetail.Rows.Add();
                drDestination["ReconSummaryID"] = drSummary["ID"];
                drDestination["MatchedReconDetailID"] = drSource["ID"];
                drDestination["ReconItemStatusID"] = TypeCache.GetTypeCache().getReconStatusID("AUTO");
                drDestination["Value"] = drMatch["SrcValue"];
                drDestination["DestinationKey"] = drMatch["SrcDestinationKey"];
                drDestination.AcceptChanges();

                //Match back the rows - so it's a two way match. 
                drSource["MatchedReconDetailID"] = drDestination["ID"];
                drSource.AcceptChanges();
            
            }
        }
        private void LoadSummaryAsDetails(DataRow drSummary)
        {
            DataRow drSource = dtDetail.Rows.Add();
            drSource["ReconSummaryID"] = drSummary["ID"];
            drSource["Value"] = rbCompare.decSourceTotal;
            if (rbCompare.decSourceTotal == rbCompare.decDestinationTotal)
            {
                drSource["ReconItemStatusID"] = TypeCache.GetTypeCache(this.strConn).getReconItemStatusID("MATCH");
            }
            else
            {
                drSource["ReconItemStatusID"] = TypeCache.GetTypeCache().getReconStatusID("UNBAL");
            }
            drSource["SourceKey"] = rbCompare.dtSource.TableName;
            SqlDataAdapter da = new SqlDataAdapter(string.Format(SQL.constSQLGetEmptyReconDetail), sqlConn);
            new SqlCommandBuilder(da);

            // Add changed rows to a new DataTable. This
            // DataTable will be used by the DataAdapter.
            DataTable dtChanges = dtDetail.GetChanges();


            // Add the event handler. 
            da.RowUpdated +=
                new SqlRowUpdatedEventHandler(OnRowUpdated);

            //adapter.Update(dataChanges);
            da.Update(dtDetail);
            dtDetail.Merge(dtChanges);

            
            dtDetail.AcceptChanges();

            
            DataRow drDestination = dtDetail.Rows.Add();
            drDestination["MatchedReconDetailID"] = dtDetail.Rows[0]["ID"];


            drDestination["ReconSummaryID"] = drSummary["ID"];
            drDestination["Value"] = rbCompare.decDestinationTotal;
            if (rbCompare.decDestinationTotal == rbCompare.decDestinationTotal)
            {
                drDestination["ReconItemStatusID"] = TypeCache.GetTypeCache().getReconItemStatusID("MATCH");
            }
            else
            {
                drDestination["ReconItemStatusID"] = TypeCache.GetTypeCache().getReconStatusID("UNBAL");
            }
            drDestination["SourceKey"] = rbCompare.dtDestination.TableName;

            //SqlDataAdapter da = new SqlDataAdapter(string.Format(SQL.constSQLGetEmptyReconSummary), sqlConn);
            da = new SqlDataAdapter(string.Format(SQL.constSQLGetEmptyReconDetail), sqlConn);
            new SqlCommandBuilder(da);
            da.Update(dtDetail);
            
            dtDetail.AcceptChanges();
            
        }

        protected static void OnRowUpdated(
    object sender, SqlRowUpdatedEventArgs e)
        {
            // If this is an insert, then skip this row.
            if (e.StatementType == StatementType.Insert)
            {
                e.Status = UpdateStatus.SkipCurrentRow;
            }
        }


    }
}
