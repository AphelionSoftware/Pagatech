using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Aphelion.Recon.RulesEngine
{
    public enum  AggregationType 
    {
        Sum, NegSum, Count, Average, Max, Min, DistinctCount, Detail
    }

    public struct Aggregation
    {
        public AggregationType aggregationType;
        public string FieldName;

        public Aggregation(AggregationType pAggregationType, string pFieldName)
        {
            this.aggregationType = pAggregationType;
            this.FieldName = pFieldName;
        }
    }
}
