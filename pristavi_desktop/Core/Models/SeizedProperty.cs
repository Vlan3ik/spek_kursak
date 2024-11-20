using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace pristavi_desktop.Core.Models
{
    public class SeizedProperty
    {
        public int PropertyID { get; set; }
        public int EnforcementProceedingID { get; set; }
        public string PropertyName { get; set; }
        public string Description { get; set; }
        public decimal Value { get; set; }
        public string Status { get; set; }
    }
}
