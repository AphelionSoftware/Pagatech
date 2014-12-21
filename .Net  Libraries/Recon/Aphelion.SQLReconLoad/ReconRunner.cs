using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace Aphelion.Recon
{
    /// <summary>
    /// This runs a full recon end to end
    /// The assumption here is that: the files have been imported; the recon process has had all the appropriate files setup
    /// </summary>
    public class ReconRunner
    {
        public string sConnection;
        public int iReconID;
        
        public ReconRunner(string pConnection, int pReconID)
        {
            sConnection = pConnection;
            iReconID = pReconID;
        }

        public void RunRecon()
        {
            SqlConnection conn = new SqlConnection(sConnection);
            conn.Open();
            SqlCommand comm = new SqlCommand(string.Format(SQL.constSQLGetStepsForProcess, iReconID.ToString()), conn);

            SqlDataReader drSteps = comm.ExecuteReader();
            while (drSteps.Read())
            {
                if (!drSteps.HasRows)
                {
                    break;
                }
                string sReconProcessStepCode = drSteps.GetString(2);
                TableLoader tlSrc = new TableLoader(sConnection, sReconProcessStepCode, LegType.Source);
                TableLoader tlDest = new TableLoader(sConnection, sReconProcessStepCode, LegType.Destination);
                tlSrc.LoadDataSet();
                tlDest.LoadDataSet();

                RulesEngine.RulesBase rb = new RulesEngine.RulesBase();
                rb.dtSource = tlSrc.dtResult;
                rb.dtDestination = tlDest.dtResult;
                rb.lstSourceAggregates = tlSrc.lstAggregations;
                rb.lstDestinationAggregates = tlDest.lstAggregations;
                rb.SetupDataSets();
                rb.AddSourceKey( tlSrc.lstKeyFields );
                rb.AddDestKey ( tlDest.lstKeyFields );
                rb.CompareRollup();
                rb.CompareLines();
                ReconWriter rw = new ReconWriter(sConnection, rb);
                rw.strReconProcessStep = sReconProcessStepCode;
                rw.SetupDataTables();
                rw.PopulateDetailsFromSource();


            }

            conn.Close();
        }
    }
}
