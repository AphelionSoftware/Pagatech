using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
namespace Aphelion.Recon
{
    public static class DataTablePivot
    {
        
        public static void Pivot(DataTable dtSource, out DataTable dtResult)
        {
            dtResult = new DataTable();
            foreach (DataRow dr in dtSource.Rows)
            {
                dtResult.Columns.Add(new DataColumn(dr[0].ToString()));
            }

            //Data in heading row
            DataRow drNewRow ;//= dtResult.Rows.Add();
            foreach (DataColumn dc in dtSource.Columns)
            {
                //drNewRow[dc.Ordinal] = dc.ColumnName;
            }
            foreach (DataColumn dc in dtSource.Columns)
            {
                if (dc.Ordinal > 0)
                {
                    drNewRow = dtResult.Rows.Add();
                    int iCol = 0;
                    foreach (DataRow dr in dtSource.Rows)
                    {
                        //CSV fixes
                        string strValue = dr[dc.Ordinal].ToString();
                        if (strValue.StartsWith("="))
                        {
                            strValue = strValue.Substring(1);
                        }
                        if (strValue.StartsWith("\""))
                        {
                            strValue = strValue.Substring(1);
                        }
                        if (strValue.EndsWith("\""))
                        {
                            strValue = strValue.Substring(0, strValue.Length -1);
                        }
                        drNewRow[iCol] = strValue;
                        iCol++;
                    }
                }
            }
        }
    }
}
