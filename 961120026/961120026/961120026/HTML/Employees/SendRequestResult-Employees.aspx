<%@ Page Title="" Language="C#" MasterPageFile="~/HTML/Employees/MasterPage-Emoloyees.Master" AutoEventWireup="true" CodeBehind="SendRequestResult-Employees.aspx.cs" Inherits="_961120026.HTML.Employees.RequestResult_Employees" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../Style/bootstrap.css" rel="stylesheet" />
    <link href="../../Style/Employees/MasterPage-Employees.css" rel="stylesheet" />
    <link href="../../Style/Employees/SendRequestResult-Employees.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row SendRequestResultEmployees">
        <div class="col-12 SendRequestResultEmployeesHeader">
            <a href="#">
                <h2> لیست درخواست های ارسالی</h2>
            </a>
        </div>
        <div class="col-12 SendRequestResultEmployeesContant">
            <asp:GridView runat="server" ID="SendRequestResultEmployeesGD" BorderColor="#2F3542" BorderStyle="Solid" BorderWidth="3px" CellPadding="10" ForeColor="Gold" ShowFooter="True" Width="100%">
                <AlternatingRowStyle BackColor="#A4B0BE" />
                <FooterStyle BackColor="#2F3542" />
                <HeaderStyle BackColor="#2F3542" HorizontalAlign="Center" VerticalAlign="Middle" />
                <RowStyle BackColor="#747D8C" HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:GridView>
        </div>
        <div class="col-12 SendRequestResultEmployeesFooter">
            <div class="row">
                <div class="col-sm-6 ">
                    <asp:Button Text="ایجاد درخواست" runat="server" CssClass="SendRequestResultEmployeesFooterBTN" OnClick="Unnamed1_Click1"  />
                    <asp:Button Text="اطلاعات بیشتر" runat="server" CssClass="SendRequestResultEmployeesFooterBTN" OnClick="Unnamed1_Click" />
                    <asp:Button Text="بازگشت" runat="server" CssClass="SendRequestResultEmployeesFooterBTN" OnClick="Unnamed2_Click" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
