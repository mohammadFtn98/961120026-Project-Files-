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
    public partial class SendRequestResultDetails_Supervisors : System.Web.UI.Page
    {
        SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["Samak"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            SRRDSReqType.Text = "";
            SRRDSReqReceiver.Text = "";
            SRRDSReqDate.Text = "";
            SRRDSReqResultDate.Text = "";
            SRRDSReqDescription.Text = "";
            SRRDSReqResult.Text = "";
        }

        protected void Unnamed2_Click1(object sender, EventArgs e)
        {
            Response.Redirect("SendRequestResult-Supervisors.aspx");
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            try
            {
                string temp = (string)Session["UserIDSupervisors"];
                string ReqID = SRRDSReqId.Text;
                
                if (string.IsNullOrEmpty(ReqID))
                {
                    SendRequestResultDetailsStatusSu.Text = " لطفا فیلدهای خالی را پر کنید و سپس ادامه دهید.";
                    SendRequestResultDetailsStatusSu.Visible = true;
                }
                else
                {
                    sqlcon.Open();
                    SqlCommand cmd1 = new SqlCommand(" SELECT * FROM [Requests] WHERE ReqID = '" + ReqID + "' AND ReqSender ='" + temp + "'; ", sqlcon);
                    SqlDataReader reader1 = cmd1.ExecuteReader();
                    if (reader1.Read())
                    {
                        string n = reader1[1].ToString();
                        SRRDSReqType.Text = n;

                        SRRDSReqReceiver.Text = reader1[3].ToString();


                        n = reader1[6].ToString();
                        SRRDSReqDate.Text = n;

                        n = reader1[7].ToString();
                        SRRDSReqResultDate.Text = n;

                        n = reader1[4].ToString();
                        SRRDSReqDescription.Text = n;

                        n = reader1[5].ToString();
                        SRRDSReqResult.Text = n;

                        sqlcon.Close();
                    }

                    else
                    {
                        SendRequestResultDetailsStatusSu.Text = "درخواستی یافت نشد.";
                        SendRequestResultDetailsStatusSu.Visible = true;
                    }
                }
            }
            catch
            {
                SendRequestResultDetailsStatusSu.Text = "لطفا پس از چند دقیقه مجددا تکرار کنید.";
                SendRequestResultDetailsStatusSu.Visible = true;
            }
        }
    }
}