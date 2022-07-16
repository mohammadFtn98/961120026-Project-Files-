using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _961120026.HTML.Employees
{
    public partial class MissionReceived_Employees : System.Web.UI.Page
    {
        SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["Samak"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            string temp = (string)Session["UserIDEmployees"];
            sqlcon.Open();
            DataTable n = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter("SELECT [MissionID] AS 'کد ماموریت' , [Sender] AS 'کارفرما' , [MissionDate] AS 'تاریخ ماموریت' , [MissionStatus] AS 'وضعیت' FROM [Mission] WHERE Receiver='"+ temp + "' ORDER BY [MissionID] DESC ;", sqlcon);
            da.Fill(n);
            ReceivedMissionEmployeesGD.DataSource = n;
            ReceivedMissionEmployeesGD.DataBind();

            sqlcon.Close();
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ReceivedMissionDetails-Employees.aspx");
        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home-Employees.aspx");
        }

        protected void Unnamed2_Click1(object sender, EventArgs e)
        {
            Response.Redirect("SendReport-Employees.aspx");
        }
    }
}