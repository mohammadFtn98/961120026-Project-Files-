<%@ Page Title="" Language="C#" MasterPageFile="~/HTML/Supervisors/MasterPage-Supervisors.Master" AutoEventWireup="true" CodeBehind="SendMissionList-Supervisors.aspx.cs" Inherits="_961120026.HTML.Supervisors.SendMissionList_Supervisors" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../Style/bootstrap.css" rel="stylesheet" />
    <link href="../../Style/Supervisors/MasterPage-Supervisors.css" rel="stylesheet" />
    <link href="../../Style/Supervisors/SendMissionList-Supervisors.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row SendMissionListSupervisors">
        <div class="col-12 SendMissionListSupervisorsHeader">
            <a href="#">
                <h2>لیست ماموریت های ارسالی</h2>
            </a>
        </div>
        <div class="col-12 SendMissionListSupervisorsContant">
            <asp:GridView ID="SendMissionListSupervisorsGD" runat="server" BorderColor="#2F3542" BorderStyle="Solid" BorderWidth="3px" CellPadding="10" ForeColor="Gold" ShowFooter="True" Width="100%">
                <AlternatingRowStyle BackColor="#A4B0BE" />
                <FooterStyle BackColor="#2F3542" />
                <HeaderStyle BackColor="#2F3542" HorizontalAlign="Center" VerticalAlign="Middle" />
                <RowStyle BackColor="#747D8C" HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:GridView>
        </div>
        <div class="col-12 SendMissionListSupervisorsFooter">
            <div class="row">
                <div class="col-sm-6">
                    <asp:Button Text="ماموریت جدید" runat="server" CssClass="SendMissionListSupervisorsFooterBTN" OnClick="Unnamed1_Click"  />
                    <asp:Button Text="گزارش دریافتی" runat="server" CssClass="SendMissionListSupervisorsFooterBTN" OnClick="Unnamed2_Click"  />
                    <asp:Button Text="اطلاعات بیشتر" runat="server" CssClass="SendMissionListSupervisorsFooterBTN" OnClick="Unnamed4_Click"  />
                    <asp:Button Text="بازگشت" runat="server" CssClass="SendMissionListSupervisorsFooterBTN" OnClick="Unnamed3_Click" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
