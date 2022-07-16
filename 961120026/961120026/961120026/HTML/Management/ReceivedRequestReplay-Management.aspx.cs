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
    public partial class ReceivedRequestReplay_Management : System.Web.UI.Page
    {
        SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["Samak"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            RRRMReq.Text = "";
        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            Response.Redirect("ReceivedRequest-Management.aspx");
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            try
            {
                string temp = (string)Session["UserIDManagement"];
                string ReqID = RRRMReqId.Text;
                string YesNo = RRRMReqYesNo.Text;
                string description = RRRMReqReplayDescription.InnerText;
                string temp2 = YesNo + description;
                string date = DateTime.Now.ToString("f");

                if (string.IsNullOrEmpty(ReqID) == true || YesNo == "انتخاب کنید")
                {
                    ReceivedRequestReplayStatusMa.Text = "لطفا فیلدهای خالی را پر کنید و سپس ادامه دهید.";
                    ReceivedRequestReplayStatusMa.Visible = true;
                }
                else
                {
                    sqlcon.Open();
                    SqlCommand cmd1 = new SqlCommand("SELECT * FROM [Requests] WHERE ReqReceiver = '" + temp + "' AND ReqReplay = 'پاسخ داده نشده است.' AND ReqID = '" + ReqID + "';", sqlcon);
                    SqlDataReader reader1 = cmd1.ExecuteReader();
                    if (reader1.Read())
                    {
                        RRRMReq.Text = reader1[4].ToString();
                        sqlcon.Close();

                        sqlcon.Open();
                        SqlCommand cmd2 = new SqlCommand(" UPDATE [Requests] SET ReqResult = '" + temp2 + "' ,ReqResultDate = '" + date + "' , ReqReplay = 'پاسخ داده شده است.' WHERE ReqID = '" + ReqID + "'; ", sqlcon);
                        cmd2.ExecuteNonQuery();
                        sqlcon.Close();
                        ReceivedRequestReplayStatusMa.Text = "عملیات ثبت با موفقیت انجام شد.";
                        ReceivedRequestReplayStatusMa.Visible = true;

                    }
                    else
                    {
                        ReceivedRequestReplayStatusMa.Text = "درخواستی یافت نشد.";
                        ReceivedRequestReplayStatusMa.Visible = true;
                        sqlcon.Close();
                    }

                }

            }
            catch
            {
                ReceivedRequestReplayStatusMa.Text = "لطفا پس از چند دقیقه مجددا تکرار کنید.";
                ReceivedRequestReplayStatusMa.Visible = true;
            }
        }

        protected void Unnamed1_Click1(object sender, EventArgs e)
        {
            try
            {
                string temp7 = (string)Session["UserIDManagement"];
                string ReqID4 = RRRMReqId.Text;
                if (string.IsNullOrEmpty(ReqID4) == true)
                {
                    ReceivedRequestReplayStatusMa.Text = "لطفا فیلدهای خالی را پر کنید و سپس ادامه دهید.";
                    ReceivedRequestReplayStatusMa.Visible = true;
                }
                else
                {
                    ReceivedRequestReplayStatusMa.Visible = false;
                    sqlcon.Open();
                    SqlCommand cmd4 = new SqlCommand("SELECT * FROM [Requests] WHERE ReqReceiver = '" + temp7 + "' AND ReqReplay = 'پاسخ داده نشده است.' AND ReqID = '" + ReqID4 + "';", sqlcon);
                    SqlDataReader reader5 = cmd4.ExecuteReader();
                    if (reader5.Read())
                    {
                        RRRMReq.Text = reader5[4].ToString();
                        sqlcon.Close();
                    }
                    else
                    {
                        ReceivedRequestReplayStatusMa.Text = "درخواستی یافت نشد.";
                        ReceivedRequestReplayStatusMa.Visible = true;
                        sqlcon.Close();
                    }
                }
            }
            catch
            {

                ReceivedRequestReplayStatusMa.Text = "لطفا پس از چند دقیقه مجددا تکرار کنید.";
                ReceivedRequestReplayStatusMa.Visible = true;
            }

        }
    }
}