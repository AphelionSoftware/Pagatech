using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using Microsoft.VisualBasic.FileIO;
using System.ComponentModel;
/*// use "Microsoft.VisualBasic.dll"

using System;
using Microsoft.VisualBasic.FileIO;

class Program {
    static void Main(string[] args){
        using(var csvReader = new TextFieldParser(@"sportsResults.csv")){
            csvReader.SetDelimiters(new string[] {","});
            string [] fields;
            while(!csvReader.EndOfData){
                fields = csvReader.ReadFields();
                Console.WriteLine(String.Join(",",fields));//replace make instance
            }
        }
    }
}*/
namespace Aphelion.Recon
{
    public enum FileType { CSV, Excel2003, Excel2007 }

    public class FileReader
    { 
        public BackgroundWorker backWorker { get; set; }
        public string sFileName { get; set; }
        public string sDelimiter = ",";
        public DataTable dtResults { get; set; }
        public bool HasHeader = true;
        public int iStartRow = 0;
        public int iNumRows = 0;
        /// <summary>
        /// Not used for CSV
        /// </summary>
        public int iStartColumn = 0;
        /// <summary>
        /// Not used for CSV
        /// </summary>
        public int iNumColumns = 0;
        public FileType ftImport { get; set; }
        public FileReader(FileType pFT)
        {
            ftImport = pFT;
        }
        public FileReader(FileType pFT, string pFileName)
            : this(pFT)
        {
            sFileName = pFileName;
        }
        public FileReader(FileType pFT, string pFileName, BackgroundWorker pBack)
            : this(pFT, pFileName)
        {
            backWorker = pBack;
        }

        public void ImportFile()
        {
            if (sFileName == null)
            {
                throw new Exception("FileName not set");
            }
            if (backWorker != null)
            {
                backWorker.ReportProgress(0, new ProgressReport(string.Format("Importing file {0}", sFileName)));
            }

            this.dtResults = new DataTable("FileImport");
            if (this.ftImport == FileType.CSV)
            {
                ImportCSV();
            }
            else
            {
                throw new Exception("FileType not implemented yet");
            }

        }

        public void ImportCSV() {

            if (backWorker != null)
            {
                backWorker.ReportProgress(0, new ProgressReport(string.Format("Importing CSV {0}\n Skipping {1} rows to a max of {2} rows", sFileName, iStartRow, iNumRows)));
            }

            using (var csvReader = new TextFieldParser(sFileName))
            {
                csvReader.SetDelimiters(new string[] { sDelimiter });
                string[] fields;
                int iRow = 1;//1 Based to make number match excel
                while (iRow++ < iStartRow && !csvReader.EndOfData)
                {
                    string s = csvReader.ReadLine();
                    if (iRow % 1000 == 0)
                    {
                        if (backWorker != null)
                        {
                            backWorker.ReportProgress(0, new ProgressReport(string.Format("Skipping row {0} of {1}", iStartRow, iRow)));
                        }
                    }
                }
                if (csvReader.EndOfData)
                {
                    throw new Exception("Start row past end of file!");
                }
                fields = csvReader.ReadFields();
                for (int iLoop = 0; iLoop < fields.Length; iLoop++)
                {
                    DataColumn dc = new DataColumn(iLoop.ToString());
                    this.dtResults.Columns.Add(dc);
                }
                if (!HasHeader)
                {
                    dtResults.Rows.Add(fields);
                }

                iRow = 0;
                while (!csvReader.EndOfData && (iNumRows == 0 || iRow++ < iNumRows))
                {
                    fields = csvReader.ReadFields();
                    dtResults.Rows.Add(fields);
                    if (iRow % 1000 == 0)
                    {
                        if (backWorker != null)
                        {
                            backWorker.ReportProgress(0, new ProgressReport(string.Format("Importing row {0} ", iRow)));
                        }
                    }
                }

                if (backWorker != null)
                {
                    backWorker.ReportProgress(0, new ProgressReport(string.Format("Imported rows {0} ", iRow)));
                }
            }
        }


        public void ImportExcel() { }
    }
}
