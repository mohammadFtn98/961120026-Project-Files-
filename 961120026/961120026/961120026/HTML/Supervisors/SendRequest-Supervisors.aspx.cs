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
    public partial class Request_Supervisors : System.Web.UI.Page
    {
        SqlConnection sqlcon = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["Samak"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ReqBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string ReqTypeSu = ReqTypeSupervisors.Value;
                string tempSUP = (string)Session["UserIDSupervisors"];
                string ReqReceiverSu = ReqReceiverSupervisors.Text;
                string ReqDescriptionSu = ReqDescriptionSupervisors.InnerText;
                string date4 = DateTime.Now.ToString("f");

                if (string.IsNullOrEmpty(ReqTypeSu) || string.IsNullOrEmpty(ReqReceiverSu) || string.IsNullOrEmpty(ReqDescriptionSu))
                {
                    RequestsStatusSu.Text = "لطفا فیلدهای خالی را پر کنید و سپس ادامه دهید.";
                    RequestsStatusSu.Visible = true;
                }
                else
                {
                    sqlcon.Open();
                    SqlCommand cmd2 = new SqlCommand("SELECT * FROM [Management] WHERE ID = '" + ReqReceiverSu + "';", sqlcon);
                    SqlDataReader reader2 = cmd2.ExecuteReader();
                    if (reader2.Read())
                    {
                        ReqReceiverSu = reader2[1].ToString() + " " + reader2[2].ToString() + "(" + reader2[0].ToString() + ")";
                        sqlcon.Close();

                        sqlcon.Open();
                        SqlCommand cmd = new SqlCommand(" INSERT INTO [Requests] (ReqType,ReqSender,ReqReceiver,ReqDescription,ReqResult,ReqDate,ReqResultDate,ReqReplay) VALUES ('" + ReqTypeSu + "','" + tempSUP + "','" + ReqReceiverSu + "','" + ReqDescriptionSu + "','نامشخص','" + date4 + "','نامشخص','پاسخ داده نشده است.'); ", sqlcon);
                        cmd.ExecuteNonQuery();
                        sqlcon.Close();
                        RequestsStatusSu.Text = "عملیات ثبت با موفقیت انجام شد.";
                        RequestsStatusSu.Visible = true;
                        sqlcon.Close();
                    }
                    else
                    {
                        sqlcon.Close();
                        RequestsStatusSu.Text = " گیرنده ایی با این کدسازمانی وجود ندارد.";
                        RequestsStatusSu.Visible = true;
                    }

                }
            }
            catch
            {

            }
        }

        protected void ReqBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("SendRequestResult-Supervisors.aspx");
        }

        protected void ReqReceiverSupervisors_TextChanged()
        {

        }
    }
}