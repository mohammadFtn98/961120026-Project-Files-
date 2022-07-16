<%@ Page Title="" Language="C#" MasterPageFile="~/HTML/Management/MasterPage-Management.Master" AutoEventWireup="true" CodeBehind="SendMissionDetails-Management.aspx.cs" Inherits="_961120026.HTML.Management.SendMissionDetails_Management" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../Style/bootstrap.css" rel="stylesheet" />
    <link href="../../Style/Management/MasterPage-Management.css" rel="stylesheet" />
    <link href="../../Style/Management/SendMissionDetails-Management.css" rel="stylesheet" />
    <script src="../../Java%20Script/Management/SendMissionDetails-Management.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row SendMissionDetailsManagement">
        <div class="col-12 SendMissionDetailsManagementHeader">
            <a href="#">
                <h2>جزئیات ماموریت ارسالی</h2>
            </a>
        </div>
        <div class="col-12 SendMissionDetailsManagementContant">
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>کد ماموریت:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:TextBox runat="server" ID="SMDMMissionCode" CssClass=" SendMissionDetailsManagementContantInput" MaxLength="5" />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>گیرنده:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:Label Text="text" runat="server" ID="SMDMEmployer" CssClass="SendMissionDetailsManagementContantSmallLabel"/>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>تاریخ و زمان تعیین ماموریت :</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:Label Text="text" runat="server" ID="SMDMDateMission" CssClass="SendMissionDetailsManagementContantSmallLabel" />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>تاریخ و زمان ارسال گزارش:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:Label Text="text" runat="server" ID="SMDMDateReportMission" CssClass="SendMissionDetailsManagementContantSmallLabel" />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>شرح ماموریت:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:Label Text="text" runat="server" ID="SMDMMission" CssClass="SendMissionDetailsManagementContantBigLabel"/>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>شرح گزارش ماموریت:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:Label Text="text" runat="server" ID="SMDMReportMission" CssClass="SendMissionDetailsManagementContantBigLabel" />
                </div>
            </div>
        </div>
        <div class="col-12 SendMissionDetailsManagementFooter">
            <div class="row">
                <div class="col-sm-6">
                    <asp:Button Text="نمایش" runat="server" CssClass="SendMissionDetailsManagementFooterBTN" OnClick="Unnamed1_Click" />
                    <asp:Button Text="بازگشت" runat="server" CssClass="SendMissionDetailsManagementFooterBTN" OnClick="Unnamed3_Click" />
                </div>
                <div class="col-sm-6">
                    <asp:Label Text="text" runat="server" Visible="False" ID="SendMissionDetailsStatusMa" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
