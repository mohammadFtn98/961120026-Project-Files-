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

namespace _961120026.HTML.Supervisors
{
    public partial class Login_Supervisors : System.Web.UI.Page
    {
        private string CalculateMD5Hash(string input)
        {

            MD5 md5 = MD5.Create();
            Byte[] inputByte = System.Text.Encoding.ASCII.GetBytes(input);
            Byte[] hash = md5.ComputeHash(inputByte);

            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < hash.Length; i++)
                sb.Append(hash[i].ToString("x2"));
            return sb.ToString().ToLower();

        }

        SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["Samak"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginSupervisorsBTN_Click(object sender, EventArgs e)
        {
            try
            {


                string username = UserTxtboxSupervisors.Text;
                string password = PassTxtboxSupervisors.Text;
                sqlcon.Open();
                SqlCommand cmd = new SqlCommand("SELECT * FROM [Supervisors] WHERE NationalCode = '" + username + "' and Password = '" + password + "';", sqlcon);
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
                    Session["UserIDSupervisors"] = temp;
                    Session["UserIDSupervisors2"]=temp2;
                    loginStatus.Text = "ورود موفق";
                    loginStatus.Visible = true;
                    username = string.Empty;
                    password = string.Empty;
                    Response.Redirect("Home-Supervisors.aspx");
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
                loginStatus.Text = "لطفا پس از چند دقیقه مجددا تکرار کنید.";
                loginStatus.Visible = true;
            }
        }

        protected void BCKLoginSupervisors_Click(object sender, EventArgs e)
        {
            Response.Redirect("../StartPage.aspx");
        }
    }
}