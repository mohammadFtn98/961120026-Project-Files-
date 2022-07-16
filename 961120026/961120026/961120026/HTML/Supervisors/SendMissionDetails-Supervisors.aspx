<%@ Page Title="" Language="C#" MasterPageFile="~/HTML/Supervisors/MasterPage-Supervisors.Master" AutoEventWireup="true" CodeBehind="SendMissionDetails-Supervisors.aspx.cs" Inherits="_961120026.HTML.Supervisors.SendMissionDetails_Supervisors" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../Style/bootstrap.css" rel="stylesheet" />
    <link href="../../Style/Supervisors/MasterPage-Supervisors.css" rel="stylesheet" />
    <link href="../../Style/Supervisors/SendMissionDetails-Supervisors.css" rel="stylesheet" />
    <script src="../../Java%20Script/Supervisors/SendMissionDetails-Supervisors.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row SendMissionDetailsSupervisors">
        <div class="col-12 SendMissionDetailsSupervisorsHeader">
            <a href="#">
                <h2>جزئیات ماموریت ارسالی</h2>
            </a>
        </div>
        <div class="col-12 SendMissionDetailsSupervisorsContant">
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>کد ماموریت:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:TextBox runat="server" ID="SMDSMissionCode" CssClass=" SendMissionDetailsSupervisorsContantInput" MaxLength="5" />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>گیرنده:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:Label Text="text" runat="server" ID="SMDSEmployer" CssClass="SendMissionDetailsSupervisorsContantSmallLabel" />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>تاریخ و زمان تعیین ماموریت :</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:Label Text="text" runat="server" ID="SMDSDateMission" CssClass="SendMissionDetailsSupervisorsContantSmallLabel" />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>تاریخ و زمان ارسال گزارش:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:Label Text="text" runat="server" ID="SMDSDateReportMission" CssClass="SendMissionDetailsSupervisorsContantSmallLabel" />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>شرح ماموریت:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:Label Text="text" runat="server" ID="SMDSMission" CssClass="SendMissionDetailsSupervisorsContantBigLabel" />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>شرح گزارش ماموریت:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:Label Text="text" runat="server" ID="SMDSReportMission" CssClass="SendMissionDetailsSupervisorsContantBigLabel" />
                </div>
            </div>
        </div>
        <div class="col-12 SendMissionDetailsSupervisorsFooter">
            <div class="row">
                <div class="col-sm-6">
                    <asp:Button Text="نمایش" runat="server" CssClass="SendMissionDetailsSupervisorsFooterBTN" OnClick="Unnamed1_Click" />
                    <asp:Button Text="بازگشت" runat="server" CssClass="SendMissionDetailsSupervisorsFooterBTN" OnClick="Unnamed3_Click" />
                </div>
                <div class="col-sm-6">
                    <asp:Label Text="text" runat="server" Visible="False" ID="SendMissionDetailsStatusSu" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
