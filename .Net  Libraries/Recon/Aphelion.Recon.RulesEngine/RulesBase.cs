using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel;
using System.Data;

namespace Aphelion.Recon.RulesEngine
{
    public abstract class RulesBase
    {
        DataTable _dtSource;
        public DataTable dtSource {
            get
            {
                return _dtSource;
            }
            set
            {
                _dtSource = value;
                _dtSource.Columns.Add("Hash", (typeof(Int64)));

            }
        }


        DataTable _dtDestination;
        public DataTable dtDestination {
            get
            {
                return _dtDestination;
            }
            set
            {
                _dtDestination = value;
                _dtDestination.Columns.Add("Hash", (typeof(Int64)));
            }
        }
        public DataTable dtDestSynonyms { get; set; }
        public string[] test;
        public List<string> lstKeyFieldsSource
        {
            get
            {
                return lstKeyFieldsSource;
            }
            private set
            {
                foreach (DataRow drSource in dtSource.Rows)
                {
                    string hshValue = "";
                    foreach (string sCol in lstKeyFieldsSource)
                    {
                        hshValue += drSource[sCol];
                    }
                    drSource.SetField("Hash", Hashing.HashFNV1a_64(hshValue));

                }
            }
        }
        public List<string> lstKeyFieldsDest
        {
            get
            {
                return lstKeyFieldsDest;
            }
            private set
            {
                foreach (DataRow drDestination in dtDestination.Rows)
                {
                    string hshValue = "";
                    foreach (string sCol in lstKeyFieldsDest)
                    {
                        hshValue += drDestination[sCol];
                    }
                    drDestination.SetField("Hash", Hashing.HashFNV1a_64(hshValue));

                }
            }
        }
        
        #region Keys
        public void AddSourceKey(string sKey) {
            lstKeyFieldsSource.Add(sKey);
            foreach (DataRow drSource in dtSource.Rows)
            {
                string hshValue = "";
                foreach (string sCol in lstKeyFieldsSource)
                {
                    hshValue += drSource[sCol];
                }
                drSource.SetField("Hash", Hashing.HashFNV1a_64(hshValue));

            }
        }
        
        public void AddSourceKey(List<string> lstKey) {
            lstKeyFieldsSource = lstKey;
            foreach (DataRow drDestination in dtDestination.Rows)
            {
                string hshValue = "";
                foreach (string sCol in lstKeyFieldsDest)
                {
                    hshValue += drDestination[sCol];
                }
                drDestination.SetField("Hash", Hashing.HashFNV1a_64(hshValue));

            }
        }

        public void AddDestKey(string sKey) {
            lstKeyFieldsDest.Add(sKey);
        }
        
        public void AddDestKey(List<string> lstKey) {
            lstKeyFieldsDest = lstKey;
        }
#endregion

        public void CompareLines(){

        }
         
    }
}
