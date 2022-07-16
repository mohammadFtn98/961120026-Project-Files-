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
    public partial class ReceivedReportDetails_Management : System.Web.UI.Page
    {
        SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["Samak"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            RRDMEmployee.Text = "";
            RRDMDateMission.Text = "";
            RRDMDateReportMission.Text = "";
            RRDMMission.Text = "";
            RRDMReportMission.Text = "";

        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            Response.Redirect("ReceivedReport-Management.aspx");
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            try
            {
                string temp = (string)Session["UserIDManagement"];
                string MissionCode = RRDMMissionCode.Text;
                

                if (string.IsNullOrEmpty(MissionCode))
                {
                    ReceivedReportDetailsStatusMa.Text = " لطفا فیلدهای خالی را پر کنید و سپس ادامه دهید.";
                    ReceivedReportDetailsStatusMa.Visible = true;
                }

                else
                {
                    sqlcon.Open();
                    SqlCommand cmd1 = new SqlCommand(" SELECT * FROM Mission WHERE Sender = '" + temp + "' AND MissionID = '" + MissionCode + "' AND MissionStatus = 'گزارش ارسال شده است.'; ", sqlcon);
                    SqlDataReader reader1 = cmd1.ExecuteReader();
                    if (reader1.Read())
                    {
                        string n = reader1[2].ToString();
                        RRDMEmployee.Text = n;

                        n = reader1[5].ToString();
                        RRDMDateMission.Text = n;

                        n = reader1[3].ToString();
                        RRDMMission.Text = n;

                        n = reader1[6].ToString();
                        RRDMDateReportMission.Text = n;

                        n = reader1[4].ToString();
                        RRDMReportMission.Text = n;
                        sqlcon.Close();

                        ReceivedReportDetailsStatusMa.Visible = false;

                        

                    }
                    else
                    {
                        ReceivedReportDetailsStatusMa.Text = "گزارشی یافت نشد.";
                        ReceivedReportDetailsStatusMa.Visible = true;
                    }
                }
            }
            catch
            {
                ReceivedReportDetailsStatusMa.Text = "لطفا پس از چند دقیقه مجددا تکرار کنید.";
                ReceivedReportDetailsStatusMa.Visible = true;

            }
        }
    }
    }