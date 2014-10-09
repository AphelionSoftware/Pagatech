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
    public class RulesSynonyms : RulesBase
    {
        /// <summary>
        /// NB: Keyed on synonym, looking up source value
        /// </summary>
        public Dictionary<string, string> dctSynonyms = new Dictionary<string,string>();

        public void CompareLines(){
            base.CompareLines();
            //Now do synonym overrides
            foreach( DataRow  dr in base.dtSourceUnmatched.Rows){
                //if ( dctSynonyms.Exists( item  => ))
            }
        }

    }
    }

