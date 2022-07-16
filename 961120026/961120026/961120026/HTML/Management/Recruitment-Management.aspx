<%@ Page Title="" Language="C#" MasterPageFile="~/HTML/Management/MasterPage-Management.Master" AutoEventWireup="true" CodeBehind="Recruitment-Management.aspx.cs" Inherits="_961120026.HTML.Management.Recruitment_Management" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../Style/bootstrap.css" rel="stylesheet" />
    <link href="../../Style/Management/MasterPage-Management.css" rel="stylesheet" />
    <link href="../../Style/Management/Recruitment-Management.css" rel="stylesheet" />
    <link href="../../Style/kamadatepicker.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row RecruitmentManagement">
        <div class="col-12 RecruitmentManagementHeader">
            <a href="#">
                <h2 id="header">استخدام</h2>
            </a>
        </div>
        <div class="col-12 RecruitmentManagementContant">
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>نام:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:TextBox runat="server" ID="RecruitmentNameTxtBox" CssClass="RecruitmentManagementContantInput" />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>نام خانوادگی:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:TextBox runat="server" ID="RecruitmentLNameTxtBox" CssClass="RecruitmentManagementContantInput" />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>تاریخ تولد:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:TextBox runat="server" ID="RecruitmentBornTxtBox" CssClass="RecruitmentManagementContantInput" MaxLength="10" />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>کد ملی:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:TextBox runat="server" ID="RecruitmentNCodeTxtBox" CssClass="RecruitmentManagementContantInput" MaxLength="10" />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>جنسیت:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:DropDownList runat="server" ID="RecruitmentGenderSelect" CssClass="RecruitmentManagementContantInput">
                        <asp:ListItem Text="انتخاب کنید" />
                        <asp:ListItem Text="مذکر" />
                        <asp:ListItem Text="مونث" />
                    </asp:DropDownList>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>وضعیت تاهل:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:DropDownList runat="server" ID="RecruitmentRelationSelect" CssClass="RecruitmentManagementContantInput">
                        <asp:ListItem Text="انتخاب کنید" />
                        <asp:ListItem Text="مجرد" />
                        <asp:ListItem Text="متاهل" />
                    </asp:DropDownList>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>بخش:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:TextBox runat="server" ID="RecruitmentPartTxtBox" CssClass="RecruitmentManagementContantInput" />
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 cl">
                    <h4>سمت:</h4>
                </div>
                <div class="col-sm-6 cl">
                    <asp:DropDownList runat="server" ID="RecruitmentPositionSelect" CssClass="RecruitmentManagementContantInput">
                        <asp:ListItem Text="انتخاب کنید" />
                        <asp:ListItem Text="مدیر" />
                        <asp:ListItem Text="سرپرست" />
                        <asp:ListItem Text="کارمند" />
                    </asp:DropDownList>
                </div>
            </div>
        </div>
        <div class="col-12 RecruitmentManagementFooter">
            <div class="row">
                <div class="col-sm-6">
                    <asp:Button Text="استخدام" runat="server" ID="RecruitmentBTN" CssClass="RecruitmentManagementFooterBTN" OnClick="RecruitmentBTN_Click" OnClientClick="bb" />
                    <asp:Button Text="بازگشت" runat="server" ID="BckRecruitmentManegment" CssClass="RecruitmentManagementFooterBTN" OnClick="BckRecruitmentManegment_Click" />
                </div>
                <div class="col-sm-6">
                    <asp:Label runat="server" Text="Label" Visible="False" ID="RecruitmentStatus"></asp:Label>
                </div>
            </div>
        </div>
    </div>


    <script src="../../Java%20Script/Jquery.js"></script>
    <script src="../../Java%20Script/Date/kamadatepicker.min.js"></script>
    <script src="../../Java%20Script/Management/Recruitment-Management.js"></script>
    
</asp:Content>


