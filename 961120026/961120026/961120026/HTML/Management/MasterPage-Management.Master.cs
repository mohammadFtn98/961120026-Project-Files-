using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _961120026.HTML.Management
{
    public partial class MasterPage_Management : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            slide2.Visible = false;
            
            if(Session["UserIDManagement"] != null)
            {
                UserManagement.Text= Session["UserIDManagement"].ToString();
            }
            else
            {
                Response.Redirect("Login-Management.aspx");
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

        protected void EXTManagement_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Session.Clear();
            Response.Redirect("../StartPage.aspx");
        }
    }
}