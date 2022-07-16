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
    public partial class ReceivedMissionDetails_Supervisors : System.Web.UI.Page
    {
        SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["Samak"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            RMDSEmployer.Text = "";
            RMDSDateMission.Text = "";
            RMDSMission.Text = "";
            RMDSDateReportMission.Text = "";
            RMDSReportMission.Text = "";
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            try
            {
                string temp = (string)Session["UserIDSupervisors"];
                string MissionCode = RMDSMissionCode.Text;
                

                if (string.IsNullOrEmpty(MissionCode))
                {
                    ReceivedMissionDetailsStatusSu.Text = " لطفا فیلدهای خالی را پر کنید و سپس ادامه دهید.";
                    ReceivedMissionDetailsStatusSu.Visible = true;
                }

                else
                {
                    sqlcon.Open();
                    SqlCommand cmd1 = new SqlCommand(" SELECT * FROM Mission WHERE Receiver = '" + temp + "' AND MissionID = '" + MissionCode + "'; ", sqlcon);
                    SqlDataReader reader1 = cmd1.ExecuteReader();
                    if (reader1.Read())
                    {
                        string n = reader1[1].ToString();
                        RMDSEmployer.Text = n;

                        n = reader1[5].ToString();
                        RMDSDateMission.Text = n;

                        n = reader1[3].ToString();
                        RMDSMission.Text = n;

                        n = reader1[6].ToString();
                        RMDSDateReportMission.Text = n;

                        n = reader1[4].ToString();
                        RMDSReportMission.Text = n;

                        ReceivedMissionDetailsStatusSu.Visible = false;
                    }
                    else
                    {
                        ReceivedMissionDetailsStatusSu.Text = "ماموریتی یافت نشد.";
                        ReceivedMissionDetailsStatusSu.Visible = true;
                    }
                }
            }
            catch
            {
                ReceivedMissionDetailsStatusSu.Text = "لطفا پس از چند دقیقه مجددا تکرار کنید.";
                ReceivedMissionDetailsStatusSu.Visible = true;

            }
        }

        protected void Unnamed3_Click(object sender, EventArgs e)
        {
            Response.Redirect("ReceivedMission-Supervisors.aspx");
        }
    }
}