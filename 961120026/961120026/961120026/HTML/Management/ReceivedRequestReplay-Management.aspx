<%@ Page Title="" Language="C#" MasterPageFile="~/HTML/Management/MasterPage-Management.Master" AutoEventWireup="true" CodeBehind="ReceivedRequestReplay-Management.aspx.cs" Inherits="_961120026.HTML.Management.ReceivedRequestReplay_Management" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../Style/bootstrap.css" rel="stylesheet" />
    <link href="../../Style/Management/MasterPage-Management.css" rel="stylesheet" />
    <link href="../../Style/Management/ReceivedRequestReplay-Management.css" rel="stylesheet" />
    <script src="../../Java%20Script/Management/ReceivedRequestReplay-Management.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row ReceivedRequestReplayManagement">
        <div class="col-12 ReceivedRequestReplayManagementHeader">
            <a href="#">
                <h2>پاسخ درخواست دریافتی</h2>
            </a>
        </div>
        <div class="col-12 ReceivedRequestReplayManagementContant">
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>کد درخواست:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:TextBox runat="server" ID="RRRMReqId" CssClass=" ReceivedRequestReplayManagementContantInput" MaxLength="5" />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>درخواست:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:Label Text="text" runat="server" ID="RRRMReq" CssClass="ReceivedRequestReplayManagementContantBigLabel" />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>موافقت/عدم موافقت:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:DropDownList runat="server" ID="RRRMReqYesNo" CssClass=" ReceivedRequestReplayManagementContantInput" >
                        <asp:ListItem Text="انتخاب کنید" />
                        <asp:ListItem Text="موافقت شده است." />
                        <asp:ListItem Text="موافقت نشده است." />
                    </asp:DropDownList>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>توضیحات تکمیلی:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <textarea runat="server" id="RRRMReqReplayDescription" class="ReceivedRequestReplayManagementContantBigInput"></textarea>
                </div>
            </div>
        </div>
        <div class="col-12 ReceivedRequestReplayManagementFooter">
            <div class="row">
                <div class="col-sm-6">
                    <asp:Button Text="نمایش" runat="server" CssClass="ReceivedRequestReplayManagementFooterBTN" OnClick="Unnamed1_Click1"/>
                    <asp:Button Text="ثبت" runat="server" CssClass="ReceivedRequestReplayManagementFooterBTN" OnClick="Unnamed1_Click" />
                    <asp:Button Text="بازگشت" runat="server" CssClass="ReceivedRequestReplayManagementFooterBTN" OnClick="Unnamed2_Click" />
                </div>
                <div class="col-sm-6">
                    <asp:Label Text="text" runat="server" id="ReceivedRequestReplayStatusMa" Visible="false" />    
                </div>
            </div>
        </div>
</div>
</asp:Content>
