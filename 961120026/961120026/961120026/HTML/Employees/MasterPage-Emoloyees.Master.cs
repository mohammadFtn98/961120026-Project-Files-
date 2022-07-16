using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _961120026.HTML.Employees
{
    public partial class MasterPage_Emoloyees : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            slide2.Visible = false;
            if (Session["UserIDEmployees"] != null)
            {
                UserEmployees.Text = Session["UserIDEmployees"].ToString();
            }
            else
            {
                Response.Redirect("Login-Employees.aspx");
            }
        }
        protected void picnum2_Click(object sender, EventArgs e)
        {
            slide1.Visible = false;
            slide2.Visible = true;
            picnum2.BackColor = System.Drawing.Color.DarkGoldenrod;
            picnum1.BackColor = System.Drawing.Color.White;
        }

        protected void picnum1_Click(object sender, EventArgs e)
        {
            slide1.Visible = true;
            slide2.Visible = false;
            picnum1.BackColor = System.Drawing.Color.DarkGoldenrod;
            picnum2.BackColor = System.Drawing.Color.White;
        }

        protected void EXTEmployees_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Session.Clear();
            Response.Redirect("../StartPage.aspx");
        }
    }
}