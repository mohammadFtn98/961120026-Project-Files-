<%@ Page Title="" Language="C#" MasterPageFile="~/HTML/Employees/MasterPage-Emoloyees.Master" AutoEventWireup="true" CodeBehind="ChangePasseord-Employees.aspx.cs" Inherits="_961120026.HTML.Employees.ChangePasseord_Employees" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../Style/bootstrap.css" rel="stylesheet" />
    <link href="../../Style/Employees/MasterPage-Employees.css" rel="stylesheet" />
    <link href="../../Style/Employees/ChangePassword-Employees.css" rel="stylesheet" />
    <script src="../../Java%20Script/Employees/ChangePassword-Employees.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row ChangePasseordEmployees">
        <div class="col-12 ChangePasseordEmployeesHeader">
            <a href="#">
                <h2>تغییر رمز عبور</h2>
            </a>
        </div>
        <div class="col-12 ChangePasseordEmployeesContant">
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>نام کاربری:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:TextBox runat="server" ID="UsernameEmployees" CssClass="ChangePasseordEmployeesContantInput" MaxLength="10" />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>رمز عبور قبلی:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:TextBox runat="server" ID="OldPassEmployees" CssClass="ChangePasseordEmployeesContantInput" TextMode="Password" />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>رمز عبور جدید:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:TextBox runat="server" ID="NewPassEmployees" CssClass="ChangePasseordEmployeesContantInput" TextMode="Password" />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>تکرار رمز عبور جدید:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:TextBox runat="server" ID="RepeatNewPassEmployees" CssClass="ChangePasseordEmployeesContantInput" TextMode="Password" />
                </div>
            </div>
        </div>
        <div class="col-12 ChangePasseordEmployeesFooter">
            <div class="row">
                <div class="col-sm-6">
                    <asp:Button Text="تغییر رمز" runat="server" CssClass="ChangePasseordEmployeesFooterBTN" OnClick="Unnamed1_Click1" />
                    <asp:Button Text="بازگشت" runat="server" CssClass="ChangePasseordEmployeesFooterBTN" OnClick="Unnamed2_Click1" />
                </div>
                <div class="col-sm-6">
                    <asp:Label Text="text" runat="server" ID="ChangePasseordStatusEm" Visible="false" />
                </div>
            </div>
        </div>
    </div>


</asp:Content>
