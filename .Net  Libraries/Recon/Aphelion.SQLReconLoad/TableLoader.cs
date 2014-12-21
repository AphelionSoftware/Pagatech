using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using Aphelion.Recon.RulesEngine;

namespace Aphelion.Recon
{
    
    public class TableLoader
    {
        SqlConnection sqlConn;

        public string strConn { get; set; }
        public string strReconProcessStepCode { get; set; }
        public int iImportedFileID { get; set; }
        public LegType lt { get; set; }
        public DataTable dtResult { get; private set; }
        public List<Aggregation> lstAggregations { get; set;}

        public List<string> lstKeyFields = new List<string>();
        public List<string> lstValueFields = new List<string>();
            

        public TableLoader( string pConn, string pReconProcessStepCode, LegType pLT)
        {
            this.strConn = pConn;
            this.strReconProcessStepCode = pReconProcessStepCode;
            this.lt = pLT;
        }


        public void LoadDataSet(){
            sqlConn = new SqlConnection(this.strConn);
            sqlConn.Open();
            SqlCommand comm = new SqlCommand();
            comm.Connection = sqlConn;
            if (lt == LegType.Source)
            {
                comm.CommandText = string.Format(SQL.constSQLGetImportFields, this.strReconProcessStepCode, "Source");
            }
            else
            {
                comm.CommandText = string.Format(SQL.constSQLGetImportFields, this.strReconProcessStepCode, "Target");
            }
            List<string> lstFields = new List<string>();
            SqlDataReader drFields = comm.ExecuteReader();
            if (!drFields.HasRows ){
                throw new Exception(string.Format("Dataset with query {0}  has no rows", string.Format(SQL.constSQLGetImportFields, this.strReconProcessStepCode)));
            }
            lstAggregations = new List<Aggregation>();
            int iRows = 0;
            string sSchema = "";
            string sTable = "";
            while (drFields.Read())
            {
                if (iRows++ == 0)
                {
                     sSchema = drFields.GetString(1);
                     sTable = drFields.GetString(2);
                     iImportedFileID = drFields.GetInt32(4);
                }
                string sFieldName = string.Format("[{0}].[{1}]", drFields.GetString(2), drFields.GetString(3));
                lstFields.Add(sFieldName);
                if (drFields.GetString(0) == "KEY")
                {
                    lstKeyFields.Add(drFields.GetString(3));
                }
                AggregationType at = AggregationType.Detail;
                switch (drFields.GetString(0)){
                    case "SUM":
                       at = AggregationType.Sum;
                        break;
                    case "NEGSUM":
                       at = AggregationType.NegSum;
                        break;

                    case "VALUE":
                        at = AggregationType.Detail;
                        lstValueFields.Add(drFields.GetString(3));
                        break;
                    ///TODO: Add the other aggregation types
                }
                if (at != AggregationType.Detail){
                    lstAggregations.Add(new Aggregation(at, drFields.GetString(3)));
                }
            }
            
            drFields.Close();
            string sFieldList = " ID\n";
            foreach (string sField in lstFields)
            {

                sFieldList += string.Format(",{0}\n", sField);
            }

            string sSelect = string.Format("SELECT {0} FROM [{1}].[{2}] WHERE ImportedFileID = {3}", sFieldList, sSchema, sTable, iImportedFileID.ToString()) ;

            comm.CommandText = sSelect;
            SqlDataAdapter da = new SqlDataAdapter(comm);
            dtResult = new DataTable();
            dtResult.TableName = sSchema + "." + sTable;
            da.Fill(dtResult);
        }
    }
}
