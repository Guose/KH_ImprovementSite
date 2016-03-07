using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using KH_ImprovementSite;

namespace Kh_ImprovementSite.BLL
{
    public class KhHandler
    {
        public List<Department> GetDepartments()
        {
            using (var kh = new KhEntities())
            {
                return (from db in kh.Departments
                            select db).ToList();
            }            
        }

        public List<Employee> GetEmployees()
        {
            using (var kh = new KhEntities())
            {
                return (from db in kh.Employees
                        select db).ToList();
            }
        }

        public void DisplayDepartments()
        {
            List<Department> depts = GetDepartments();
            List<Employee> emps = GetEmployees();

            if (depts != null)
            {
                Console.WriteLine("K&H Departments and Department Heads");
                foreach (var item in depts)
                {
                    Console.Write("\t" + item.DepartmentId);
                    Console.Write("\t" + item.DepartmentHead);
                    Console.WriteLine("\t" + item.DepartmentName);
                }
            }
        }
    }
}
