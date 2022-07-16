using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _961120026.HTML.Management
{
    public partial class ShowList_Management : System.Web.UI.Page
    {
        SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["Samak"].ConnectionString);

      
        protected void Page_Load(object sender, EventArgs e)
        {   sqlcon.Open(); 
            DataTable n = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter("SELECT ID as 'کد سازمانی' , Name as 'نام' , LastName as 'نام خانوادگی', Part as 'بخش' , Position as 'سمت' FROM Employees UNION SELECT ID as 'کد سازمانی' , Name as 'نام' , LastName as 'نام خانوادگی', Part as 'بخش' , Position as 'سمت' FROM Supervisors UNION SELECT ID as 'کد سازمانی' , Name as 'نام' , LastName as 'نام خانوادگی', Part as 'بخش' , Position as 'سمت' FROM Management ORDER BY [ID] ;", sqlcon);
            da.Fill(n);
            ShowListManagementGD.DataSource = n;
            ShowListManagementGD.DataBind();
            
            sqlcon.Close();
                
        }

        protected void ShowListManagementBackBTN_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home-Management.aspx");
        }

        protected void ShowListManagementMoreBTN_Click(object sender, EventArgs e)
        {
            sqlcon.Open();
            DataTable n = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter("SELECT ID as 'کد سازمانی' , Name as 'نام' , LastName as 'نام خانوادگی' , Born as 'تاریخ تولد' , NationalCode as 'کد ملی' , Gender as 'جنسیت' , Relation as 'رابطه' , Part as 'بخش' , Position as 'سمت' FROM Employees UNION SELECT ID as 'کد سازمانی' , Name as 'نام' , LastName as 'نام خانوادگی' , Born as 'تاریخ تولد' , NationalCode as 'کد ملی' , Gender as 'جنسیت' , Relation as 'رابطه' , Part as 'بخش' , Position as 'سمت' FROM Management UNION SELECT ID as 'کد سازمانی' , Name as 'نام' , LastName as 'نام خانوادگی' , Born as 'تاریخ تولد' , NationalCode as 'کد ملی' , Gender as 'جنسیت' , Relation as 'رابطه' , Part as 'بخش' , Position as 'سمت' FROM Supervisors ORDER BY [ID];", sqlcon);
            da.Fill(n);
            ShowListManagementGD.DataSource = n;
            ShowListManagementGD.DataBind();
            
            sqlcon.Close();
        }
    }
}