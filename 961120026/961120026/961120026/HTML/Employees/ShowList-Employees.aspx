<%@ Page Title="" Language="C#" MasterPageFile="~/HTML/Employees/MasterPage-Emoloyees.Master" AutoEventWireup="true" CodeBehind="ShowList-Employees.aspx.cs" Inherits="_961120026.HTML.Employees.ShowList_Employees" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../Style/bootstrap.css" rel="stylesheet" />
    <link href="../../Style/Employees/MasterPage-Employees.css" rel="stylesheet" />
    <link href="../../Style/Employees/ShowList-Employees.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row ShowListEmployees">
        <div class="col-12 ShowListEmployeesHeader">
            <a href="#">
                <h2>لیست کارمندان</h2>
            </a>
        </div>
        <div class="col-12 ShowListEmployeesContant">
            <asp:GridView runat="server" ID="ShowListEmoloyeesGD" BorderColor="#2F3542" BorderStyle="Solid" BorderWidth="3px" CellPadding="10" ForeColor="Gold" ShowFooter="True" Width="100%">
                <AlternatingRowStyle BackColor="#A4B0BE" />
                <FooterStyle BackColor="#2F3542" />
                <HeaderStyle BackColor="#2F3542" HorizontalAlign="Center" VerticalAlign="Middle" />
                <RowStyle BackColor="#747D8C" HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:GridView>

        </div>
        <div class="col-12 ShowListEmployeesFooter">
            <div class="row">
                <div class="col-sm-6 ">
                    <asp:Button Text="اطلاعات بیشتر" runat="server" ID="ShowListEmployeesMoreBTN" CssClass="ShowListEmployeesFooterBTN" OnClick="ShowListEmployeesMoreBTN_Click" />
                    <asp:Button Text="بازگشت" runat="server" ID="ShowListEmployeesBackBTN" CssClass="ShowListEmployeesFooterBTN" OnClick="ShowListEmployeesBackBTN_Click" />
                </div>
            </div>
        </div>
    </div>


</asp:Content>
