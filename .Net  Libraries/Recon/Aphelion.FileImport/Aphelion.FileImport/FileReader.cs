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
namespace Aphelion.FileImport
{
    public class FileReader
    {
        public string sFileName { get; set; }
        public DataTable dtResults { get; }

        public int iStartRow = 0;
        public int iNumRows = 0;

        public FileReader()
        {
            
        }
    }
}
