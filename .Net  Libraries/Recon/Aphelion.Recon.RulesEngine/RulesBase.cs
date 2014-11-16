using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel;
using System.Data;
//using System.Data.DataSetExtensions;
using System.Linq.Dynamic;

namespace Aphelion.Recon.RulesEngine
{
    public class RulesBase
    {
        public decimal decSourceTotal { get; private set; }
        public decimal decDestinationTotal { get; private set; }
        public int intSourceCount { get; private set; }
        public int intDestinationCount { get; private set; }
        public Dictionary<string, string> dictMatchFields { get; set; }

        public Dictionary<string, int> dictSrcKeys { get; private set; }
        public Dictionary<string, int> dictDestKeys { get; private set; }


        public List<Aggregation> lstSourceAggregates { get; set; }
        public List<Aggregation> lstDestinationAggregates { get; set; }

        public DataTable dtMatched { get; private set; }
        public DataTable dtMatchedBalanced { get; private set; }
        public DataTable dtMatchedUnbalanced { get; private set; }
        public DataTable dtSourceUnmatched { get; private set; }
        public DataTable dtDestinationUnmatched { get; private set; }
        DataTable _dtSource;
        public DataTable dtSource
        {
            get
            {
                return _dtSource;
            }
            set
            {
                _dtSource = value;
                _dtSource.Columns.Add("Hash", (typeof(Int64)));
                //DataColumn[] dcSource = new DataColumn[1];
                //dcSource[0] = dtSource.Columns["Hash"];
                //_dtSource.PrimaryKey = dcSource;
                _dtSource.Columns.Add("SourceKey", (typeof(string)));
                
            }
        }


        DataTable _dtDestination;
        public DataTable dtDestination
        {
            get
            {
                return _dtDestination;
            }
            set
            {
                _dtDestination = value;
                _dtDestination.Columns.Add("Hash", (typeof(Int64)));
                //DataColumn[] dcDestination = new DataColumn[1];
                //dcDestination[0] = dtDestination.Columns["Hash"];
                //_dtDestination.PrimaryKey = dcDestination;
                _dtDestination.Columns.Add("SourceKey", (typeof(string)));
                
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

                    drSource.SetField("SourceKey", hshValue);
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
                    drDestination.SetField("SourceKey", hshValue);

                }
            }
        }

        #region Keys
        /// <summary>
        /// This is a very expensive way to add, as it rescans the DataTable. Convenience only for single field keys
        /// </summary>
        /// <param name="sKey">Single key to add</param>
        public void AddSourceKey(string sKey)
        {
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
            DataColumn[] dcSource = new DataColumn[1];
            dcSource[0] = dtSource.Columns["Hash"];
            _dtSource.PrimaryKey = dcSource;
            
        }

        public void AddSourceKey(List<string> lstKey)
        {
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
            DataColumn[] dcSource = new DataColumn[1];
            dcSource[0] = dtSource.Columns["Hash"];
            _dtSource.PrimaryKey = dcSource;
                
        }
        /// <summary>
        /// This is a very expensive way to add, as it rescans the DataTable. Convenience only for single field keys
        /// </summary>
        /// <param name="sKey">Single key to add</param>
        public void AddDestKey(string sKey)
        {
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
            DataColumn[] dcDestination = new DataColumn[1];
            dcDestination[0] = dtDestination.Columns["Hash"];
            _dtDestination.PrimaryKey = dcDestination;
            
        }

