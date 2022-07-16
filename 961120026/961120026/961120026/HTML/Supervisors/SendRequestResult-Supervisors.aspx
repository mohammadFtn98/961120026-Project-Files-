<%@ Page Title="" Language="C#" MasterPageFile="~/HTML/Supervisors/MasterPage-Supervisors.Master" AutoEventWireup="true" CodeBehind="SendRequestResult-Supervisors.aspx.cs" Inherits="_961120026.HTML.Supervisors.SendRequestResult_Supervisors" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../Style/bootstrap.css" rel="stylesheet" />
    <link href="../../Style/Supervisors/MasterPage-Supervisors.css" rel="stylesheet" />
    <link href="../../Style/Supervisors/SendRequestResult-Supervisors.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row SendRequestResultSupervisors">
        <div class="col-12 SendRequestResultSupervisorsHeader">
            <a href="#">
                <h2>لیست درخواست های ارسالی</h2>
            </a>
        </div>
        <div class="col-12 SendRequestResultSupervisorsContant">
            <asp:GridView runat="server" ID="SendRequestResultEmployeesGD" BorderColor="#2F3542" BorderStyle="Solid" BorderWidth="3px" CellPadding="10" ForeColor="Gold" ShowFooter="True" Width="100%">
                <AlternatingRowStyle BackColor="#A4B0BE" />
                <FooterStyle BackColor="#2F3542" />
                <HeaderStyle BackColor="#2F3542" HorizontalAlign="Center" VerticalAlign="Middle" />
                <RowStyle BackColor="#747D8C" HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:GridView>
        </div>
        <div class="col-12 SendRequestResultSupervisorsFooter">
            <div class="row">
                <div class="col-sm-6 ">
                    <asp:Button Text="ایجاد درخواست " runat="server" CssClass="SendRequestResultSupervisorsFooterBTN" OnClick="Unnamed1_Click1" />
                    <asp:Button Text="اطلاعات بیشتر" runat="server" CssClass="SendRequestResultSupervisorsFooterBTN" OnClick="Unnamed1_Click" />
                    <asp:Button Text="بازگشت" runat="server" CssClass="SendRequestResultSupervisorsFooterBTN" OnClick="Unnamed2_Click" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
