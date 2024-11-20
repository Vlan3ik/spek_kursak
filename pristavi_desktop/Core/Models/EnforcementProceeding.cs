using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace pristavi_desktop.Core.Models
{
    public class EnforcementProceeding
    {
        public int EnforcementProceedingID { get; set; }
        public string ProceedingNumber { get; set; }
        public DateTime DateOfInitiation { get; set; }
        public int DebtorID { get; set; }
        public int CreditorID { get; set; }
        public int EmployeeID { get; set; }
        public decimal DebtAmount { get; set; }
        public string Basis { get; set; }
        public string Status { get; set; }
    }
}
