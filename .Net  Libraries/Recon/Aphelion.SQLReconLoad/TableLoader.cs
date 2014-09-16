using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

namespace Aphelion.Recon
{
    
    public class TableLoader
    {
        SqlConnection sqlConn;

        public string strConn { get; set; }
        public string strSectionCode { get; set; }


        public TableLoader()
        {

        }
    }
}
