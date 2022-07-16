using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _961120026.HTML.Management
{
    public partial class Recruitment_Management : System.Web.UI.Page
    {
        SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["Samak"].ConnectionString);

      

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RecruitmentBTN_Click(object sender, EventArgs e)
        {
            try
            {
                string Name = RecruitmentNameTxtBox.Text;
                string LName = RecruitmentLNameTxtBox.Text;
                string Born = RecruitmentBornTxtBox.Text;
                string NCode = RecruitmentNCodeTxtBox.Text;
                string Gender =RecruitmentGenderSelect.SelectedItem.ToString();
                string Relation = RecruitmentRelationSelect.SelectedItem.ToString();
                string Part = RecruitmentPartTxtBox.Text;
                string Position = RecruitmentPositionSelect.SelectedItem.ToString();
                string i1 = "مدیر";
                string i2 = "سرپرست";
                string i3 = "کارمند";
                string t = "انتخاب کنید";
                if ( string.IsNullOrEmpty(Name)  || string.IsNullOrEmpty(LName) || string.IsNullOrEmpty(Born) || string.IsNullOrEmpty(NCode) || Gender == t || Relation == t || string.IsNullOrEmpty(Part) || Position == t)
                {
                    RecruitmentStatus.Text = "لطفا فیلدهای خالی را پر کنید و سپس ادامه دهید.";
                    RecruitmentStatus.Visible = true;
                }
                else if (Position == i1 && string.IsNullOrEmpty(Name)==false && string.IsNullOrEmpty(LName) == false && string.IsNullOrEmpty(Born) == false && string.IsNullOrEmpty(NCode) == false && Gender != t && Relation !=t && string.IsNullOrEmpty(Part) == false)
                {
                    sqlcon.Open();
                    SqlCommand cmd = new SqlCommand("INSERT INTO [Management] (Name,LastName,Born,NationalCode,Gender,Relation,Part,Position,Password) VALUES ('" + Name + "','" + LName + "','" + Born + "','" + NCode + "','" + Gender + "','" + Relation + "','" + Part + "','"+ Position +"','12345678')", sqlcon);
                    cmd.ExecuteNonQuery();
                    sqlcon.Close();
                    RecruitmentStatus.Text = "عملیات ثبت با موفقیت انجام شد.";
                    RecruitmentStatus.Visible = true;
                }
                else if (Position == i2 && string.IsNullOrEmpty(Name) == false && string.IsNullOrEmpty(LName) == false && string.IsNullOrEmpty(Born) == false && string.IsNullOrEmpty(NCode) == false && Gender != t && Relation != t && string.IsNullOrEmpty(Part) == false)
                {
                    sqlcon.Open();
                    SqlCommand cmd = new SqlCommand("INSERT INTO [Supervisors] (Name,LastName,Born,NationalCode,Gender,Relation,Part,Position,Password) VALUES ('" + Name + "','" + LName + "','" + Born + "','" + NCode + "','" + Gender + "','" + Relation + "','" + Part + "','" + Position + "','12345678')", sqlcon);
                    cmd.ExecuteNonQuery();
                    sqlcon.Close();
                    RecruitmentStatus.Text = "عملیات ثبت با موفقیت انجام شد.";
                    RecruitmentStatus.Visible = true;
                }
                else if (Position == i3 && string.IsNullOrEmpty(Name) == false && string.IsNullOrEmpty(LName) == false && string.IsNullOrEmpty(Born) == false && string.IsNullOrEmpty(NCode) == false && Gender != t && Relation != t && string.IsNullOrEmpty(Part) == false)
                {
                    sqlcon.Open();
                    SqlCommand cmd = new SqlCommand("INSERT INTO [Employees] (Name,LastName,Born,NationalCode,Gender,Relation,Part,Position,Password) VALUES ('" + Name + "','" + LName + "','" + Born + "','" + NCode + "','" + Gender + "','" + Relation + "','" + Part + "','" + Position + "','12345678')", sqlcon);
                    cmd.ExecuteNonQuery();
                    sqlcon.Close();
                    RecruitmentStatus.Text = "عملیات ثبت با موفقیت انجام شد.";
                    RecruitmentStatus.Visible = true;
                }
            }
            catch
            {

                RecruitmentStatus.Text = "لطفا پس از چند دقیقه مجددا تکرار کنید.";
                RecruitmentStatus.Visible = true;
            }
        }

        protected void BckRecruitmentManegment_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home-Management.aspx");
        }
    }
}




















