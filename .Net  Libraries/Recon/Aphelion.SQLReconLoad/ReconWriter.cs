using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
namespace Aphelion.Recon
{
    public class ReconWriter
    {
        public DataTable dtSource { get; set; }
        public DataTable dtDestination { get; set; }

        public DataTable dtSummary { get; private set; }
        public DataTable dtDetail { get; private set; }


        public string strConn { get; set; }  

        public SqlConnection sqlConn { get; set; }

        public ReconWriter(string pConn)
        {
            this.strConn = pConn;
        }
        public ReconWriter(string pConn, DataTable pSource, DataTable pDestination)
        {
            this.strConn = pConn;
            this.dtSource = pSource;
            this.dtDestination = pDestination;
        }

        private void SetupDataTables()
        {
            sqlConn.Open();
            SqlCommand comm = new SqlCommand();
            SqlDataAdapter da ;

            this.dtSummary = new DataTable("ReconSummary");
            comm.Connection = sqlConn;
            comm.CommandText = string.Format(SQL.constSQLGetReconSummary, this.strConn);
            da = new SqlDataAdapter(comm);
            da.Fill(dtSummary);
       
            this.dtDetail = new DataTable("ReconDetail");
            comm.Connection = sqlConn;
            comm.CommandText = string.Format(SQL.constSQLGetReconDetail, this.strConn);
            da = new SqlDataAdapter(comm);
            da.Fill(dtDetail);
            

        }

        private void PopulateDetailsFromSource()
        {
            foreach (DataRow dr in dtSource.Rows)
            {

            }
        }
    }
}
