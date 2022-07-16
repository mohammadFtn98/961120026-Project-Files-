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
    public partial class SendRequestResultDetails : System.Web.UI.Page
    {
        SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["Samak"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            SRRDEReqType.Text = "";
            SRRDEReqReceiver.Text = "";
            SRRDEReqDate.Text = "";
            SRRDEReqResultDate.Text = "";
            SRRDEReqDescription.Text = "";
            SRRDEReqResult.Text = "";
        }

        protected void Unnamed2_Click1(object sender, EventArgs e)
        {
            Response.Redirect("SendRequestResult-Employees.aspx");

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            try
            {
                string temp = (string)Session["UserIDEmployees"];
                string ReqID = SRRDEReqId.Text;
                
                if (string.IsNullOrEmpty(ReqID))
                {
                    SendRequestResultDetailsStatusEm.Text = "لطفا فیلدهای خالی را پر کنید و سپس ادامه دهید.";
                    SendRequestResultDetailsStatusEm.Visible = true;
                }
                else
                {
                    sqlcon.Open();
                    SqlCommand cmd1 = new SqlCommand(" SELECT * FROM [Requests] WHERE ReqID = '" + ReqID + "' AND ReqSender ='" + temp + "'; ", sqlcon);
                    SqlDataReader reader1 = cmd1.ExecuteReader();
                    if (reader1.Read())
                    {
                        string n = reader1[1].ToString();
                        SRRDEReqType.Text = n;

                        SRRDEReqReceiver.Text = reader1[3].ToString();
                        

                        n = reader1[6].ToString();
                        SRRDEReqDate.Text = n;

                        n = reader1[7].ToString();
                        SRRDEReqResultDate.Text = n;

                        n = reader1[4].ToString();
                        SRRDEReqDescription.Text = n;

                        n = reader1[5].ToString();
                        SRRDEReqResult.Text = n;
                        sqlcon.Close();

                        
                    }
                    else
                    {
                        SendRequestResultDetailsStatusEm.Text = "درخواستی یافت نشد.";
                        SendRequestResultDetailsStatusEm.Visible = true;
                    }
                }
            }
            catch
            {
                SendRequestResultDetailsStatusEm.Text = "لطفا پس از چند دقیقه مجددا تکرار کنید.";
                SendRequestResultDetailsStatusEm.Visible = true;
            }
        }
    }
}