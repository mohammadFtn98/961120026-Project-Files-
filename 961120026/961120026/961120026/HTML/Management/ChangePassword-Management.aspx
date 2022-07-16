<%@ Page Title="" Language="C#" MasterPageFile="~/HTML/Management/MasterPage-Management.Master" AutoEventWireup="true" CodeBehind="ChangePassword-Management.aspx.cs" Inherits="_961120026.HTML.Management.ChangePasseord_Management" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../Style/bootstrap.css" rel="stylesheet" />
    <link href="../../Style/Management/MasterPage-Management.css" rel="stylesheet" />
    <link href="../../Style/Management/ChangePasseord-Management.css" rel="stylesheet" />
    <script src="../../Java%20Script/Management/ChangePassword-Management.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row ChangePasseordManagement">
        <div class="col-12 ChangePasseordManagementHeader">
            <a href="#">
                <h2>تغییر رمز عبور</h2>
            </a>
        </div>
        <div class="col-12 ChangePasseordManagementContant">
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>نام کاربری:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:TextBox runat="server" ID="UsernameManagement" CssClass="ChangePasseordManagementContantInput" MaxLength="10" />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>رمز عبور قبلی:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:TextBox runat="server" ID="OldPassManagement" CssClass="ChangePasseordManagementContantInput" TextMode="Password" />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>رمز عبور جدید:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:TextBox runat="server" ID="NewPassManagement" CssClass="ChangePasseordManagementContantInput" TextMode="Password" />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>تکرار رمز عبور جدید:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:TextBox runat="server" ID="RepeatNewPassManagement" CssClass="ChangePasseordManagementContantInput" TextMode="Password" />
                </div>
            </div>
        </div>
        <div class="col-12 ChangePasseordManagementFooter">
            <div class="row">
                <div class="col-sm-6">
                    <asp:Button Text="تغییر رمز" runat="server" CssClass="ChangePasseordManagementFooterBTN" OnClick="Unnamed1_Click"  />
                    <asp:Button Text="بازگشت" runat="server" CssClass="ChangePasseordManagementFooterBTN" OnClick="Unnamed2_Click"  />
                </div>
                <div class="col-sm-6">
                    <asp:Label Text="text" runat="server" ID="ChangePasseordStatusMa" Visible="false" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
