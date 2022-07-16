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
    public partial class Mission_Management : System.Web.UI.Page
    {

        SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["Samak"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed4_Click(object sender, EventArgs e)
        {
            Response.Redirect("SendMissionList-Management.aspx");
        }

        protected void Unnamed3_Click(object sender, EventArgs e)
        {
            try
            {
                string MSNNCode = (string)Session["UserIDManagement"];
                string MSNReceiver = ReceiverMissionManagement.Text;
                string MSNINP = MissionINPManagement.InnerText;
                string Date = DateTime.Now.ToString("f");
               
                
                if ( string.IsNullOrEmpty(MSNReceiver) || string.IsNullOrEmpty(MSNINP))
                {
                    MissionStatus.Text = "لطفا فیلدهای خالی را پر کنید و سپس ادامه دهید.";
                    MissionStatus.Visible = true;
                }
                else
                {
                   sqlcon.Open();
                    SqlCommand cmd2 = new SqlCommand(" SELECT * FROM [Supervisors] WHERE ID = '" + MSNReceiver + "' UNION SELECT * FROM [Employees] WHERE ID = '" + MSNReceiver +"'; ", sqlcon);
                    SqlDataReader reader2 = cmd2.ExecuteReader();
                    if (reader2.Read())
                    {
                        MSNReceiver = reader2[1].ToString() + " " + reader2[2].ToString() + "(" + reader2[0].ToString() + ")";
                        sqlcon.Close();

                        sqlcon.Open();
                        SqlCommand cmd = new SqlCommand(" INSERT INTO [Mission] (Sender,Receiver,Mission,MissionReport,MissionDate,MissionReportDate,MissionStatus) VALUES ('" + MSNNCode + "','" + MSNReceiver + "','" + MSNINP + "','نامشخص','" + Date + "','نامشخص','گزارشی ارسال نشده است.'); ", sqlcon);
                        cmd.ExecuteNonQuery();
                        sqlcon.Close();
                        MissionStatus.Text = "عملیات ثبت با موفقیت انجام شد.";
                        MissionStatus.Visible = true;
                        sqlcon.Close();
                    }
                    else
                    {
                        sqlcon.Close();
                        MissionStatus.Text = "گیرنده ایی با این کدسازمانی یافت نشد.";
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