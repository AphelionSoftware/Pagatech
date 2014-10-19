using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Data;
namespace Aphelion.Recon
{
    public class ImportFileSections
    {
        public string sConnection;
        public ImportFileSections(string pConnection, int iFileID)
        {
            this.sConnection = pConnection;
            this.GetFileDefinitionProperties(iFileID);

        }

        public void GetFileDefinitionProperties(int iFileID)
        {
            SqlConnection conn = new SqlConnection(this.sConnection);
            conn.Open();
            SqlCommand comm = new SqlCommand(string.Format(SQL.constGetFileDefinition, iFileID), conn);

            SqlDataReader drFile = comm.ExecuteReader();
            string sFileName  ;
            string sSectionCode  ;
            FileType ft;
            while (drFile.Read())
            {
                if (!drFile.HasRows)
                {
                    break;

                }
                sFileName = drFile.GetString(0);
                sSectionCode = drFile.GetString(5);

                switch (drFile.GetString(4))
                {
                    case "CSV":
                        ft = FileType.CSV;
                        break;
                    case "XL2003":
                        ft = FileType.Excel2003;
                        break;
                    case "XL2007":
                        ft = FileType.Excel2007;
                        break;
                    default:
                        ft = FileType.CSV;
                        break;
                }

                ImportSection impSec = new ImportSection(sConnection, sSectionCode, ft, sFileName);
                impSec.ImportFileToStaging();

            }
            drFile.Close();
            conn.Close();


        }
       
    }
}
