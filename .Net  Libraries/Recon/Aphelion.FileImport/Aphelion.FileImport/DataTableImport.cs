using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.ComponentModel;

namespace Aphelion.FileImport
{
    public class DataTableImport
    {
        public BackgroundWorker backWorker;
        public DataTable dtSource;
        public string sSchema;
        public string sTable;

      
        private SqlConnection conn;
        public string sConnection;
        
        public DataTableImport(string pConnection, string pSchema, string pTable)
        {
            sConnection = pConnection;
            sSchema = pSchema;
            sTable = pTable;
        }

        public DataTableImport(string pConnection, string pSchema, string pTable, DataTable pDataTable)
            : this(pConnection, pSchema, pTable)
        {
            this.dtSource = pDataTable;
        }

        public DataTableImport(string pConnection, string pSchema, string pTable, DataTable pDataTable, BackgroundWorker back)
            : this(pConnection, pSchema, pTable, pDataTable)
        {
            this.backWorker = back;
        }

        public void BulkImport()
        {
            SqlBulkCopy bulkCopy = new SqlBulkCopy(sConnection);
            bulkCopy.BatchSize = 20000;
            string sDest = string.Format("[{0}].[{1}]", this.sSchema, this.sTable).Replace("[[","[").Replace("]]","]");
            bulkCopy.DestinationTableName = sDest;
            for (int iLoop = 0;iLoop < dtSource.Columns.Count; iLoop++){
                SqlBulkCopyColumnMapping cMap = new SqlBulkCopyColumnMapping(iLoop, System.Convert.ToInt32(dtSource.Columns[iLoop].ColumnName));
                bulkCopy.ColumnMappings.Add(cMap);
            }

            bulkCopy.SqlRowsCopied += new SqlRowsCopiedEventHandler(WriteProgress);
            bulkCopy.NotifyAfter = bulkCopy.BatchSize;
            bulkCopy.WriteToServer(dtSource);
  
        }

        public void WriteProgress(object sender, SqlRowsCopiedEventArgs e)
        {
            if (backWorker != null)
            {
                backWorker.ReportProgress(0, new ProgressReport(string.Format("Imported {0} rows", e.RowsCopied.ToString())));
            }
        }


    }
}
