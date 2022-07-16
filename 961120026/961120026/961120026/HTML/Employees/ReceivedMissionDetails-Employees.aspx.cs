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
    public partial class MissionDetails_Employees : System.Web.UI.Page
    {
        SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["Samak"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            RMDEEmployer.Text = "";
            RMDEDateMission.Text = "";
            RMDEMission.Text = "";
            RMDEDateReportMission.Text = "";
            RMDEReportMission.Text = "";
        }

        protected void Unnamed3_Click(object sender, EventArgs e)
        {
            Response.Redirect("ReceivedMission-Employees.aspx");
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            try
            {
                string temp = (string)Session["UserIDEmployees"];
                string MissionCode = RMDEMissionCode.Text;


                if (string.IsNullOrEmpty(MissionCode) == true)
                {
                    ReceivedMissionDetailsStatusEm.Text = " لطفا فیلدهای خالی را پر کنید و سپس ادامه دهید.";
                    ReceivedMissionDetailsStatusEm.Visible = true;
                }

                else
                {
                    sqlcon.Open();
                    SqlCommand cmd1 = new SqlCommand(" SELECT * FROM Mission WHERE Receiver = '" + temp + "' AND MissionID = '" + MissionCode + "'; ", sqlcon);
                    SqlDataReader reader1 = cmd1.ExecuteReader();
                    if (reader1.Read())
                    {
                        string n = reader1[1].ToString();
                        RMDEEmployer.Text = n;

                        n = reader1[5].ToString();
                        RMDEDateMission.Text = n;

                        n = reader1[3].ToString();
                        RMDEMission.Text = n;

                        n = reader1[6].ToString();
                        RMDEDateReportMission.Text = n;

                        n = reader1[4].ToString();
                        RMDEReportMission.Text = n;

                        ReceivedMissionDetailsStatusEm.Visible = false;
                    }
                    else
                    {
                        ReceivedMissionDetailsStatusEm.Text = "ماموریتی یافت نشد.";
                        ReceivedMissionDetailsStatusEm.Visible = true;

                    }


                }
            }
            catch 
            {
                ReceivedMissionDetailsStatusEm.Text = "لطفا پس از چند دقیقه مجددا تکرار فرمایید.";
                ReceivedMissionDetailsStatusEm.Visible = true;
            }
        }
    }
}