using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel;
using System.Data;
//using System.Data.DataSetExtensions;
using System.Linq;
using System.Linq.Dynamic;

namespace Aphelion.Recon.RulesEngine
{
    public abstract class RulesBase
    {

        public  Dictionary<string, string> dictMatchFields { get; set; }
         
        public  Dictionary<string, int> dictSrcKeys { get; private set; }
        public  Dictionary<string, int> dictDestKeys { get; private set; }


        public List<Aggregation> lstAggregates { get; set; }

        public DataTable dtMatched { get; private set; }
        public DataTable dtMatchedBalanced { get; private set; }
        public DataTable dtMatchedUnbalanced    { get; private set; }
        public DataTable dtSourceUnmatched      { get; private set; }
        public DataTable dtDestinationUnmatched { get; private set; }
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
                DataColumn[] dcSource = new DataColumn[1];
                dcSource[0] = dtSource.Columns["Hash"];
                _dtSource.PrimaryKey = dcSource;

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
                DataColumn[] dcDestination = new DataColumn[1];
                dcDestination[0] = dtDestination.Columns["Hash"];
                _dtDestination.PrimaryKey = dcDestination;
            }
        }
        public DataTable dtDestinationSynonyms { get; set; }
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
        public List<string> lstKeyFieldsDestination
        {
            get
            {
                return lstKeyFieldsDestination;
            }
            private set
            {
                foreach (DataRow drDestination in dtDestination.Rows)
                {
                    string hshValue = "";
                    foreach (string sCol in lstKeyFieldsDestination)
                    {
                        hshValue += drDestination[sCol];
                    }
                    drDestination.SetField("Hash", Hashing.HashFNV1a_64(hshValue));
                }
            }
        }
        
        #region Keys
        /// <summary>
        /// This is a very expensive way to add, as it rescans the DataTable. Convenience only for single field keys
        /// </summary>
        /// <param name="sKey">Single key to add</param>
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
        /// <summary>
        /// This is a very expensive way to add, as it rescans the DataTable. Convenience only for single field keys
        /// </summary>
        /// <param name="sKey">Single key to add</param>
        public void AddDestKey(string sKey) {
            lstKeyFieldsDestination.Add(sKey);
            foreach (DataRow drDestination in dtDestination.Rows)
            {
                string hshValue = "";
                foreach (string sCol in lstKeyFieldsDestination)
                {
                    hshValue += drDestination[sCol];
                }
                drDestination.SetField("Hash", Hashing.HashFNV1a_64(hshValue));

            }
        }
        
        public void AddDestKey(List<string> lstKey) {
            lstKeyFieldsDestination = lstKey;
            foreach (DataRow drDestination in dtDestination.Rows)
            {
                string hshValue = "";
                foreach (string sCol in lstKeyFieldsDestination)
                {
                    hshValue += drDestination[sCol];
                }
                drDestination.SetField("Hash", Hashing.HashFNV1a_64(hshValue));

            }
        }
#endregion

        public void SetupDataSets()
        {
            dtMatched = dtSource.Clone();
            foreach (DataColumn dc in dtMatched.Columns)
            {
                dc.ColumnName = "Src" + dc.ColumnName;
            }
            foreach (DataColumn dcTmp in dtDestination.Columns)
            {
                dtMatched.Columns.Add(
                    new DataColumn("Dest" + dcTmp.ColumnName, dcTmp.DataType)
                    );
            }

            dtMatchedBalanced = dtMatched.Clone();
            dtMatchedUnbalanced = dtMatched.Clone();

            dtSourceUnmatched = dtSource.Clone();
            dtDestinationUnmatched = dtDestination.Clone();

            dictSrcKeys = new Dictionary<string, int>();
            dictDestKeys = new Dictionary<string, int>();
            if (dictMatchFields != null)
            {
                foreach (KeyValuePair<string, string> kvp in dictMatchFields)
                {
                    dictSrcKeys.Add(kvp.Key, dtSource.Columns.IndexOf(kvp.Key));
                    dictDestKeys.Add(kvp.Value, dtDestination.Columns.IndexOf(kvp.Value));
                }
            }


        }

        /// <summary>
        /// This is a base implementation of compare lines. It doesn't encompass synonyms
        /// </summary>
        public void CompareLines(){
            
            
            foreach (DataRow drSrc in dtSource.Rows)
            {
                #region SourceChecking

                DataRow drDest = dtDestination.Rows.Find(drSrc["Hash"]);
                if (drDest != null)
                {
                    //Checking if we have a match - using the hash, so it's not perfect.....
                    //For next iteration, add a check for each key field in here. Will still be faster than searching by an arbitrary number of fields
                    object[] Values = new object[drSrc.ItemArray.Length + drDest.ItemArray.Length];
                    for (int i = 0; i < drSrc.ItemArray.Length; i++)
                    {
                        Values[i] = drSrc.ItemArray[i];
                    }
                    for (int i = 0; i < drDest.ItemArray.Length; i++)
                    {
                        Values[i + drSrc.ItemArray.Length] = drDest.ItemArray[i];
                    }

                    DataRow drMatched = dtMatched.Rows.Add(Values);

                    //Check the values
                    //If we have a list of fields to check
                    if (dictMatchFields != null)
                    {
                        foreach (KeyValuePair<string, string> item in dictMatchFields)
                        {
                            object[] BalancedValues = new object[drSrc.ItemArray.Length + drDest.ItemArray.Length];
                            for (int i = 0; i < drSrc.ItemArray.Length; i++)
                            {
                                BalancedValues[i] = drSrc.ItemArray[i];
                            }
                            for (int i = 0; i < drDest.ItemArray.Length; i++)
                            {
                                BalancedValues[i + drSrc.ItemArray.Length] = drDest.ItemArray[i];
                            }
                            //if (drSrc.ItemArray[] 
                            if (
                                drSrc.ItemArray[dictSrcKeys[item.Key]]
                                ==
                                drDest.ItemArray[dictDestKeys[item.Value]]
                                )
                            {
                                dtMatchedBalanced.Rows.Add(BalancedValues);
                            }
                            else
                            {
                                dtMatchedUnbalanced.Rows.Add(BalancedValues);
                            }
                        }

                    }
                    /*    //Otherwise check every source fields
                    else
                    {

                    }
                     * */
                    //For a later iteration

                }
                else
                {
                    DataRow drSrcUnmatched = dtSourceUnmatched.Rows.Add(drSrc.ItemArray);
                }
                #endregion
            }

            //Now do a check for any rows in destination not in source.
            foreach (DataRow drDest in dtDestination.Rows)
            {

                DataRow drSrc = dtDestination.Rows.Find(drDest["Hash"]);
                if (drSrc == null)
                {
                    dtDestinationUnmatched.Rows.Add(drDest.ItemArray);
                }
            }
        }

        public void CompareRollup() {
            foreach (Aggregation agg in lstAggregates)
            {
                decimal decSource;
                decimal decDestination;
                switch (agg.aggregationType)
                {
                    case AggregationType.Sum:
                        var results = (from myRow in dtSource.AsEnumerable()
                                       select (System.Convert.ToDecimal(agg.sourceFieldName))).Sum()
                    ;


                        break;
                    case AggregationType.Average:

                        break;
                    case AggregationType.Count:

                        break;
                    case AggregationType.DistinctCount:

                        break;
                    case AggregationType.Max:

                        break;
                    case AggregationType.Min:

                        break;
                }
            }
        }
         
    }
}
