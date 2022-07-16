<%@ Page Title="" Language="C#" MasterPageFile="~/HTML/Supervisors/MasterPage-Supervisors.Master" AutoEventWireup="true" CodeBehind="ReceivedReport-Supervisors.aspx.cs" Inherits="_961120026.HTML.Supervisors.ReceivedReports_Supervisors" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../Style/bootstrap.css" rel="stylesheet" />
    <link href="../../Style/Supervisors/MasterPage-Supervisors.css" rel="stylesheet" />
    <link href="../../Style/Supervisors/ReceivedReport-Supervisors.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row ReceivedReportSupervisors">
        <div class="col-12 ReceivedReportSupervisorsHeader">
            <a href="#">
                <h2>لیست گزارش های دریافتی</h2>
            </a>
        </div>
        <div class="col-12 ReceivedReportSupervisorsContant">
            <asp:GridView ID="ReceivedReportSupervisorsGD" runat="server" BorderColor="#2F3542" BorderStyle="Solid" BorderWidth="3px" CellPadding="10" ForeColor="Gold" ShowFooter="True" Width="100%">
                <AlternatingRowStyle BackColor="#A4B0BE" />
                <FooterStyle BackColor="#2F3542" />
                <HeaderStyle BackColor="#2F3542" HorizontalAlign="Center" VerticalAlign="Middle" />
                <RowStyle BackColor="#747D8C" HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:GridView>
        </div>
        <div class="col-12 ReceivedReportSupervisorsFooter">
            <div class="row">
                <div class="col-sm-6">
                    <asp:Button Text="اطلاعات بیشتر" runat="server" CssClass="ReceivedReportSupervisorsFooterBTN" OnClick="Unnamed1_Click" />
                    <asp:Button Text="بازگشت" runat="server" CssClass="ReceivedReportSupervisorsFooterBTN" OnClick="Unnamed2_Click" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
