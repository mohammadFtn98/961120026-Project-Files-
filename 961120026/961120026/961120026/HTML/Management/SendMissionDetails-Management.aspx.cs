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
    public partial class SendMissionDetails_Management : System.Web.UI.Page
    {
        SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["Samak"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            SMDMEmployer.Text = "";
            SMDMDateMission.Text = "";
            SMDMMission.Text = "";
            SMDMDateReportMission.Text = "";
            SMDMReportMission.Text = "";
        }

        protected void Unnamed3_Click(object sender, EventArgs e)
        {
            Response.Redirect("SendMissionList-Management.aspx");
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            try
            {
                string temp = (string)Session["UserIDManagement"];
                string MissionCode = SMDMMissionCode.Text;
                

                if (string.IsNullOrEmpty(MissionCode))
                {
                    SendMissionDetailsStatusMa.Text = " لطفا فیلدهای خالی را پر کنید و سپس ادامه دهید.";
                    SendMissionDetailsStatusMa.Visible = true;
                }

                else
                {
                    sqlcon.Open();
                    SqlCommand cmd1 = new SqlCommand(" SELECT * FROM Mission WHERE Sender = '" + temp + "' AND MissionID = '" + MissionCode + "'; ", sqlcon);
                    SqlDataReader reader1 = cmd1.ExecuteReader();
                    if (reader1.Read())
                    {
                        string n = reader1[2].ToString();
                        SMDMEmployer.Text = n;

                        n = reader1[5].ToString();
                        SMDMDateMission.Text = n;

                        n = reader1[3].ToString();
                        SMDMMission.Text = n;

                        n = reader1[6].ToString();
                        SMDMDateReportMission.Text = n;

                        n = reader1[4].ToString();
                        SMDMReportMission.Text = n;

                        SendMissionDetailsStatusMa.Visible = false;
                    }
                    else
                    {
                        SendMissionDetailsStatusMa.Text = "ماموریتی یافت نشد.";
                        SendMissionDetailsStatusMa.Visible = true;
                    }
                }
            }
            catch
            {
                SendMissionDetailsStatusMa.Text = "لطفا پس از چند دقیقه مجددا تکرار کنید.";
                SendMissionDetailsStatusMa.Visible = true;

            }
        }
    }
}