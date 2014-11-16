using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using Aphelion.Recon;
using System.Configuration;

namespace LightSwitchApplication.api
{
    public class ReconProcessController : ApiController
    {
        // GET: api/Default/5
        public string Get(int id)
        {
            string sConn = ConfigurationManager.ConnectionStrings["PagaReconData"].ConnectionString;
            //ImportSection impSec = new ImportSection(sConn, id);
            //ImportFileSections impFS = new ImportFileSections(sConn, id);
            ReconRunner RR = new ReconRunner(sConn, id);
            RR.RunRecon();
            return "";
        }
    }
}
