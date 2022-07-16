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
    public partial class ReceivedRequestDetails_Management : System.Web.UI.Page
    {
        SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["Samak"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            RRDMReqType.Text = "";
            RRDMReqSender.Text = "";
            RRDMReqDate.Text = "";
            RRDMReqResultDate.Text = "";
            RRDMReqDescription.Text = "";
            RRDMReqResult.Text = "";
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            try
            {
                string temp = (string)Session["UserIDManagement"];
                string ReqID=RRDMReqId.Text;

                if (string.IsNullOrEmpty(ReqID))
                {
                    ReceivedRequestDetailsStatusMa.Text = " لطفا فیلدهای خالی را پر کنید و سپس ادامه دهید.";
                    ReceivedRequestDetailsStatusMa.Visible = true;
                }
                else
                {
                    sqlcon.Open();
                    SqlCommand cmd1 = new SqlCommand(" SELECT * FROM [Requests] WHERE ReqID = '"+ ReqID +"' AND ReqReceiver ='"+ temp +"'; ", sqlcon);
                    SqlDataReader reader1 = cmd1.ExecuteReader();
                    if (reader1.Read())
                    {
                        string n=reader1[1].ToString();
                        RRDMReqType.Text = n;

                        n = reader1[2].ToString();
                        RRDMReqSender.Text = n;

                        n = reader1[6].ToString();
                        RRDMReqDate.Text = n;

                        n = reader1[7].ToString();
                        RRDMReqResultDate.Text = n;

                        n = reader1[4].ToString();
                        RRDMReqDescription.Text = n;

                        n = reader1[5].ToString();
                        RRDMReqResult.Text = n;
                    }
                    else
                    {
                        ReceivedRequestDetailsStatusMa.Text = "درخواستی یافت نشد.";
                        ReceivedRequestDetailsStatusMa.Visible = true;
                    }
                }
            }
            catch 
            {
                ReceivedRequestDetailsStatusMa.Text = "لطفا پس از چند دقیقه مجددا تکرار کنید.";
                ReceivedRequestDetailsStatusMa.Visible = true;
            }
        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            Response.Redirect("ReceivedRequest-Management.aspx");
        }

        protected void Unnamed2_Click1(object sender, EventArgs e)
        {
            Response.Redirect("ReceivedRequestReplay-Management.aspx");
        }
    }
}