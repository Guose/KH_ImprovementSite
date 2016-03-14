using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Kh_Improvement.Classes
{
    public class Department
    {
        public int DeptId { get; set; }
        public string DeptName { get; set; }
        public string DeptHead { get; set; }
        public List<Employee> Employees { get; set; }
    }
}
