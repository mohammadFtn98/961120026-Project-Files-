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
    public partial class Request_Employees : System.Web.UI.Page
    {
        SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["Samak"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ReqBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string ReqTitelEm = SendRequestTitelEm.Value;
                string ReqReceiverEm = SendRequestReqReceiverEm.Text;
                string ReqDescriptionEm = SendRequestDescriptionEm.InnerText;
                string date3 = DateTime.Now.ToString("f");
                string tempEMP = (string)Session["UserIDEmployees"];


                if (string.IsNullOrEmpty(ReqTitelEm) || string.IsNullOrEmpty(ReqReceiverEm) || string.IsNullOrEmpty(ReqDescriptionEm))
                {
                    RequestsStatusEm.Text = "لطفا فیلدهای خالی را پر کنید و سپس ادامه دهید.";
                    RequestsStatusEm.Visible = true;
                }
                else
                {
                    sqlcon.Open();
                    SqlCommand cmd2 = new SqlCommand("SELECT * FROM [Supervisors] WHERE ID = '" + ReqReceiverEm + "' UNION SELECT * FROM [Management] WHERE ID = '" + ReqReceiverEm + "';", sqlcon);
                    SqlDataReader reader2 = cmd2.ExecuteReader();
                    if (reader2.Read())
                    {
                        ReqReceiverEm = reader2[1].ToString() + " " + reader2[2].ToString() + "(" + reader2[0].ToString() + ")";
                        sqlcon.Close();

                        sqlcon.Open();
                        SqlCommand cmd = new SqlCommand(" INSERT INTO [Requests] (ReqType,ReqSender,ReqReceiver,ReqDescription,ReqResult,ReqDate,ReqResultDate,ReqReplay) VALUES ('" + ReqTitelEm + "','" + tempEMP + "','" + ReqReceiverEm + "','" + ReqDescriptionEm + "','نامشخص','" + date3 + "','نامشخص','پاسخ داده نشده است.'); ", sqlcon);
                        cmd.ExecuteNonQuery();
                        sqlcon.Close();
                        RequestsStatusEm.Text = "عملیات ثبت با موفقیت انجام شد.";
                        RequestsStatusEm.Visible = true;
                        sqlcon.Close();
                    }
                    else
                    {
                        sqlcon.Close();
                        RequestsStatusEm.Text = "گیرنده ایی با این کدسازمانی یافت نشد.";
                        RequestsStatusEm.Visible = true;
                    }
                }
            }
            catch
            {
                RequestsStatusEm.Text = "لطفا پس از چند دقیقه مجددا تکرار کنید.";
                RequestsStatusEm.Visible = true;
            }
        }

        protected void ReqBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("SendRequestResult-Employees.aspx");
        }
    }
}