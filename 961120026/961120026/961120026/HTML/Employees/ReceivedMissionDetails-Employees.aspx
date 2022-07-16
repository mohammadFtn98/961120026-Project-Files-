<%@ Page Title="" Language="C#" MasterPageFile="~/HTML/Employees/MasterPage-Emoloyees.Master" AutoEventWireup="true" CodeBehind="ReceivedMissionDetails-Employees.aspx.cs" Inherits="_961120026.HTML.Employees.MissionDetails_Employees" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../Style/bootstrap.css" rel="stylesheet" />
    <link href="../../Style/Employees/MasterPage-Employees.css" rel="stylesheet" />
    <link href="../../Style/Employees/ReceivedMissionDetails-Employees.css" rel="stylesheet" />
    <script src="../../Java%20Script/Employees/ReceivedMissionDetails-Employees.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row ReceivedMissionDetailsEmployees">
        <div class="col-12 ReceivedMissionDetailsEmployeesHeader">
            <a href="#">
                <h2>جزئیات ماموریت دریافتی</h2>
            </a>
        </div>
        <div class="col-12 ReceivedMissionDetailsEmployeesContant">
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>کد ماموریت:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:TextBox runat="server" ID="RMDEMissionCode" CssClass=" ReceivedMissionDetailsEmployeesContantInput" MaxLength="5" />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>کارفرما:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:Label Text="text" runat="server" ID="RMDEEmployer" CssClass="ReceivedMissionDetailsEmployeesContantSmallLabel"/>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>تاریخ و زمان تعیین ماموریت :</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:Label Text="text" runat="server" ID="RMDEDateMission" CssClass="ReceivedMissionDetailsEmployeesContantSmallLabel" />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>تاریخ و زمان ارسال گزارش:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:Label Text="text" runat="server" ID="RMDEDateReportMission" CssClass="ReceivedMissionDetailsEmployeesContantSmallLabel" />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>شرح ماموریت:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:Label Text="text" runat="server" ID="RMDEMission" CssClass="ReceivedMissionDetailsEmployeesContantBigLabel"/>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>شرح گزارش ماموریت:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:Label Text="text" runat="server" ID="RMDEReportMission" CssClass="ReceivedMissionDetailsEmployeesContantBigLabel" />
                </div>
            </div>
        </div>
        <div class="col-12 ReceivedMissionDetailsEmployeesFooter">
            <div class="row">
                <div class="col-sm-6">
                    <asp:Button Text="نمایش" runat="server" CssClass="ReceivedMissionDetailsEmployeesFooterBTN" OnClick="Unnamed1_Click" />
                    <asp:Button Text="بازگشت" runat="server" CssClass="ReceivedMissionDetailsEmployeesFooterBTN" OnClick="Unnamed3_Click" />
                </div>
                <div class="col-sm-6">
                    <asp:Label Text="text" runat="server" Visible="False" ID="ReceivedMissionDetailsStatusEm" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
