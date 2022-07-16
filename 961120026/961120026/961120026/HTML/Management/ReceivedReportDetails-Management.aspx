<%@ Page Title="" Language="C#" MasterPageFile="~/HTML/Management/MasterPage-Management.Master" AutoEventWireup="true" CodeBehind="ReceivedReportDetails-Management.aspx.cs" Inherits="_961120026.HTML.Management.ReceivedReportDetails_Management" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../Style/bootstrap.css" rel="stylesheet" />
    <link href="../../Style/Management/MasterPage-Management.css" rel="stylesheet" />
    <link href="../../Style/Management/ReceivedReportDetails-Management.css" rel="stylesheet" />
    <script src="../../Java%20Script/Management/ReceivedReportDetails-Management.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row ReceivedReportDetailsManagement">
        <div class="col-12 ReceivedReportDetailsManagementHeader">
            <a href="#">
                <h2>جزئیات گزارش دریافتی</h2>
            </a>
        </div>
        <div class="col-12 ReceivedReportDetailsManagementContant">
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>کد ماموریت:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:TextBox runat="server" ID="RRDMMissionCode" CssClass=" ReceivedReportDetailsManagementContantInput" MaxLength="5" />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>فرستنده گزارش:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:Label Text="text" runat="server" ID="RRDMEmployee" CssClass="ReceivedReportDetailsManagementContantSmallLabel" />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>تاریخ و زمان تعیین ماموریت :</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:Label Text="text" runat="server" ID="RRDMDateMission" CssClass="ReceivedReportDetailsManagementContantSmallLabel" />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>تاریخ و زمان ارسال گزارش:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:Label Text="text" runat="server" ID="RRDMDateReportMission" CssClass="ReceivedReportDetailsManagementContantSmallLabel" />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>شرح ماموریت:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:Label Text="text" runat="server" ID="RRDMMission" CssClass="ReceivedReportDetailsManagementContantBigLabel" />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>شرح گزارش ماموریت:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:Label Text="text" runat="server" ID="RRDMReportMission" CssClass="ReceivedReportDetailsManagementContantBigLabel" />
                </div>
            </div>
        </div>
        <div class="col-12 ReceivedReportDetailsManagementFooter">
            <div class="row">
                <div class="col-sm-6">
                    <asp:Button Text="نمایش" runat="server" CssClass="ReceivedReportDetailsManagementFooterBTN" OnClick="Unnamed1_Click"  />
                    <asp:Button Text="بازگشت" runat="server" CssClass="ReceivedReportDetailsManagementFooterBTN" OnClick="Unnamed2_Click"  />
                </div>
                <div class="col-sm-6">
                    <asp:Label Text="text" runat="server" Visible="False" ID="ReceivedReportDetailsStatusMa" />
                </div>
            </div>
        </div>
    </div>

</asp:Content>
