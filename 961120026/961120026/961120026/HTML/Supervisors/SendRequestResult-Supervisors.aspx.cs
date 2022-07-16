using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _961120026.HTML.Supervisors
{
    public partial class SendRequestResult_Supervisors : System.Web.UI.Page
    {
        SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["Samak"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            string Temp = (string)Session["UserIDSupervisors"];
            sqlcon.Open();
            DataTable n = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(" SELECT [ReqID] AS'کد درخواست' ,[ReqType] AS'موضوع درخواست' , [ReqReceiver] AS'گیرنده درخواست' , [ReqDate] AS'تاریخ و زمان درخواست' , [ReqReplay] AS'وضعیت' FROM [Requests] WHERE ReqSender = '" + Temp + "' ORDER BY [ReqID] DESC; ", sqlcon);
            da.Fill(n);
            SendRequestResultEmployeesGD.DataSource = n;
            SendRequestResultEmployeesGD.DataBind();
            sqlcon.Close();
        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home-Supervisors.aspx");
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Response.Redirect("SendRequestResultDetails-Supervisors.aspx");
        }

        protected void Unnamed1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("SendRequest-Supervisors.aspx");
            
        }
    }
}