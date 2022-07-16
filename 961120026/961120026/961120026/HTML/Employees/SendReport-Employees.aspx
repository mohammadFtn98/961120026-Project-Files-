<%@ Page Title="" Language="C#" MasterPageFile="~/HTML/Employees/MasterPage-Emoloyees.Master" AutoEventWireup="true" CodeBehind="SendReport-Employees.aspx.cs" Inherits="_961120026.HTML.Employees.SendReports_Employees" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../Style/bootstrap.css" rel="stylesheet" />
    <link href="../../Style/Employees/MasterPage-Employees.css" rel="stylesheet" />
    <link href="../../Style/Employees/SendReports-Employees.css" rel="stylesheet" />
    <script src="../../Java%20Script/Employees/SendReport-Employees.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row SendReportEmployees">
        <div class="col-12 SendReportEmployeesHeader">
            <a href="#">
                <h2>ارسال گزارش ماموریت</h2>
            </a>
        </div>
        <div class="col-12 SendReportEmployeesContant">
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>کد ماموریت:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:TextBox runat="server" ID="SendReportMissionCodeEm" CssClass=" SendReportEmployeesContantInput" MaxLength="5"/>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4> گزارش ماموریت:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <textarea runat="server" id="SendReportMissionDescriptionEm" class="SendReportEmployeesContantBigInput"></textarea>
                </div>
            </div>
        </div>
        <div class="col-12 SendReportEmployeesFooter">
            <div class="row">
                <div class="col-sm-6">
                    <asp:Button Text="ثبت" runat="server" CssClass="SendReportEmployeesFooterBTN" OnClick="Unnamed2_Click"/>
                    <asp:Button Text="بازگشت" runat="server" CssClass="SendReportEmployeesFooterBTN" OnClick="Unnamed1_Click"/>
                </div>
                <div class="col-sm-6">
                    <asp:Label Text="text" runat="server" Visible="False" ID="SendReportStatusEm"  />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
