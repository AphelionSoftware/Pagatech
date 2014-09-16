using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Aphelion.Recon.RulesEngine
{
    public enum  AggregationType 
    {
        Sum, Count, Average, Max, Min, DistinctCount
    }

    public struct Aggregation
    {
        public AggregationType aggregationType;
        public string sourceFieldName;
        public string destinationFieldName;

        public Aggregation(AggregationType pAggregationType, string pSourceFieldName, string pDestinationFieldName)
        {
            this.aggregationType = pAggregationType;
            this.sourceFieldName = pSourceFieldName;
            this.destinationFieldName = pDestinationFieldName;
        }
    }
}
