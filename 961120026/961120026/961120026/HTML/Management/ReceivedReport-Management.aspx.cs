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
    public partial class Received_Reports : System.Web.UI.Page
    {
        SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["Samak"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            string temp = (string)Session["UserIDManagement"];
            
            sqlcon.Open();
            DataTable n = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(" SELECT [MissionID] AS 'کد ماموریت',[Receiver] AS 'فرستنده گزارش',[MissionDate] AS 'تاریخ تعیین ماموریت',[MissionReportDate] AS 'تاریخ ارسال گزارش' FROM [Mission] WHERE Sender = '" + temp + "' AND MissionStatus = 'گزارش ارسال شده است.' ORDER BY [MissionID] DESC; ", sqlcon);
            da.Fill(n);
            ReceivedReportManagementGD.DataSource = n;
            ReceivedReportManagementGD.DataBind();
            sqlcon.Close();
        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            Response.Redirect("SendMissionList-Management.aspx");
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ReceivedReportDetails-Management.aspx");
        }
    }
}