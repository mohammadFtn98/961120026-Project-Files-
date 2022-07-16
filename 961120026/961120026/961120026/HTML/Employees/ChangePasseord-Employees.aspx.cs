using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _961120026.HTML.Employees
{
    public partial class ChangePasseord_Employees : System.Web.UI.Page
    {
        SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["Samak"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Unnamed2_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Home-Employees.aspx");
        }

        protected void Unnamed1_Click1(object sender, EventArgs e)
        {
            try
            {
                string username = UsernameEmployees.Text;
                string oldpass = OldPassEmployees.Text;
                string newpass = NewPassEmployees.Text;
                string reapetnewpass = RepeatNewPassEmployees.Text;
                string temp = (string)Session["UserIDEmployees2"];
                

                if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(oldpass) || string.IsNullOrEmpty(newpass) || string.IsNullOrEmpty(reapetnewpass))
                    {
                    ChangePasseordStatusEm.Text = "لطفا فیلدهای خالی را پر کنید و سپس ادامه دهید.";
                    ChangePasseordStatusEm.Visible = true;
                }
                else
                {
                    sqlcon.Open();
                    SqlCommand cmd = new SqlCommand("SELECT * FROM [Employees] WHERE NationalCode = '" + username + "' and Password = '" + oldpass + "' and ID = '"+ temp +"'; ", sqlcon);
                    SqlDataReader reader = cmd.ExecuteReader();

                    if (reader.Read())
                    {
                        sqlcon.Close();

                        if (newpass == reapetnewpass)
                        {
                            sqlcon.Open();
                            SqlCommand cmd2 = new SqlCommand("UPDATE [Employees] SET Password = '" + newpass + "'  WHERE NationalCode = '" + username + "' AND Password = '" + oldpass + "' and ID = '" + temp + "'; ", sqlcon);
                            cmd2.ExecuteNonQuery();
                            ChangePasseordStatusEm.Text = "رمز عبور تغییر کرد.";
                            ChangePasseordStatusEm.Visible = true;
                            sqlcon.Close();
                        }
                        else
                        {
                            ChangePasseordStatusEm.Text = "رمز عبور جدید و تکرار رمز عبود جدید یکسان نیستند.";
                            ChangePasseordStatusEm.Visible = true;
                        }
                    }
                    else
                    {
                        sqlcon.Close();
                        ChangePasseordStatusEm.Text = "نام کاربری یا رمز عبور اشتباه است.";
                        ChangePasseordStatusEm.Visible = true;
                    }


                }
            }
            catch
            {
                ChangePasseordStatusEm.Text = "لطفا پس از چند دقیقه مجددا تکرار فرمایید.";
                ChangePasseordStatusEm.Visible = true;
            }
        }
    }
}