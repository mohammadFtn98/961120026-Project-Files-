<%@ Page Title="" Language="C#" MasterPageFile="~/HTML/Supervisors/MasterPage-Supervisors.Master" AutoEventWireup="true" CodeBehind="ReceivedReportDetails-Supervisors.aspx.cs" Inherits="_961120026.HTML.Supervisors.ReceivedReportDetails_Supervisors1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../Style/bootstrap.css" rel="stylesheet" />
    <link href="../../Style/Supervisors/MasterPage-Supervisors.css" rel="stylesheet" />
    <link href="../../Style/Supervisors/ReceivedReportDetails-Supervisors.css" rel="stylesheet" />
    <script src="../../Java%20Script/Supervisors/ReceivedReportDetails-Supervisors.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row ReceivedReportDetailsSupervisors">
        <div class="col-12 ReceivedReportDetailsSupervisorsHeader">
            <a href="#">
                <h2>جزئیات گزارش دریافتی</h2>
            </a>
        </div>
        <div class="col-12 ReceivedReportDetailsSupervisorsContant">
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>کد ماموریت:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:TextBox runat="server" ID="RRDSMissionCode" CssClass=" ReceivedReportDetailsSupervisorsContantInput" MaxLength="5" />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>فرستنده گزارش:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:Label Text="text" runat="server" ID="RRDSEmployee" CssClass="ReceivedReportDetailsSupervisorsContantSmallLabel" />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>تاریخ و زمان تعیین ماموریت :</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:Label Text="text" runat="server" ID="RRDSDateMission" CssClass="ReceivedReportDetailsSupervisorsContantSmallLabel" />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>تاریخ و زمان ارسال گزارش:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:Label Text="text" runat="server" ID="RRDSDateReportMission" CssClass="ReceivedReportDetailsSupervisorsContantSmallLabel" />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>شرح ماموریت:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:Label Text="text" runat="server" ID="RRDSMission" CssClass="ReceivedReportDetailsSupervisorsContantBigLabel" />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>شرح گزارش ماموریت:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:Label Text="text" runat="server" ID="RRDSReportMission" CssClass="ReceivedReportDetailsSupervisorsContantBigLabel" />
                </div>
            </div>
        </div>
        <div class="col-12 ReceivedReportDetailsSupervisorsFooter">
            <div class="row">
                <div class="col-sm-6">
                    <asp:Button Text="نمایش" runat="server" CssClass="ReceivedReportDetailsSupervisorsFooterBTN" OnClick="Unnamed1_Click"  />
                    <asp:Button Text="بازگشت" runat="server" CssClass="ReceivedReportDetailsSupervisorsFooterBTN" OnClick="Unnamed2_Click"  />
                </div>
                <div class="col-sm-6">
                    <asp:Label Text="text" runat="server" Visible="False" ID="ReceivedReportDetailsStatusSu" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
