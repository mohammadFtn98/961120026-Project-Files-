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
    public partial class ReceivedRequestDetails_Supervisors : System.Web.UI.Page
    {
        SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["Samak"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            RRDSReqType.Text = "";
            RRDSReqSender.Text = "";
            RRDSReqDate.Text = "";
            RRDSReqResultDate.Text = "";
            RRDSReqDescription.Text = "";
            RRDSReqResult.Text = "";
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            try
            {
                string temp = (string)Session["UserIDSupervisors"];
                string ReqID = RRDSReqId.Text;

                if (string.IsNullOrEmpty(ReqID))
                {
                    ReceivedRequestDetailsStatusSu.Text = "لطفا فیلدهای خالی را پر کنید و سپس ادامه دهید.";
                    ReceivedRequestDetailsStatusSu.Visible = true;
                }
                else
                {
                    sqlcon.Open();
                    SqlCommand cmd1 = new SqlCommand(" SELECT * FROM [Requests] WHERE ReqID = '" + ReqID + "' AND ReqReceiver ='" + temp + "'; ", sqlcon);
                    SqlDataReader reader1 = cmd1.ExecuteReader();
                    if (reader1.Read())
                    {
                        string n = reader1[1].ToString();
                        RRDSReqType.Text = n;

                        n = reader1[2].ToString();
                        RRDSReqSender.Text = n;

                        n = reader1[6].ToString();
                        RRDSReqDate.Text = n;

                        n = reader1[7].ToString();
                        RRDSReqResultDate.Text = n;

                        n = reader1[4].ToString();
                        RRDSReqDescription.Text = n;

                        n = reader1[5].ToString();
                        RRDSReqResult.Text = n;
                    }
                    else
                    {
                        ReceivedRequestDetailsStatusSu.Text = "درخواستی یافت نشد.";
                        ReceivedRequestDetailsStatusSu.Visible = true;
                    }
                }
            }
            catch
            {
                ReceivedRequestDetailsStatusSu.Text = "لطفا پس از چند دقیقه مجددا تکرار کنید.";
                ReceivedRequestDetailsStatusSu.Visible = true;
            }
        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            Response.Redirect("ReceivedRequestReplay-Supervisors.aspx");
        }

        protected void Unnamed3_Click(object sender, EventArgs e)
        {
            Response.Redirect("ReceivedRequest-Supervisors.aspx");
        }
    }
}