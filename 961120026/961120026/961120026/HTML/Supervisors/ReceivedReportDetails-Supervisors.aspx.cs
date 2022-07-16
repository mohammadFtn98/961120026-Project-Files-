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
    public partial class ReceivedReportDetails_Supervisors1 : System.Web.UI.Page
    {
        SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["Samak"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            RRDSEmployee.Text = "";
            RRDSDateMission.Text = "";
            RRDSDateReportMission.Text = "";
            RRDSMission.Text = "";
            RRDSReportMission.Text = "";
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            try
            {
                string temp = (string)Session["UserIDSupervisors"];
                string MissionCode = RRDSMissionCode.Text;
                

                if (string.IsNullOrEmpty(MissionCode))
                {
                    ReceivedReportDetailsStatusSu.Text = " لطفا فیلدهای خالی را پر کنید و سپس ادامه دهید.";
                    ReceivedReportDetailsStatusSu.Visible = true;
                }

                else
                {
                    sqlcon.Open();
                    SqlCommand cmd1 = new SqlCommand(" SELECT * FROM Mission WHERE Sender = '" + temp + "' AND MissionID = '" + MissionCode + "' AND MissionStatus = 'گزارش ارسال شده است.'; ", sqlcon);
                    SqlDataReader reader1 = cmd1.ExecuteReader();
                    if (reader1.Read())
                    {
                        string n = reader1[2].ToString();
                        RRDSEmployee.Text = n;

                        n = reader1[5].ToString();
                        RRDSDateMission.Text = n;

                        n = reader1[3].ToString();
                        RRDSMission.Text = n;

                        n = reader1[6].ToString();
                        RRDSDateReportMission.Text = n;

                        n = reader1[4].ToString();
                        RRDSReportMission.Text = n;
                        
                        sqlcon.Close();

                        ReceivedReportDetailsStatusSu.Visible = false;

                    }
                    else
                    {
                        sqlcon.Close();
                        ReceivedReportDetailsStatusSu.Text = "گزارشی یافت نشد.";
                        ReceivedReportDetailsStatusSu.Visible = true;
                    }
                }
            }
            catch
            {
                ReceivedReportDetailsStatusSu.Text = "لطفا پس از چند دقیقه مجددا تکرار کنید.";
                ReceivedReportDetailsStatusSu.Visible = true;

            }
        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            Response.Redirect("ReceivedReport-Supervisors.aspx");
        }
    }
}