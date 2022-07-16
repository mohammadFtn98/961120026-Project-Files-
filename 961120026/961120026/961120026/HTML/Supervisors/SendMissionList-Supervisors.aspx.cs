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
    public partial class SendMissionList_Supervisors : System.Web.UI.Page
    {
        SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["Samak"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            string temp = (string)Session["UserIDSupervisors"];
            sqlcon.Open();
            DataTable n = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter("SELECT [MissionID] AS 'کد ماموریت' , [Receiver] AS 'گیرنده' , [MissionDate] AS 'تاریخ و زمان ماموریت' , [MissionReportDate] AS ' تاریخ و زمان ارسال گزارش' , [MissionStatus] AS 'وضعیت' FROM [Mission] WHERE Sender='" + temp + "' ORDER BY [MissionID] DESC; ", sqlcon);
            da.Fill(n);
            SendMissionListSupervisorsGD.DataSource = n;
            SendMissionListSupervisorsGD.DataBind();
            sqlcon.Close();
        }

        protected void Unnamed3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home-Supervisors.aspx");
        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            Response.Redirect("ReceivedReport-Supervisors.aspx");
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Response.Redirect("SendMission-Supervisors.aspx");
        }

        protected void Unnamed4_Click(object sender, EventArgs e)
        {
            Response.Redirect("SendMissionDetails-Supervisors.aspx");
        }
    }
}