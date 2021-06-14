using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace StudentRegistrationMVC.Models
{
    public class Student
    {
        public string Name { get; set; }
        public string Address { get; set; }
        public string Gender { get; set; }
        public bool Ug { get; set; }
        public bool Pg { get; set; }
        public string Department { get; set; }
    }

        public enum Departments
        {
            ComputerScience,
            Mechanical,
            Electrical,
            Electronics

        }
    
}