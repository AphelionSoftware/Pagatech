using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Data;
namespace Aphelion.Recon
{
    public class ImportSection
    {
        public FileReader fileReader {get;set;}
        public DataTableImport dti {get;set;}
        public string sSectionCode { get; set; }
        public string sConnection { get; set; }
        private int iStartRow = 0;
        private int iNumRows = 0;
        private int iStartColumn = 0;
        private int iNumColumn = 0;
        private bool boolPivot = false;
        private bool boolHeaderRow = true;
        private string sStagingSchema;
        private string sStagingTable;
        public string sFileName;
        public int iImportedFileID;
        public FileType ft;
        public BackgroundWorker backWorker { get; set; }
        public DataTable dtResults {get; private set;}
        private Dictionary<int, string> dctColMap = new Dictionary<int, string>();


        public ImportSection()
        {

        }

        /*public ImportSection (string pConnection, int iFileID)
        {
            this.sConnection = pConnection;
            this.GetFileDefinitionProperties(iFileID);

        }*/

        public ImportSection(string pConnection, string sSectionCode,FileReader pFr, DataTableImport pDTI)
            :this(pConnection, sSectionCode)
        {
            this.fileReader = pFr;
            this.dti = pDTI;
        }

        public ImportSection(string pConnection, string pSectionCode)
        {
            this.sConnection = pConnection;
            this.sSectionCode = pSectionCode;
            GetSectionProperties();
        }

        public ImportSection(string pConnection, FileType pFT, string pFileName, string pSectionCode)
            : this(pConnection, pSectionCode)
        {
            this.sFileName = pFileName;
            this.ft = pFT;
            this.fileReader = new FileReader(pFT, pFileName);
        }

        public ImportSection(string pConnection, string pSectionCode, FileType pFT, string pFileName, int pImportedFileID)
            : this(pConnection, pFT, pFileName, pSectionCode)
        {
            this.iImportedFileID = pImportedFileID;
            this.dti = new DataTableImport(pConnection, sStagingSchema, sStagingTable);
        }

        public void GetSectionProperties(){
            SqlConnection conn = new SqlConnection(this.sConnection);
            conn.Open();
           SqlCommand comm = new SqlCommand( string.Format(SQL.constGetSectionDetails, this.sSectionCode),conn);
            
            SqlDataReader drSection = comm.ExecuteReader();
            if (drSection.HasRows){
                drSection.Read();
                this.sStagingSchema = drSection.GetString(3);
                this.sStagingTable = drSection.GetString(4);
                this.iStartRow = drSection.GetInt32(6);
                this.iNumRows =   drSection.IsDBNull(7) ? 0 :
                    drSection.GetInt32(7);
                this.iStartColumn = drSection.GetInt32(8);
                this.iNumColumn = drSection.GetInt32(9);
                this.boolPivot = drSection.GetBoolean(10);
                this.boolHeaderRow = drSection.GetBoolean(11);
            }
            drSection.Close();

            comm.CommandText = string.Format(SQL.constGetFieldPositions, this.sSectionCode);
            drSection = comm.ExecuteReader();
            while (drSection.Read())
            {
                dctColMap.Add(drSection.GetInt32(1), drSection.GetString(0));
                
            }

            conn.Close();
        }

        public void ImportFileToStaging()
        {
            if (this.fileReader == null)
            {
                this.fileReader = new FileReader(ft, sFileName);
            }
            if (this.dti == null)
            {
                this.dti = new DataTableImport(sConnection, sStagingSchema, sStagingTable);
            }

            this.fileReader.backWorker = this.backWorker;
            this.fileReader.iStartRow = iStartRow;
            this.fileReader.iNumRows = iNumRows;
            this.fileReader.HasHeader = this.boolHeaderRow;
                this.fileReader.ImportFile();
            if (this.boolPivot)
            {
                DataTable dtTemp;
                DataTablePivot.Pivot(this.fileReader.dtResults, out dtTemp);
                this.dtResults = dtTemp;
            }
            else {
                this.dtResults = this.fileReader.dtResults;
            }

            this.dti.backWorker = this.backWorker;
            this.dti.dtSource = this.dtResults;
            this.dti.dctColMap = this.dctColMap;

            this.dti.BulkImport();

            this.dti.UpdateImportedFileID(this.iImportedFileID);
        }

       


    }
}
