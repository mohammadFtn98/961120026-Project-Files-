<%@ Page Title="" Language="C#" MasterPageFile="~/HTML/Supervisors/MasterPage-Supervisors.Master" AutoEventWireup="true" CodeBehind="SendRequest-Supervisors.aspx.cs" Inherits="_961120026.HTML.Supervisors.Request_Supervisors" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../Style/bootstrap.css" rel="stylesheet" />
    <link href="../../Style/Supervisors/MasterPage-Supervisors.css" rel="stylesheet" />
    <link href="../../Style/Supervisors/SendRequest-Supervisors.css" rel="stylesheet" />
    <script src="../../Java%20Script/Supervisors/SendRequest-Supervisors.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row SendRequestSupervisors">
        <div class="col-12 SendRequestSupervisorsHeader">
            <a href="#">
                <h2>ارسال درخواست</h2>
            </a>
        </div>
        <div class="col-12 SendRequestSupervisorsContant">
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>موضوع درخواست:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <input type="text" runat="server" id="ReqTypeSupervisors"  class="SendRequestSupervisorsContantInput" list="a" maxlength="20"/>
                    <datalist id="a"  >
                        <option value="مرخصی" />
                        <option value="وام" />
                    </datalist>
                </div>
            </div>
        <div class="row">
            <div class="col-sm-4 cl">
                <h4>کدسازمانی گیرنده درخواست:</h4>
            </div>
            <div class="col-sm-6 cl">
                <asp:TextBox runat="server" CssClass="SendRequestSupervisorsContantInput" ID="ReqReceiverSupervisors" MaxLength="5" />
            </div>
        </div>
        <div class="row">
            <div class="col-sm-4 cl">
                <h4>توضیحات مربوط به درخواست:</h4>
            </div>
            <div class="col-sm-6 cl">

                <textarea runat="server" class="SendRequestSupervisorsContantBigInput" id="ReqDescriptionSupervisors"></textarea>
            </div>
        </div>
    </div>
    <div class="col-12 SendRequestSupervisorsFooter">
        <div class="row">
            <div class="col-sm-6">
                <asp:Button Text="ثبت" runat="server" ID="ReqBtn" CssClass="SendRequestSupervisorsFooterBTN" OnClick="ReqBtn_Click" />
                <asp:Button Text="بازگشت" runat="server" ID="ReqBack" CssClass="SendRequestSupervisorsFooterBTN" OnClick="ReqBack_Click" />
            </div>
            <div class="col-sm-6">
                <asp:Label Text="text" runat="server" Visible="False" ID="RequestsStatusSu" />
            </div>
        </div>
    </div>
    </div>
</asp:Content>
