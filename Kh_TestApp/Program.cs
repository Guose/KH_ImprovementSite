using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Kh_ImprovementSite.BLL;

namespace Kh_TestApp
{
    class Program
    {
        static void Main(string[] args)
        {
            KhHandler kh = new KhHandler();
            kh.DisplayDepartments();

            Console.ReadKey();
        }
    }
}