        public void AddDestKey(List<string> lstKey)
        {
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
            DataColumn[] dcDestination = new DataColumn[1];
            dcDestination[0] = dtDestination.Columns["Hash"];
            _dtDestination.PrimaryKey = dcDestination;
            
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
            dtMatchedBalanced.Columns.Add("SrcValue");
            dtMatchedBalanced.Columns.Add("DestValue");
            dtMatchedUnbalanced = dtMatchedBalanced.Clone();

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
        public void CompareLines()
        {
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
                        //We do a check for every single pair.
                        //So if there are multiple pairs, instead of adding up the values to a single recon detail row
                        //We have a row in recon detail for each row
                        foreach (KeyValuePair<string, string> item in dictMatchFields)
                        {
                            object[] BalancedValues = new object[drSrc.ItemArray.Length + drDest.ItemArray.Length + 2]; //+2 to include SrcValue and DestValue
                            for (int i = 0; i < drSrc.ItemArray.Length; i++)
                            {
                                BalancedValues[i] = drSrc.ItemArray[i];
                            }
                            for (int i = 0; i < drDest.ItemArray.Length; i++)
                            {
                                BalancedValues[i + drSrc.ItemArray.Length] = drDest.ItemArray[i];
                            }
                            BalancedValues[drDest.ItemArray.Length + drSrc.ItemArray.Length] = drSrc.ItemArray[dictSrcKeys[item.Key]];
                            BalancedValues[drDest.ItemArray.Length + drSrc.ItemArray.Length + 1] = drDest.ItemArray[dictDestKeys[item.Value]];
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

        public decimal CompareRollup()
        {
            //decimal decSource = 0;
            //decimal decDestination = 0;

            this.decSourceTotal = Rollup(lstSourceAggregates, ref this._dtSource);
            this.decDestinationTotal = Rollup(lstDestinationAggregates, ref this._dtDestination);
            this.intSourceCount = this._dtSource.Rows.Count;
            this.intDestinationCount= this._dtSource.Rows.Count;
            return decDestinationTotal - decSourceTotal;
        }
        /// <summary>
        /// Currently, as it's a loop, it will add up values. 
        /// Useful for opening / closing balance, using the NEGSUM to subtract
        /// Or for debit/credit columns
        /// Average will only sum
        /// And other combinations will yield unexpected results
        /// </summary>
        /// <param name="lstAggregates"></param>
        /// <param name="dtTable"></param>
        /// <returns></returns>
        private decimal Rollup(List<Aggregation> lstAggregates, ref DataTable dtTable){
            decimal decNum = 0;
            decimal decDenom = 0;
            decimal result = 0;
            foreach (Aggregation agg in lstAggregates)
            {
                //Currently, as it's a loop, it will add up values. 
                //Useful for opening / closing balance, using the NEGSUM to subtract
                //Or for debit/credit columns
                //Average will only sum
                //And other combinations will yield unexpected results
                switch (agg.aggregationType)
                {
                    case AggregationType.Sum:

                    case AggregationType.NegSum:
                        result = (from myRow in dtTable.AsEnumerable()
                                  select System.Convert.ToDecimal(myRow[agg.FieldName].ToString().Replace(",", ""))).Sum();
                        if (agg.aggregationType == AggregationType.NegSum) {
                            decNum  += result * -1;
                        } else {
                            decNum += result;
                        }
                    ;
                        break;
                    case AggregationType.Average:
                        result = (from myRow in dtTable.AsEnumerable()
                                          select System.Convert.ToDecimal(myRow[agg.FieldName])).Sum();
                        decNum  += result * -1;
                        
                        decDenom = (from myRow in dtTable.AsEnumerable()
                                  select System.Convert.ToDecimal(myRow[agg.FieldName])).Count();
                        
                        break;
                    case AggregationType.Count:
                        decDenom = (from myRow in dtTable.AsEnumerable()
                                    select System.Convert.ToDecimal(myRow[agg.FieldName])).Count();
                        
                        break;
                    case AggregationType.DistinctCount:
                        decDenom = (from myRow in dtTable.AsEnumerable()
                                    select System.Convert.ToDecimal(myRow[agg.FieldName])).Distinct().Count();
                        
                        break;
                    case AggregationType.Max:
                        result = (from myRow in dtTable.AsEnumerable()
                                    select System.Convert.ToDecimal(myRow[agg.FieldName])).Max();
                        if (result > decNum)
                        {
                            decNum = result;
                        }
                        break;
                    case AggregationType.Min:
                        result = (from myRow in dtTable.AsEnumerable()
                                    select System.Convert.ToDecimal(myRow[agg.FieldName])).Min();
                        if (result > decNum)
                        {
                            decNum = result;
                        }
                        break;
                }
            }
            if (decDenom == 0) { decDenom = 1; }

        return decNum / decDenom;
        }

    }
}
