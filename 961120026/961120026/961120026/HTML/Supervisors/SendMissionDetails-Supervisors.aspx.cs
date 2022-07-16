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
    public partial class SendMissionDetails_Supervisors : System.Web.UI.Page
    {
        SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["Samak"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            SMDSEmployer.Text = "";
            SMDSDateMission.Text = "";
            SMDSMission.Text = "";
            SMDSDateReportMission.Text = "";
            SMDSReportMission.Text = "";
        }

        protected void Unnamed3_Click(object sender, EventArgs e)
        {
            Response.Redirect("SendMissionList-Supervisors.aspx");
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            try
            {
                string temp = (string)Session["UserIDSupervisors"];
                string MissionCode = SMDSMissionCode.Text;
                

                if (string.IsNullOrEmpty(MissionCode))
                {
                    SendMissionDetailsStatusSu.Text = " لطفا فیلدهای خالی را پر کنید و سپس ادامه دهید.";
                    SendMissionDetailsStatusSu.Visible = true;
                }

                else
                {
                    sqlcon.Open();
                    SqlCommand cmd1 = new SqlCommand(" SELECT * FROM Mission WHERE Sender = '" + temp + "' AND MissionID = '" + MissionCode + "'; ", sqlcon);
                    SqlDataReader reader1 = cmd1.ExecuteReader();
                    if (reader1.Read())
                    {
                        string n = reader1[2].ToString();
                        SMDSEmployer.Text = n;

                        n = reader1[5].ToString();
                        SMDSDateMission.Text = n;

                        n = reader1[3].ToString();
                        SMDSMission.Text = n;

                        n = reader1[6].ToString();
                        SMDSDateReportMission.Text = n;

                        n = reader1[4].ToString();
                        SMDSReportMission.Text = n;

                        SendMissionDetailsStatusSu.Visible = false;
                    }
                    else
                    {
                        SendMissionDetailsStatusSu.Text = "ماموریتی یافت نشد.";
                        SendMissionDetailsStatusSu.Visible = true;
                    }
                }
            }
            catch
            {
                SendMissionDetailsStatusSu.Text = "لطفا پس از چند دقیقه مجددا تکرار کنید.";
                SendMissionDetailsStatusSu.Visible = true;

            }
        }
    }
}