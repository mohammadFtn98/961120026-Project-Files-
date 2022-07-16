<%@ Page Title="" Language="C#" MasterPageFile="~/HTML/Employees/MasterPage-Emoloyees.Master" AutoEventWireup="true" CodeBehind="SendRequest-Employees.aspx.cs" Inherits="_961120026.HTML.Employees.Request_Employees" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../Style/bootstrap.css" rel="stylesheet" />
    <link href="../../Style/Employees/MasterPage-Employees.css" rel="stylesheet" />
    <link href="../../Style/Employees/SendRequests-Employees.css" rel="stylesheet" />
    <script src="../../Java%20Script/Employees/SendRequest-Employees.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row SendRequestEmployees">
        <div class="col-12 SendRequestEmployeesHeader">
            <a href="#">
                <h2>ارسال درخواست</h2>
            </a>
        </div>
        <div class="col-12 SendRequestEmployeesContant">
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>موضوع درخواست:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <input type="text" runat="server" id="SendRequestTitelEm" class="SendRequestEmployeesContantInput" list="a" maxlength="20" />
                    <datalist id="a">
                        <option value="مرخصی" />
                        <option value="وام" />
                    </datalist>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>کد سازمانی گیرنده درخواست:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:TextBox runat="server" CssClass="SendRequestEmployeesContantInput" ID="SendRequestReqReceiverEm" MaxLength="5" />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>توضیحات مربوط به درخواست:</h4>
                </div>
                <div class="col-sm-6 cl">

                    <textarea runat="server" id="SendRequestDescriptionEm" class="SendRequestEmployeesContantBigInput"></textarea>
                </div>
            </div>
        </div>
        <div class="col-12 SendRequestEmployeesFooter">
            <div class="row">
                <div class="col-sm-6 ">
                    <asp:Button Text="ثبت" runat="server" ID="ReqBtn" OnClick="ReqBtn_Click" CssClass="SendRequestEmployeesFooterBTN" />
                    <asp:Button Text="بازگشت" runat="server" ID="ReqBack" OnClick="ReqBack_Click" CssClass="SendRequestEmployeesFooterBTN" />
                </div>
                <div class="col-sm-6 ">
                    <asp:Label Text="text" runat="server" Visible="false" ID="RequestsStatusEm" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
