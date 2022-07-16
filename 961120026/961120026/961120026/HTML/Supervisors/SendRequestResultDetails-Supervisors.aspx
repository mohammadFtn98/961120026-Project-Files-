<%@ Page Title="" Language="C#" MasterPageFile="~/HTML/Supervisors/MasterPage-Supervisors.Master" AutoEventWireup="true" CodeBehind="SendRequestResultDetails-Supervisors.aspx.cs" Inherits="_961120026.HTML.Supervisors.SendRequestResultDetails_Supervisors" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../Style/bootstrap.css" rel="stylesheet" />
    <link href="../../Style/Supervisors/MasterPage-Supervisors.css" rel="stylesheet" />
    <link href="../../Style/Supervisors/SendRequestResultDetails-Supervisors.css" rel="stylesheet" />
    <script src="../../Java%20Script/Supervisors/SendRequestResultDetails-Supervisors.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="row SendRequestResultDetailsSupervisors">
        <div class="col-12 SendRequestResultDetailsSupervisorsHeader">
            <a href="#">
                <h2>جزئیات درخواست ارسالی</h2>
            </a>
        </div>
        <div class="col-12 SendRequestResultDetailsSupervisorsContant">
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>کد درخواست:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:TextBox runat="server" ID="SRRDSReqId" CssClass=" SendRequestResultDetailsSupervisorsContantInput" MaxLength="5" />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>موضوع درخواست:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:Label Text="text" runat="server" ID="SRRDSReqType" CssClass="SendRequestResultDetailsSupervisorsContantSmallLabel" />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>گیرنده درخواست :</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:Label Text="text" runat="server" ID="SRRDSReqReceiver" CssClass="SendRequestResultDetailsSupervisorsContantSmallLabel" />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>تاریخ و زمان ارسال درخواست:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:Label Text="text" runat="server" ID="SRRDSReqDate" CssClass="SendRequestResultDetailsSupervisorsContantSmallLabel" />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>تاریخ و زمان ارسال پاسخ درخواست:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:Label Text="text" runat="server" ID="SRRDSReqResultDate" CssClass="SendRequestResultDetailsSupervisorsContantSmallLabel" />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>شرح درخواست:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:Label Text="text" runat="server" ID="SRRDSReqDescription" CssClass="SendRequestResultDetailsSupervisorsContantBigLabel" />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>نتیجه درخواست:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:Label Text="text" runat="server" ID="SRRDSReqResult" CssClass="SendRequestResultDetailsSupervisorsContantBigLabel" />
                </div>
            </div>
        </div>
        <div class="col-12 SendRequestResultDetailsSupervisorsFooter">
            <div class="row">
                <div class="col-sm-6">
                    <asp:Button Text="نمایش" runat="server" CssClass="SendRequestResultDetailsSupervisorsFooterBTN" OnClick="Unnamed1_Click" />
                    <asp:Button Text="بازگشت" runat="server" CssClass="SendRequestResultDetailsSupervisorsFooterBTN" OnClick="Unnamed2_Click1" />
                </div>
                <div class="col-sm-6">
                    <asp:Label Text="text" runat="server" Visible="False" ID="SendRequestResultDetailsStatusSu" />
                </div>
            </div>
        </div>
    </div>



</asp:Content>
