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
    public partial class Mission_Employees : System.Web.UI.Page
    {
        SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["Samak"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            string temp = (string)Session["UserIDManagement"];
            sqlcon.Open();
            DataTable n = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter("SELECT [MissionID] AS 'کد ماموریت' , [Receiver] AS 'گیرنده' , [MissionDate] AS 'تاریخ و زمان ماموریت' , [MissionReportDate] AS ' تاریخ و زمان ارسال گزارش' , [MissionStatus] AS 'وضعیت' FROM [Mission] WHERE Sender='" + temp + "' ORDER BY [MissionID] DESC; ", sqlcon);
            da.Fill(n);
            SendMissionListManagementGD.DataSource = n;
            SendMissionListManagementGD.DataBind();
            sqlcon.Close();
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Response.Redirect("SendMission-Management.aspx");
        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            Response.Redirect("ReceivedReport-Management.aspx");
        }

        protected void Unnamed3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home-Management.aspx");
        }

        protected void Unnamed4_Click(object sender, EventArgs e)
        {
            
                Response.Redirect("SendMissionDetails-Management.aspx");
        }
    }
}