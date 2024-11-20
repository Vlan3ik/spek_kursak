using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace pristavi_desktop.Core.Models
{
    public class Creditor
    {
        public int CreditorID { get; set; }
        public string FullName { get; set; }
        public string Address { get; set; }
        public string Phone { get; set; }
        public string Description { get; set; }
    }
}
