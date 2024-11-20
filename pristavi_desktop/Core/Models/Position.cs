using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace pristavi_desktop.Core.Models
{
    public class Position
    {
        public int PositionID { get; set; }
        public string PositionName { get; set; }
        public decimal Salary { get; set; }
        public string Responsibilities { get; set; }
        public string Requirements { get; set; }
    }
}
