using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _961120026.HTML.Supervisors
{
    public partial class ChangePasseord_Supervisors : System.Web.UI.Page
    {
        SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["Samak"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home-Supervisors.aspx");
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            try
            {
                string username = UsernameSupervisors.Text;
                string oldpass = OldPassSupervisors.Text;
                string newpass = NewPassSupervisors.Text;
                string reapetnewpass = RepeatNewPassSupervisors.Text;
                string temp = (string)Session["UserIDSupervisors2"];


                if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(oldpass) || string.IsNullOrEmpty(newpass) || string.IsNullOrEmpty(reapetnewpass))
                {
                    ChangePasseordStatusSu.Text = "لطفا فیلدهای خالی را پر کنید و سپس ادامه دهید.";
                    ChangePasseordStatusSu.Visible = true;
                }
                else
                {
                    sqlcon.Open();
                    SqlCommand cmd = new SqlCommand("SELECT * FROM [Supervisors] WHERE NationalCode = '" + username + "' and Password = '" + oldpass + "' and ID = '" + temp + "'; ", sqlcon);
                    SqlDataReader reader = cmd.ExecuteReader();

                    if (reader.Read())
                    {
                        sqlcon.Close();

                        if (newpass == reapetnewpass)
                        {
                            sqlcon.Open();
                            SqlCommand cmd2 = new SqlCommand("UPDATE [Supervisors] SET Password = '" + newpass + "'  WHERE NationalCode = '" + username + "' AND Password = '" + oldpass + "' and ID = '" + temp + "'; ", sqlcon);
                            cmd2.ExecuteNonQuery();
                            ChangePasseordStatusSu.Text = "رمز عبور تغییر کرد.";
                            ChangePasseordStatusSu.Visible = true;
                            sqlcon.Close();
                        }
                        else
                        {
                            ChangePasseordStatusSu.Text = "رمز عبور جدید و تکرار رمز عبود جدید یکسان نیستند.";
                            ChangePasseordStatusSu.Visible = true;
                        }
                    }
                    else
                    {
                        sqlcon.Close();
                        ChangePasseordStatusSu.Text = "نام کاربری یا رمز عبور اشتباه است.";
                        ChangePasseordStatusSu.Visible = true;
                    }


                }
            }
            catch
            {
                ChangePasseordStatusSu.Text = "لطفا پس از چند دقیقه مجددا تکرار کنید.";
                ChangePasseordStatusSu.Visible = true;
            }
        }
    }
}