<%@ Page Title="" Language="C#" MasterPageFile="~/HTML/Supervisors/MasterPage-Supervisors.Master" AutoEventWireup="true" CodeBehind="SendReport-Supervisors.aspx.cs" Inherits="_961120026.HTML.Supervisors.SendReports_Supervisors" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../Style/bootstrap.css" rel="stylesheet" />
    <link href="../../Style/Supervisors/MasterPage-Supervisors.css" rel="stylesheet" />
    <link href="../../Style/Supervisors/SendReport-Supervisors.css" rel="stylesheet" />
    <script src="../../Java%20Script/Supervisors/SendReport-Supervisors.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row SendReportSupervisors">
        <div class="col-12 SendReportSupervisorsHeader">
            <a href="#">
                <h2>ارسال گزارش ماموریت</h2>
            </a>
        </div>
        <div class="col-12 SendReportSupervisorsContant">
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>کد ماموریت:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:TextBox runat="server" ID="SendReportMissionCodeSu" CssClass="SendReportSupervisorsContantInput" MaxLength="5"  />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>گزارش ماموریت:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <textarea runat="server" class="SendReportSupervisorsContantBigInput" id="SendReportMissionDescriptionSu"></textarea>
                </div>
            </div>
        </div>

        <div class="col-12 SendReportSupervisorsFooter">
            <div class="row">
                <div class="col-sm-6">
                    <asp:Button Text="ثبت" runat="server" CssClass="SendReportSupervisorsFooterBTN" OnClick="Unnamed2_Click" />
                    <asp:Button Text="بازگشت" runat="server" CssClass="SendReportSupervisorsFooterBTN" OnClick="Unnamed1_Click" />
                </div>
                <div class="col-sm-6">
                    <asp:Label Text="text" runat="server" Visible="False" ID="SendReportStatusSu" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>

