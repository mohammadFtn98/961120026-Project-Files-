<%@ Page Title="" Language="C#" MasterPageFile="~/HTML/Management/MasterPage-Management.Master" AutoEventWireup="true" CodeBehind="SendMissionList-Management.aspx.cs" Inherits="_961120026.HTML.Management.Mission_Employees" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../Style/bootstrap.css" rel="stylesheet" />
    <link href="../../Style/Management/MasterPage-Management.css" rel="stylesheet" />
    <link href="../../Style/Management/SendMissionList-Management.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row SendMissionListManagement">
        <div class="col-12 SendMissionListManagementHeader">
            <a href="#">
                <h2>لیست ماموریت های ارسالی</h2>
            </a>
        </div>
        <div class="col-12 SendMissionListManagementContant">
            <asp:GridView ID="SendMissionListManagementGD" runat="server" BorderColor="#2F3542" BorderStyle="Solid" BorderWidth="3px" CellPadding="10" ForeColor="Gold" ShowFooter="True" Width="100%">
                <AlternatingRowStyle BackColor="#A4B0BE" />
                <FooterStyle BackColor="#2F3542" />
                <HeaderStyle BackColor="#2F3542" HorizontalAlign="Center" VerticalAlign="Middle" />
                <RowStyle BackColor="#747D8C" HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:GridView>
        </div>
        <div class="col-12 SendMissionListManagementFooter">
            <div class="row">
                <div class="col-sm-6">
                    <asp:Button Text="ماموریت جدید" runat="server" CssClass="SendMissionListManagementFooterBTN" OnClick="Unnamed1_Click"  />
                    <asp:Button Text="گزارش دریافتی" runat="server" CssClass="SendMissionListManagementFooterBTN" OnClick="Unnamed2_Click"  />
                    <asp:Button Text="اطلاعات بیشتر" runat="server" CssClass="SendMissionListManagementFooterBTN" OnClick="Unnamed4_Click"  />
                    <asp:Button Text="بازگشت" runat="server" CssClass="SendMissionListManagementFooterBTN" OnClick="Unnamed3_Click" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
