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
    public partial class ReceivedRequestReplay_Supervisors : System.Web.UI.Page
    {
        SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["Samak"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            RRRSReq.Text = "";
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            string temp7 = (string)Session["UserIDSupervisors"];
            string ReqID4 = RRRSReqId.Text;
            sqlcon.Open();
            SqlCommand cmd4 = new SqlCommand("SELECT * FROM [Requests] WHERE ReqReceiver = '" + temp7 + "' AND ReqReplay = 'پاسخ داده نشده است.' AND ReqID = '" + ReqID4 + "';", sqlcon);
            SqlDataReader reader5 = cmd4.ExecuteReader();
            if (reader5.Read())
            {
                RRRSReq.Text = reader5[4].ToString();
                ReceivedRequestReplayStatusSu.Visible = false;
                sqlcon.Close();
            }
            else
            {
                ReceivedRequestReplayStatusSu.Text = "درخواستی یافت نشد.";
                ReceivedRequestReplayStatusSu.Visible = true;
                sqlcon.Close();
            }
        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            try
            {
                string temp = (string)Session["UserIDSupervisors"];
                string ReqID = RRRSReqId.Text;
                string YesNo = RRRSReqYesNo.Text;
                string description = RRRSReqReplayDescription.InnerText;
                string temp2 = YesNo + description;
                string date = DateTime.Now.ToString("f");

                if (string.IsNullOrEmpty(ReqID) == true || YesNo == "انتخاب کنید")
                {
                    ReceivedRequestReplayStatusSu.Text = "لطفا فیلدهای خالی را پر کنید و سپس ادامه دهید.";
                    ReceivedRequestReplayStatusSu.Visible = true;
                }
                else
                {
                    sqlcon.Open();
                    SqlCommand cmd1 = new SqlCommand("SELECT * FROM [Requests] WHERE ReqReceiver = '" + temp + "' AND ReqReplay = 'پاسخ داده نشده است.' AND ReqID = '" + ReqID + "';", sqlcon);
                    SqlDataReader reader1 = cmd1.ExecuteReader();
                    if (reader1.Read())
                    {
                        RRRSReq.Text = reader1[4].ToString();
                        sqlcon.Close();

                        sqlcon.Open();
                        SqlCommand cmd2 = new SqlCommand(" UPDATE [Requests] SET ReqResult = '" + temp2 + "' ,ReqResultDate = '" + date + "' , ReqReplay = 'پاسخ داده شده است.' WHERE ReqID = '" + ReqID + "'; ", sqlcon);
                        cmd2.ExecuteNonQuery();
                        sqlcon.Close();
                        ReceivedRequestReplayStatusSu.Text = "عملیات ثبت با موفقیت انجام شد.";
                        ReceivedRequestReplayStatusSu.Visible = true;

                    }
                    else
                    {
                        ReceivedRequestReplayStatusSu.Text = "درخواستی یافت نشد.";
                        ReceivedRequestReplayStatusSu.Visible = true;
                        sqlcon.Close();
                    }

                }

            }
            catch
            {
                ReceivedRequestReplayStatusSu.Text = "لطفا پس از چند دقیقه مجددا تکرار کنید.";
                ReceivedRequestReplayStatusSu.Visible = true;
            }
        }

        protected void Unnamed3_Click(object sender, EventArgs e)
        {
            Response.Redirect("ReceivedRequest-Supervisors.aspx");
        }
    }
}