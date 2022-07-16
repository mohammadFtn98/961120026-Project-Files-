<%@ Page Title="" Language="C#" MasterPageFile="~/HTML/Supervisors/MasterPage-Supervisors.Master" AutoEventWireup="true" CodeBehind="ReceivedMissionDetails-Supervisors.aspx.cs" Inherits="_961120026.HTML.Supervisors.ReceivedMissionDetails_Supervisors" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../Style/bootstrap.css" rel="stylesheet" />
    <link href="../../Style/Supervisors/MasterPage-Supervisors.css" rel="stylesheet" />
    <link href="../../Style/Supervisors/ReceivedMissionDetails-Supervisors.css" rel="stylesheet" />
    <script src="../../Java%20Script/Supervisors/ReceivedMissionDetails-Supervisors.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row ReceivedMissionDetailsSupervisors">
        <div class="col-12 ReceivedMissionDetailsSupervisorsHeader">
            <a href="#">
                <h2>جزئیات ماموریت دریافتی</h2>
            </a>
        </div>
        <div class="col-12 ReceivedMissionDetailsSupervisorsContant">
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>کد ماموریت:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:TextBox runat="server" ID="RMDSMissionCode" CssClass=" ReceivedMissionDetailsSupervisorsContantInput" MaxLength="5" />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>کارفرما:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:Label Text="text" runat="server" ID="RMDSEmployer" CssClass="ReceivedMissionDetailsSupervisorsContantSmallLabel"/>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>تاریخ و زمان تعیین ماموریت :</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:Label Text="text" runat="server" ID="RMDSDateMission" CssClass="ReceivedMissionDetailsSupervisorsContantSmallLabel" />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>تاریخ و زمان ارسال گزارش:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:Label Text="text" runat="server" ID="RMDSDateReportMission" CssClass="ReceivedMissionDetailsSupervisorsContantSmallLabel" />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>شرح ماموریت:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:Label Text="text" runat="server" ID="RMDSMission" CssClass="ReceivedMissionDetailsSupervisorsContantBigLabel"/>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>شرح گزارش ماموریت:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:Label Text="text" runat="server" ID="RMDSReportMission" CssClass="ReceivedMissionDetailsSupervisorsContantBigLabel" />
                </div>
            </div>
        </div>
        <div class="col-12 ReceivedMissionDetailsSupervisorsFooter">
            <div class="row">
                <div class="col-sm-6">
                    <asp:Button Text="نمایش" runat="server" CssClass="ReceivedMissionDetailsSupervisorsFooterBTN" OnClick="Unnamed1_Click" />
                    <asp:Button Text="بازگشت" runat="server" CssClass="ReceivedMissionDetailsSupervisorsFooterBTN" OnClick="Unnamed3_Click" />
                </div>
                <div class="col-sm-6">
                    <asp:Label Text="text" runat="server" Visible="False" ID="ReceivedMissionDetailsStatusSu" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
