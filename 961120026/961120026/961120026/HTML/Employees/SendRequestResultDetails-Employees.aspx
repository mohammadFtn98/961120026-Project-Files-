<%@ Page Title="" Language="C#" MasterPageFile="~/HTML/Employees/MasterPage-Emoloyees.Master" AutoEventWireup="true" CodeBehind="SendRequestResultDetails-Employees.aspx.cs" Inherits="_961120026.HTML.Employees.SendRequestResultDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../Style/bootstrap.css" rel="stylesheet" />
    <link href="../../Style/Employees/MasterPage-Employees.css" rel="stylesheet" />
    <link href="../../Style/Employees/SendRequestResultDetails-Employees.css" rel="stylesheet" />
    <script src="../../Java%20Script/Employees/SendRequestResultDetails-Employees.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row SendRequestResultDetailsEmployees">
        <div class="col-12 SendRequestResultDetailsEmployeesHeader">
            <a href="#">
                <h2>جزئیات درخواست ارسالی</h2>
            </a>
        </div>
        <div class="col-12 SendRequestResultDetailsEmployeesContant">
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>کد درخواست:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:TextBox runat="server" ID="SRRDEReqId" CssClass=" SendRequestResultDetailsEmployeesContantInput" MaxLength="5" />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>موضوع درخواست:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:Label Text="text" runat="server" ID="SRRDEReqType" CssClass="SendRequestResultDetailsEmployeesContantSmallLabel" />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>گیرنده درخواست :</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:Label Text="text" runat="server" ID="SRRDEReqReceiver" CssClass="SendRequestResultDetailsEmployeesContantSmallLabel" />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>تاریخ و زمان ارسال درخواست:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:Label Text="text" runat="server" ID="SRRDEReqDate" CssClass="SendRequestResultDetailsEmployeesContantSmallLabel" />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>تاریخ و زمان ارسال پاسخ درخواست:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:Label Text="text" runat="server" ID="SRRDEReqResultDate" CssClass="SendRequestResultDetailsEmployeesContantSmallLabel" />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>شرح درخواست:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:Label Text="text" runat="server" ID="SRRDEReqDescription" CssClass="SendRequestResultDetailsEmployeesContantBigLabel" />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>نتیجه درخواست:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:Label Text="text" runat="server" ID="SRRDEReqResult" CssClass="SendRequestResultDetailsEmployeesContantBigLabel" />
                </div>
            </div>
        </div>
        <div class="col-12 SendRequestResultDetailsEmployeesFooter">
            <div class="row">
                <div class="col-sm-6">
                    <asp:Button Text="نمایش" runat="server" CssClass="SendRequestResultDetailsEmployeesFooterBTN" OnClick="Unnamed1_Click" />
                    <asp:Button Text="بازگشت" runat="server" CssClass="SendRequestResultDetailsEmployeesFooterBTN" OnClick="Unnamed2_Click1" />
                </div>
                <div class="col-sm-6">
                    <asp:Label Text="text" runat="server" Visible="False" ID="SendRequestResultDetailsStatusEm" />
                </div>
            </div>
        </div>
    </div>



</asp:Content>
