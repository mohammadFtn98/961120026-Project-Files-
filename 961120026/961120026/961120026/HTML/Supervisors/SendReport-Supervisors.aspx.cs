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
    public partial class SendReports_Supervisors : System.Web.UI.Page
    {
        SqlConnection sqlcon = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["Samak"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ReceivedMission-Supervisors.aspx");
        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            try
            {
                string SendReportMCodeEm = SendReportMissionCodeSu.Text;
                string SendReportMDescription = SendReportMissionDescriptionSu.InnerText;
                string date = DateTime.Now.ToString("f");
                string temp= (string)Session["UserIDSupervisors"];
                if (string.IsNullOrEmpty(SendReportMCodeEm) == true || string.IsNullOrEmpty(SendReportMDescription) == true)
                {
                    SendReportStatusSu.Text = "لطفا فیلدهای خالی را پر کنید و سپس ادامه دهید.";
                    SendReportStatusSu.Visible = true;
                }
                else
                {
                    sqlcon.Open();
                    SqlCommand cmd1 = new SqlCommand("SELECT * FROM [Mission] WHERE MissionID = '" + SendReportMCodeEm + "' AND Receiver = '"+ temp +"';", sqlcon);
                    SqlDataReader reader1 = cmd1.ExecuteReader();
                    if (reader1.Read())
                    {
                        sqlcon.Close();
                        int a5 = Convert.ToInt32(SendReportMCodeEm);
                        sqlcon.Open();
                        SqlCommand cmd = new SqlCommand("  UPDATE [Mission] SET MissionReport = '" + SendReportMDescription + "' , MissionReportDate = '" + date + "' , MissionStatus = 'گزارش ارسال شده است.' WHERE MissionID = " + a5 + "; ", sqlcon);
                        cmd.ExecuteNonQuery();
                        sqlcon.Close();
                        SendReportStatusSu.Text = "عملیات ثبت با موفقیت انجام شد.";
                        SendReportStatusSu.Visible = true;
                        sqlcon.Close();
                    }
                    else
                    {
                        sqlcon.Close();
                        SendReportStatusSu.Text = "ماموریتی یافت نشد.";
                        SendReportStatusSu.Visible = true;
                    }
                    
                }
            }
            catch
            {
                SendReportStatusSu.Text = "لطفا پس از چند دقیقه مجددا تکرار کنید.";
                SendReportStatusSu.Visible = true;
            }
        }

        protected void SendReportMissionCodeSu_TextChanged()
        {

        }
    }
}