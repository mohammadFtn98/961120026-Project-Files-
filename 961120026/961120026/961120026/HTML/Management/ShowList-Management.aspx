<%@ Page Title="" Language="C#" MasterPageFile="~/HTML/Management/MasterPage-Management.Master" AutoEventWireup="true" CodeBehind="ShowList-Management.aspx.cs" Inherits="_961120026.HTML.Management.ShowList_Management" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../Style/bootstrap.css" rel="stylesheet" />
    <link href="../../Style/Management/ShowList-Management.css" rel="stylesheet" />
    <link href="../../Style/Management/MasterPage-Management.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row ShowListManagement">
        <div class="col-12 ShowListManagementHeader">
            <a href="#">
                <h2>لیست کارمندان  </h2>
            </a>
        </div>
        <div class="col-12 ShowListManagementContant">
            <asp:GridView runat="server" ID="ShowListManagementGD" BorderColor="#2F3542" BorderStyle="Solid" BorderWidth="3px" CellPadding="10" ForeColor="Gold" ShowFooter="True" Width="100%" >
                <AlternatingRowStyle BackColor="#A4B0BE" />
                <FooterStyle BackColor="#2F3542" />
                <HeaderStyle BackColor="#2F3542" HorizontalAlign="Center" VerticalAlign="Middle" />
                <RowStyle BackColor="#747D8C" HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:GridView>
            
        </div>
        <div class="col-12 ShowListManagementFooter">
            <div class="row">
                <div class="col-sm-6 ">
                    <asp:Button Text="اطلاعات بیشتر" runat="server" ID="ShowListManagementMoreBTN" CssClass="ShowListManagementFooterBTN" OnClick="ShowListManagementMoreBTN_Click" />
                    <asp:Button Text="بازگشت" runat="server" ID="ShowListManagementBackBTN" CssClass="ShowListManagementFooterBTN" OnClick="ShowListManagementBackBTN_Click"/>
                </div>
            </div>
            
        </div>
    </div>
</asp:Content>
