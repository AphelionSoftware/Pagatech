using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace Aphelion.Recon
{
    public class TypeCache
    {
        private static TypeCache instance;
        SqlConnection sqlConn;
        public DataTable dtReconType;
        public DataTable dtReconStatus;
        public DataTable dtReconItemStatus;

        public int getReconTypeID(string pReconTypeCode)
        {
            return System.Convert.ToInt32(dtReconType.Select(string.Format("Code == '{0}'", pReconTypeCode)).First()[0]);
        }

        public int getReconStatusID(string pReconStatusCode)
        {
            return System.Convert.ToInt32(dtReconStatus.Select(string.Format("Code == '{0}'", pReconStatusCode)).First()[0]);
        }
        public int getReconItemStatusID(string pReconItemStatusCode)
        {
            return System.Convert.ToInt32(dtReconItemStatus.Select(string.Format("Code == '{0}'", pReconItemStatusCode)).First()[0]);
        }


        private TypeCache(string pConn)
        {
            sqlConn = new SqlConnection(pConn);
            sqlConn.Open();
            SqlCommand comm = new SqlCommand(SQL.constSQLGetReconTypes, sqlConn);
            SqlDataAdapter da = new SqlDataAdapter(comm);
            dtReconType = new DataTable();
            da.Fill(dtReconType);

            comm = new SqlCommand(SQL.constSQLGetStatuses, sqlConn);
            da = new SqlDataAdapter(comm);
            dtReconStatus = new DataTable();
            da.Fill(dtReconStatus);
            comm = new SqlCommand(SQL.constSQLGetItemStatuses, sqlConn);
            da = new SqlDataAdapter(comm);
            dtReconItemStatus = new DataTable();
            da.Fill(dtReconItemStatus);
            sqlConn.Close();
        }

        //public TypeCache

       public static TypeCache GetTypeCache( string strConn)
        {
            if (instance == null)
            {
               instance = new TypeCache(strConn);
            }
            return instance;
         }

       public static TypeCache GetTypeCache()
       {
           if (instance == null)
           {
               throw new Exception("TypeCache must first be initialised with a connection string");
           }
           return instance;
       }



    }
}
