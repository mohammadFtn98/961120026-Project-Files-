<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login-Employees.aspx.cs" Inherits="_961120026.HTML.Employees.Login_Employees" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../../Style/bootstrap.css" rel="stylesheet" />
    <link href="../../Style/Employees/login-employees.css" rel="stylesheet" />
    <script src="../../Java%20Script/Employees/Login-Employees.js"></script>

    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">
            <div class="header-name"><a href="#">سامانه مدیریت کارمندان</a></div>
            <div class="header-logo">
                <a href="#">
                    <img alt="logo" id="img-logo" src="../../Pictures/logo.png" />
                </a>
            </div>
        </div>
        <div class="container">
            <div class="circle">
                <div class="contant">
                    <div class="row">
                        <div class="col-sm-3 user-pass">
                            <p>نام کاربری: </p>
                        </div>
                        <div class="col-sm-6 user-pass">
                            <asp:TextBox runat="server" ID="UserTxtboxEmployees" CssClass="UserPassTxtbox" MaxLength="10" />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-3 user-pass">
                            <p>رمزعبور: </p>
                        </div>
                        <div class="col-sm-6 user-pass">
                            <asp:TextBox runat="server" ID="PassTxtboxEmployees" CssClass="UserPassTxtbox" TextMode="Password" />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12 user-pass">
                            <asp:Button Text="ورود" runat="server" ID="loginEmployeesBTN" OnClick="loginEmployeesBTN_Click" OnClientClick="autoRePage()" />
                            <asp:Button Text="بازگشت" runat="server" ID="BCKLoginEmployees" OnClick="BCKLoginEmployees_Click" />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12 user-pass">
                            <asp:Label ID="loginStatus" Visible="false" Text="text" runat="server" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer">
            <div class="footer-top">
                <ul>
                    <li><a href="https://instagram.com/int.kut?utm_medium=copy_link" target="_blank">
                        <img src="../../Pictures/instagram.png" alt="Instagram" width="40px" height="40px" /></a></li>
                    <li><a href="mailto:mohammadforoutan98@gmail.com" target="_blank">
                        <img src="../../Pictures/mail.png" alt="Mail" width="40px" height="40px" /></a></li>
                    <li><a href="https://t.me/kut_news" target="_blank">
                        <img src="../../Pictures/telegram.png" alt="Telegram" width="40px" height="40px" /></a></li>
                    <li><a href="https://goo.gl/maps/RSrqXaswFQRDMQrq8" target="_blank">
                        <img src="../../Pictures/Map.png" alt="Address" width="40px" height="40px" /></a></li>
                </ul>
            </div>
            <div class="footer-bottom">
                <p>© کلیه حقوق مادی و معنوی این سامانه برای دانشگاه صنعتی کرمانشاه محفوظ است .</p>
            </div>
        </div>
    </form>
</body>
</html>
