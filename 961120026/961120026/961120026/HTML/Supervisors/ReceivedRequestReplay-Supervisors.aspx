<%@ Page Title="" Language="C#" MasterPageFile="~/HTML/Supervisors/MasterPage-Supervisors.Master" AutoEventWireup="true" CodeBehind="ReceivedRequestReplay-Supervisors.aspx.cs" Inherits="_961120026.HTML.Supervisors.ReceivedRequestReplay_Supervisors" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../Style/bootstrap.css" rel="stylesheet" />
    <link href="../../Style/Supervisors/MasterPage-Supervisors.css" rel="stylesheet" />
    <link href="../../Style/Supervisors/ReceivedRequestReplay-Supervisors.css" rel="stylesheet" />
    <script src="../../Java%20Script/Supervisors/ReceivedRequestReplay-Supervisors.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row ReceivedRequestReplaySupervisors">
        <div class="col-12 ReceivedRequestReplaySupervisorsHeader">
            <a href="#">
                <h2>پاسخ درخواست دریافتی</h2>
            </a>
        </div>
        <div class="col-12 ReceivedRequestReplaySupervisorsContant">
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>کد درخواست:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:TextBox runat="server" ID="RRRSReqId" CssClass=" ReceivedRequestReplaySupervisorsContantInput" MaxLength="5" />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>درخواست:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:Label Text="text" runat="server" ID="RRRSReq" CssClass="ReceivedRequestReplaySupervisorsContantBigLabel" />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>موافقت/عدم موافقت:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:DropDownList runat="server" ID="RRRSReqYesNo" CssClass=" ReceivedRequestReplaySupervisorsContantInput">
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
                    <textarea runat="server" id="RRRSReqReplayDescription" class="ReceivedRequestReplaySupervisorsContantBigInput"></textarea>
                </div>
            </div>
        </div>
        <div class="col-12 ReceivedRequestReplaySupervisorsFooter">
            <div class="row">
                <div class="col-sm-6">
                    <asp:Button Text="نمایش" runat="server" CssClass="ReceivedRequestReplaySupervisorsFooterBTN" OnClick="Unnamed1_Click" />
                    <asp:Button Text="ثبت" runat="server" CssClass="ReceivedRequestReplaySupervisorsFooterBTN" OnClick="Unnamed2_Click" />
                    <asp:Button Text="بازگشت" runat="server" CssClass="ReceivedRequestReplaySupervisorsFooterBTN" OnClick="Unnamed3_Click"  />
                </div>
                <div class="col-sm-6">
                    <asp:Label Text="text" runat="server" ID="ReceivedRequestReplayStatusSu" Visible="false" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
