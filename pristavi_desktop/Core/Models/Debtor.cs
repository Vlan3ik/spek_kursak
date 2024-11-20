using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace pristavi_desktop.Core.Models
{
    public class Debtor
    {
        public int DebtorID { get; set; }
        public string FullName { get; set; }
        public DateTime DateOfBirth { get; set; }
        public string Address { get; set; }
        public string PassportData { get; set; }
        public string TIN { get; set; }
        public string Description { get; set; }
    }
}
