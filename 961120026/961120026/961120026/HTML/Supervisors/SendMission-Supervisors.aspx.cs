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
    public partial class Mission_Supervisors : System.Web.UI.Page
    {
        SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["Samak"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed4_Click(object sender, EventArgs e)
        {
            Response.Redirect("SendMissionList-Supervisors.aspx");
        }

        protected void Unnamed3_Click(object sender, EventArgs e)
        {
            try
            {
                string MSNNCodeSupervisors = (string)Session["UserIDSupervisors"];
                string MSNReceiverSupervisors = ReceiverMissionSupervisors.Text;
                string MSNINPSupervisors = MissionnnINP.InnerText;
                string Date2 = DateTime.Now.ToString("f");


                if (string.IsNullOrEmpty(MSNReceiverSupervisors) || string.IsNullOrEmpty(MSNINPSupervisors))
                {
                    MissionStatus.Text = "لطفا فیلدهای خالی را پر کنید و سپس ادامه دهید.";
                    MissionStatus.Visible = true;
                }
                else
                {


                    sqlcon.Open();
                    SqlCommand cmd2 = new SqlCommand("SELECT * FROM [Employees] WHERE ID = '" + MSNReceiverSupervisors + "';", sqlcon);
                    SqlDataReader reader2 = cmd2.ExecuteReader();
                    if (reader2.Read())
                    {
                        MSNReceiverSupervisors = reader2[1].ToString() + " " + reader2[2].ToString() + "(" + reader2[0].ToString() + ")";
                        sqlcon.Close();

                        sqlcon.Open();
                        SqlCommand cmd = new SqlCommand(" INSERT INTO [Mission] (Sender,Receiver,Mission,MissionReport,MissionDate,MissionReportDate,MissionStatus) VALUES ('" + MSNNCodeSupervisors + "','" + MSNReceiverSupervisors + "','" + MSNINPSupervisors + "','نامشخص','" + Date2 + "','نامشخص' ,'گزارشی ارسال نشده است.');  ", sqlcon);
                        cmd.ExecuteNonQuery();
                        sqlcon.Close();
                        MissionStatus.Text = "عملیات ثبت با موفقیت انجام شد.";
                        MissionStatus.Visible = true;
                        sqlcon.Close();
                    }
                    else
                    {
                        sqlcon.Close();
                        MissionStatus.Text = "گیرنده ایی با این کد سازمانی یافت نشد.";
                        MissionStatus.Visible = true;
                    }

                }
            }
            catch
            {
                MissionStatus.Text = "لطفا پس از چند دقیقه مجددا تکرار کنید.";
                MissionStatus.Visible = true;
            }
        }
    }
}