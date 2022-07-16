<%@ Page Title="" Language="C#" MasterPageFile="~/HTML/Management/MasterPage-Management.Master" AutoEventWireup="true" CodeBehind="ReceivedRequestDetails-Management.aspx.cs" Inherits="_961120026.HTML.Management.ReceivedRequestDetails_Management" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../Style/bootstrap.css" rel="stylesheet" />
    <link href="../../Style/Management/MasterPage-Management.css" rel="stylesheet" />
    <link href="../../Style/Management/ReceivedRequestDetails-Management.css" rel="stylesheet" />
    <script src="../../Java%20Script/Management/ReceivedRequestDetails-Management.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row ReceivedRequestDetailsManagement">
        <div class="col-12 ReceivedRequestDetailsManagementHeader">
            <a href="#">
                <h2>جزئیات درخواست دریافتی</h2>
            </a>
        </div>
        <div class="col-12 ReceivedRequestDetailsManagementContant">
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>کد درخواست:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:TextBox runat="server" ID="RRDMReqId" CssClass=" ReceivedRequestDetailsManagementContantInput" MaxLength="5" />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>موضوع درخواست:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:Label Text="text" runat="server" ID="RRDMReqType" CssClass="ReceivedRequestDetailsManagementContantSmallLabel" />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>فرستنده درخواست :</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:Label Text="text" runat="server" ID="RRDMReqSender" CssClass="ReceivedRequestDetailsManagementContantSmallLabel" />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>تاریخ و زمان ارسال درخواست:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:Label Text="text" runat="server" ID="RRDMReqDate" CssClass="ReceivedRequestDetailsManagementContantSmallLabel" />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>تاریخ و زمان ارسال پاسخ درخواست:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:Label Text="text" runat="server" ID="RRDMReqResultDate" CssClass="ReceivedRequestDetailsManagementContantSmallLabel" />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>شرح درخواست:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:Label Text="text" runat="server" ID="RRDMReqDescription" CssClass="ReceivedRequestDetailsManagementContantBigLabel" />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>نتیجه درخواست:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:Label Text="text" runat="server" ID="RRDMReqResult" CssClass="ReceivedRequestDetailsManagementContantBigLabel" />
                </div>
            </div>
        </div>
        <div class="col-12 ReceivedRequestDetailsManagementFooter">
            <div class="row">
                <div class="col-sm-6">
                    <asp:Button Text="نمایش" runat="server" CssClass="ReceivedRequestDetailsManagementFooterBTN" OnClick="Unnamed1_Click" />
                    <asp:Button Text="پاسخ" runat="server" CssClass="ReceivedRequestDetailsManagementFooterBTN" OnClick="Unnamed2_Click1" />
                    <asp:Button Text="بازگشت" runat="server" CssClass="ReceivedRequestDetailsManagementFooterBTN" OnClick="Unnamed2_Click" />
                </div>
                <div class="col-sm-6">
                    <asp:Label Text="text" runat="server" Visible="False" ID="ReceivedRequestDetailsStatusMa" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
