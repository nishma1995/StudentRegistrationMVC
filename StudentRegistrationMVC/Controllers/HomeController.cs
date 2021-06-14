using StudentRegistrationMVC.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace StudentRegistrationMVC.Controllers
{
    public class HomeController : Controller
    {
        // GET: Home
        string connectionString = "Server=NISHMA\\SQLEXPRESS02;Database=StudentRegistrationManagementSystem;Trusted_Connection=True";
        public ActionResult Index()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Index1(Student student)
        {
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();

            SqlCommand command = new SqlCommand("StudentSave", connection);
            command.CommandType = System.Data.CommandType.StoredProcedure;
            command.Parameters.AddWithValue("Name", student.Name);
            command.Parameters.AddWithValue("Address", student.Address);
            command.Parameters.AddWithValue("Gender", student.Gender);
            command.Parameters.AddWithValue("Ug", student.Ug);
            command.Parameters.AddWithValue("Pg", student.Pg);
            command.Parameters.AddWithValue("Department", student.Department);

            command.ExecuteNonQuery();
            connection.Close();
            return View("About",student);
        }
    }
}