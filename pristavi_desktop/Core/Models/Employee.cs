using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace pristavi_desktop.Core.Models
{
    public class Employee
    {
        public int EmployeeID { get; set; }
        public string FullName { get; set; }
        public int Age { get; set; }
        public string Gender { get; set; }
        public string Address { get; set; }
        public string Phone { get; set; }
        public string PassportData { get; set; }
        public int PositionID { get; set; }
        public int DepartmentID { get; set; }
    }
}
