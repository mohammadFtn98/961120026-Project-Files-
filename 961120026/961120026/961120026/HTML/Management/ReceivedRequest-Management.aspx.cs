using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _961120026.HTML.Management
{
    public partial class ReceivedRequests_Management : System.Web.UI.Page
    {
        SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["Samak"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            string temp = (string)Session["UserIDManagement"];
            
            sqlcon.Open();
            DataTable n = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(" SELECT[ReqID] AS 'کد درخواست',[ReqType] AS 'موضوع درخواست',[ReqSender] AS 'فرستنده درخواست',[ReqDate] AS 'تاریخ ارسال درخواست',[ReqReplay] AS 'وضعیت'FROM[Requests] WHERE[ReqReceiver] = '" + temp + "' ORDER BY [ReqID] DESC; ", sqlcon);
            da.Fill(n);
            ReceivedRequestManagementGD.DataSource = n;
            ReceivedRequestManagementGD.DataBind();
            sqlcon.Close();
        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home-Management.aspx");
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ReceivedRequestDetails-Management.aspx");
        }

        protected void Unnamed1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("ReceivedRequestReplay-Management.aspx");
        }
    }
}