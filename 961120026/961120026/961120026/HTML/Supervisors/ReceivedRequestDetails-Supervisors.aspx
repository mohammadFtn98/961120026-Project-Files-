<%@ Page Title="" Language="C#" MasterPageFile="~/HTML/Supervisors/MasterPage-Supervisors.Master" AutoEventWireup="true" CodeBehind="ReceivedRequestDetails-Supervisors.aspx.cs" Inherits="_961120026.HTML.Supervisors.ReceivedRequestDetails_Supervisors" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../Style/bootstrap.css" rel="stylesheet" />
    <link href="../../Style/Supervisors/MasterPage-Supervisors.css" rel="stylesheet" />
    <link href="../../Style/Supervisors/ReceivedRequestDetails-Supervisors.css" rel="stylesheet" />
    <script src="../../Java%20Script/Supervisors/ReceivedRequestDetails-Supervisors.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row ReceivedRequestDetailsSupervisors">
        <div class="col-12 ReceivedRequestDetailsSupervisorsHeader">
            <a href="#">
                <h2>جزئیات درخواست دریافتی</h2>
            </a>
        </div>
        <div class="col-12 ReceivedRequestDetailsSupervisorsContant">
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>کد درخواست:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:TextBox runat="server" ID="RRDSReqId" CssClass=" ReceivedRequestDetailsSupervisorsContantInput" MaxLength="5" />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>موضوع درخواست:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:Label Text="text" runat="server" ID="RRDSReqType" CssClass="ReceivedRequestDetailsSupervisorsContantSmallLabel" />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>فرستنده درخواست :</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:Label Text="text" runat="server" ID="RRDSReqSender" CssClass="ReceivedRequestDetailsSupervisorsContantSmallLabel" />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>تاریخ و زمان ارسال درخواست:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:Label Text="text" runat="server" ID="RRDSReqDate" CssClass="ReceivedRequestDetailsSupervisorsContantSmallLabel" />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>تاریخ و زمان ارسال نتیجه درخواست:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:Label Text="text" runat="server" ID="RRDSReqResultDate" CssClass="ReceivedRequestDetailsSupervisorsContantSmallLabel" />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>شرح درخواست:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:Label Text="text" runat="server" ID="RRDSReqDescription" CssClass="ReceivedRequestDetailsSupervisorsContantBigLabel" />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>نتیجه درخواست:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:Label Text="text" runat="server" ID="RRDSReqResult" CssClass="ReceivedRequestDetailsSupervisorsContantBigLabel" />
                </div>
            </div>
        </div>
        <div class="col-12 ReceivedRequestDetailsSupervisorsFooter">
            <div class="row">
                <div class="col-sm-6">
                    <asp:Button Text="نمایش" runat="server" CssClass="ReceivedRequestDetailsSupervisorsFooterBTN" OnClick="Unnamed1_Click"  />
                    <asp:Button Text="پاسخ" runat="server" CssClass="ReceivedRequestDetailsSupervisorsFooterBTN" OnClick="Unnamed2_Click"   />
                    <asp:Button Text="بازگشت" runat="server" CssClass="ReceivedRequestDetailsSupervisorsFooterBTN" OnClick="Unnamed3_Click"  />
                </div>
                <div class="col-sm-6">
                    <asp:Label Text="text" runat="server" Visible="False" ID="ReceivedRequestDetailsStatusSu" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
