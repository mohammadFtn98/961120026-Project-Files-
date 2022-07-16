<%@ Page Title="" Language="C#" MasterPageFile="~/HTML/Supervisors/MasterPage-Supervisors.Master" AutoEventWireup="true" CodeBehind="SendMission-Supervisors.aspx.cs" Inherits="_961120026.HTML.Supervisors.Mission_Supervisors" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../Style/bootstrap.css" rel="stylesheet" />
    <link href="../../Style/Supervisors/MasterPage-Supervisors.css" rel="stylesheet" />
    <link href="../../Style/Supervisors/SendMission-Supervisors.css" rel="stylesheet" />
    <script src="../../Java%20Script/Supervisors/SendMission-Supervisors.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row SendMissionSupervisors">
        <div class="col-12 SendMissionSupervisorsHeader">
            <a href="#">
                <h2>ایجاد ماموریت جدید</h2>
            </a>
        </div>
        <div class="col-12 SendMissionSupervisorsContant">
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>کد سازمانی گیرنده:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:TextBox runat="server" CssClass="SendMissionSupervisorsContantInput" ID="ReceiverMissionSupervisors" MaxLength="5" />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>شرح ماموریت:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <textarea runat="server" id="MissionnnINP" class="SendMissionSupervisorsContantBigInput"></textarea>
                </div>
            </div>
        </div>
        <div class="col-12 SendMissionSupervisorsFooter">
            <div class="row">
                <div class="col-sm-6">
                    <asp:Button Text="ثبت" runat="server" CssClass="SendMissionSupervisorsFooterBTN" OnClick="Unnamed3_Click" />
                    <asp:Button Text="بازگشت" runat="server" CssClass="SendMissionSupervisorsFooterBTN" OnClick="Unnamed4_Click" />
                </div>
                <div class="col-sm-6">
                    <asp:Label Text="text" runat="server" Visible="false" ID="MissionStatus" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
