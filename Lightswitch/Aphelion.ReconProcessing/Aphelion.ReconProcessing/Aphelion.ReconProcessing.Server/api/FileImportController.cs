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
    public class FileImportController : ApiController
    {
        // GET: api/Default
        /*public IEnumerable<string> Get()
        {
            return new string[] { "value1", "value2" };
        }

        // GET: api/Default/5
        public string Get(int id)
        {
            return "value";
        }*/

        // POST: api/Default
        /*public void Post([FromBody]string value)
        {
        }
        */

         // GET: api/Default/5
        public string Get(int id)
        {
            string sConn = ConfigurationManager.ConnectionStrings["PagaReconData"].ConnectionString;
            //ImportSection impSec = new ImportSection(sConn, id);
            ImportFileSections impFS = new ImportFileSections(sConn, id);
            return "";
        }

        // PUT: api/Default/5
        public void Put(int fileImportId, [FromBody]string value)
        {
            var x = 1;
        }
        /*
        // DELETE: api/Default/5
        public void Delete(int id)
        {
        }
         * */

    }
}
