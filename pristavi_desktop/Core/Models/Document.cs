using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace pristavi_desktop.Core.Models
{
    public class Document
    {
        public int DocumentID { get; set; }
        public int EnforcementProceedingID { get; set; }
        public int CourtID { get; set; }
        public string DocumentName { get; set; }
        public DateTime Date { get; set; }
        public string Description { get; set; }
    }
}
