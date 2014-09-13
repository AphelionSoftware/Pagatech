using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Aphelion.FileImport
{
    public class ProgressReport
    {
        public string Message = "";
        public ProgressReport(string pMsg)
        {
            this.Message = pMsg;
        }
        public override string ToString()
        {
            return this.Message;
        }

    }
}
