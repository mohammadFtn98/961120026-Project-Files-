using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Text;
using System.Security.Cryptography;



namespace _961120026.HTML.Employees
{
    public partial class Login_Employees : System.Web.UI.Page
    {


        SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["Samak"].ConnectionString);


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginEmployeesBTN_Click(object sender, EventArgs e)
        {
            try
            {
                string username = UserTxtboxEmployees.Text;
                string password = PassTxtboxEmployees.Text;
                
                sqlcon.Open();
                SqlCommand cmd = new SqlCommand("SELECT * FROM [Employees] WHERE NationalCode = '" + username + "' and Password = '" + password + "';", sqlcon);
                SqlDataReader reader = cmd.ExecuteReader();
                if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(password))
                {
                    loginStatus.Text = "لطفا فیلدهای خالی را پر کنید و سپس ادامه دهید.";
                    loginStatus.Visible = true;
                }
                else if (reader.Read())
                {
                    string temp = reader[1].ToString() + " " + reader[2].ToString() + "(" + reader[0].ToString() + ")";
                    string temp2=reader[0].ToString();
                    Session["UserIDEmployees"] = temp;
                    Session["UserIDEmployees2"] = temp2;
                    loginStatus.Text = "ورود موفق";
                    loginStatus.Visible = true;
                    username = string.Empty;
                    password = string.Empty;
                    Response.Redirect("Home-Employees.aspx");
                    sqlcon.Close();
                    reader.Close();
                }
                else
                {
                    loginStatus.Text = "نام کاربری یا رمز عبور اشتباه است.";
                    loginStatus.Visible = true;
                }
            }
            catch
            {
                loginStatus.Text = "لطفا پس از چند دقیقه مجددا تکرار فرمایید.";
                loginStatus.Visible = true;
            }
        }

        protected void BCKLoginEmployees_Click(object sender, EventArgs e)
        {
            Response.Redirect("../StartPage.aspx");
        }
    }
}