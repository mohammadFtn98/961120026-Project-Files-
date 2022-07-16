<%@ Page Title="" Language="C#" MasterPageFile="~/HTML/Supervisors/MasterPage-Supervisors.Master" AutoEventWireup="true" CodeBehind="ChangePasseord-Supervisors.aspx.cs" Inherits="_961120026.HTML.Supervisors.ChangePasseord_Supervisors" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../Style/bootstrap.css" rel="stylesheet" />
    <link href="../../Style/Supervisors/MasterPage-Supervisors.css" rel="stylesheet" />
    <link href="../../Style/Supervisors/ChangePasseord-Supervisors.css" rel="stylesheet" />
    <script src="../../Java%20Script/Supervisors/ChangePasseord-Supervisors.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row ChangePasseordSupervisors">
        <div class="col-12 ChangePasseordSupervisorsHeader">
            <a href="#">
                <h2>تغییر رمز عبور</h2>
            </a>
        </div>
        <div class="col-12 ChangePasseordSupervisorsContant">
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>نام کاربری:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:TextBox runat="server" ID="UsernameSupervisors" CssClass="ChangePasseordSupervisorsContantInput" MaxLength="10" />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>رمز عبور قبلی:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:TextBox runat="server" ID="OldPassSupervisors" CssClass="ChangePasseordSupervisorsContantInput" TextMode="Password" />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>رمز عبور جدید:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:TextBox runat="server" ID="NewPassSupervisors" CssClass="ChangePasseordSupervisorsContantInput" TextMode="Password" />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>تکرار رمز عبور جدید:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:TextBox runat="server" ID="RepeatNewPassSupervisors" CssClass="ChangePasseordSupervisorsContantInput" TextMode="Password" />
                </div>
            </div>
        </div>
        <div class="col-12 ChangePasseordSupervisorsFooter">
            <div class="row">
                <div class="col-sm-6">
                    <asp:Button Text="تغییر رمز" runat="server" CssClass="ChangePasseordSupervisorsFooterBTN" OnClick="Unnamed1_Click"/>
                    <asp:Button Text="بازگشت" runat="server" CssClass="ChangePasseordSupervisorsFooterBTN" OnClick="Unnamed2_Click"/>
                </div>
                <div class="col-sm-6">
                    <asp:Label Text="text" runat="server" ID="ChangePasseordStatusSu" Visible="false" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
