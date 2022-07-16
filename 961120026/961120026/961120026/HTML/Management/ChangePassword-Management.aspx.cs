using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _961120026.HTML.Management
{
    public partial class ChangePasseord_Management : System.Web.UI.Page
    {
        SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["Samak"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home-Management.aspx");
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            try
            {
                string username = UsernameManagement.Text;
                string oldpass = OldPassManagement.Text;
                string newpass = NewPassManagement.Text;
                string reapetnewpass = RepeatNewPassManagement.Text;
                string temp = (string)Session["UserIDManagement2"];

                if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(oldpass) || string.IsNullOrEmpty(newpass) || string.IsNullOrEmpty(reapetnewpass))
                {
                    ChangePasseordStatusMa.Text = "لطفا فیلدهای خالی را پر کنید و سپس ادامه دهید.";
                    ChangePasseordStatusMa.Visible = true;
                }
                else
                {
                    sqlcon.Open();
                    SqlCommand cmd = new SqlCommand("SELECT * FROM [Management] WHERE NationalCode = '" + username + "' and Password = '" + oldpass + "' and ID = '"+ temp +"';", sqlcon);
                    SqlDataReader reader = cmd.ExecuteReader();

                    if (reader.Read())
                    {
                        sqlcon.Close();

                        if (newpass == reapetnewpass)
                        {
                            sqlcon.Open();
                            SqlCommand cmd2 = new SqlCommand("UPDATE [Management] SET Password = '" + newpass + "'  WHERE NationalCode = '" + username + "' AND Password = '" + oldpass + "' and ID = '" + temp + "';", sqlcon);
                            cmd2.ExecuteNonQuery();
                            ChangePasseordStatusMa.Text = "رمز عبور تغییر کرد.";
                            ChangePasseordStatusMa.Visible = true;
                            sqlcon.Close();
                        }
                        else
                        {
                            ChangePasseordStatusMa.Text = "رمز عبور جدید و تکرار رمز عبود جدید یکسان نیستند.";
                            ChangePasseordStatusMa.Visible = true;
                        }
                    }
                    else
                    {
                        sqlcon.Close();
                        ChangePasseordStatusMa.Text = "نام کاربری یا رمز عبور اشتباه است.";
                        ChangePasseordStatusMa.Visible = true;
                    }


                }
            }
            catch
            {
                ChangePasseordStatusMa.Text = "لطفا پس از چند دقیقه مجددا تکرار کنید.";
                ChangePasseordStatusMa.Visible = true;
            }
        }
    }
}