<%@ Page Title="" Language="C#" MasterPageFile="~/HTML/Management/MasterPage-Management.Master" AutoEventWireup="true" CodeBehind="ReceivedRequest-Management.aspx.cs" Inherits="_961120026.HTML.Management.ReceivedRequests_Management" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../Style/bootstrap.css" rel="stylesheet" />
    <link href="../../Style/Management/MasterPage-Management.css" rel="stylesheet" />
    <link href="../../Style/Management/ReceivedRequest-Management.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row ReceivedRequestManagement">
        <div class="col-12 ReceivedRequestManagementHeader">
            <a href="#">
                <h2>لیست درخواست های دریافتی</h2>
            </a>
        </div>
        <div class="col-12 ReceivedRequestManagementContant">
            <asp:GridView ID="ReceivedRequestManagementGD" runat="server" BorderColor="#2F3542" BorderStyle="Solid" BorderWidth="3px" CellPadding="10" ForeColor="Gold" ShowFooter="True" Width="100%">
                <AlternatingRowStyle BackColor="#A4B0BE" />
                <FooterStyle BackColor="#2F3542" />
                <HeaderStyle BackColor="#2F3542" HorizontalAlign="Center" VerticalAlign="Middle" />
                <RowStyle BackColor="#747D8C" HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:GridView>
        </div>
        <div class="col-12 ReceivedRequestManagementFooter">
            <div class="row">
                <div class="col-sm-6">
                    <asp:Button Text="پاسخ" runat="server" CssClass="ReceivedRequestManagementFooterBTN" OnClick="Unnamed1_Click1"  />
                    <asp:Button Text="اطلاعات بیشتر" runat="server" CssClass="ReceivedRequestManagementFooterBTN" OnClick="Unnamed1_Click"  />
                    <asp:Button Text="بازگشت" runat="server" CssClass="ReceivedRequestManagementFooterBTN" OnClick="Unnamed2_Click" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
