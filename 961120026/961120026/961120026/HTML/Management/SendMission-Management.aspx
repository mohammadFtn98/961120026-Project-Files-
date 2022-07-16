<%@ Page Title="" Language="C#" MasterPageFile="~/HTML/Management/MasterPage-Management.Master" AutoEventWireup="true" CodeBehind="SendMission-Management.aspx.cs" Inherits="_961120026.HTML.Management.Mission_Management" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../Style/bootstrap.css" rel="stylesheet" />
    <link href="../../Style/Management/MasterPage-Management.css" rel="stylesheet" />
    <link href="../../Style/Management/SendMission-Management.css" rel="stylesheet" />
    <script src="../../Java%20Script/Management/SendMission-Management.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row SendMissionManagement">
        <div class="col-12 SendMissionManagementHeader">
            <a href="#">
                <h2>ایجاد ماموریت جدید</h2>
            </a>
        </div>
        <div class="col-12 SendMissionManagementContant">
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>کد سازمانی گیرنده:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:TextBox runat="server" CssClass="SendMissionManagementContantInput" ID="ReceiverMissionManagement" MaxLength="5"  />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>شرح ماموریت:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <textarea runat="server" id="MissionINPManagement" class="SendMissionManagementContantBigInput"></textarea>
                </div>
            </div>
        </div>
        <div class="col-12 SendMissionManagementFooter">
            <div class="row">
                <div class="col-sm-6">
                    <asp:Button Text="ثبت" runat="server" CssClass="SendMissionManagementFooterBTN" OnClick="Unnamed3_Click" />
                    <asp:Button Text="بازگشت" runat="server" CssClass="SendMissionManagementFooterBTN" OnClick="Unnamed4_Click" />
                </div>
                <div class="col-sm-6">
                    <asp:Label Text="text" runat="server" Visible="false" ID="MissionStatus" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
