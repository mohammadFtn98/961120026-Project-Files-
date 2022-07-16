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
    public partial class SendReports_Employees : System.Web.UI.Page
    {
        SqlConnection sqlcon = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["Samak"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ReceivedMission-Employees.aspx");
        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            try
            {
                string temp = (string)Session["UserIDEmployees"];
                string SendReportMCodeEm = SendReportMissionCodeEm.Text;
                string SendReportMDescription = SendReportMissionDescriptionEm.InnerText;
                string date = DateTime.Now.ToString("f");
                

                if (string.IsNullOrEmpty(SendReportMCodeEm) == true || string.IsNullOrEmpty(SendReportMDescription) == true)
                {
                    SendReportStatusEm.Text = "لطفا فیلدهای خالی را پر کنید و سپس ادامه دهید.";
                    SendReportStatusEm.Visible = true;
                }
                else
                {
                    sqlcon.Open();
                    SqlCommand cmd1 = new SqlCommand("SELECT * FROM [Mission] WHERE MissionID = '" + SendReportMCodeEm + "' AND Receiver ='" + temp + "';", sqlcon);
                    SqlDataReader reader1 = cmd1.ExecuteReader();
                    if (reader1.Read())
                    {
                        sqlcon.Close();

                        int a5 = Convert.ToInt32(SendReportMCodeEm);
                        sqlcon.Open();
                        SqlCommand cmd = new SqlCommand("  UPDATE [Mission] SET MissionReport = '" + SendReportMDescription + "' , MissionReportDate = '" + date + "' , MissionStatus = 'گزارش ارسال شده است.' WHERE MissionID = " + a5 + "; ", sqlcon);
                        cmd.ExecuteNonQuery();
                        sqlcon.Close();
                        SendReportStatusEm.Text = "عملیات ثبت با موفقیت انجام شد.";
                        SendReportStatusEm.Visible = true;
                        sqlcon.Close();


                    }
                    else
                    {
                        sqlcon.Close();
                        SendReportStatusEm.Text = "ماموریتی یافت نشد.";
                        SendReportStatusEm.Visible = true;
                    }
                }
            }
            catch
            {
                SendReportStatusEm.Text = "لطفا پس از چند دقیقه مجددا تکرار کنید";
                SendReportStatusEm.Visible = true;
            }
        }
    }
}
