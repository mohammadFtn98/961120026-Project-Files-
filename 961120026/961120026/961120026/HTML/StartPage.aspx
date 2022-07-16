<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StartPage.aspx.cs" Inherits="_961120026.HTML.StartPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../Style/StartPage.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid">
            <div class="header">
                <div class="header-name"><a href="#">سامانه مدیریت کارمندان</a></div>
                <div class="header-logo">
                    <a href="#">
                        <img alt="logo" id="img-logo" src="../Pictures/logo.png" />
                    </a>
                </div>
            </div>
            <div class="contant">
                <div class="welcome-menu">
                    <ul>
                        <li><a href="Management/Login-Management.aspx">مدیریت</a></li>
                        <li><a href="Supervisors/Login-Supervisors.aspx">سرپرست</a></li>
                        <li><a href="Employees/Login-Employees.aspx">کارمند</a></li>
                    </ul>
                </div>
            </div>
            <div class="footer">
                <div class="footer-top">
                    <ul>
                        <li><a href="https://instagram.com/int.kut?utm_medium=copy_link" target="_blank">
                            <img src="../Pictures/instagram.png" alt="Instagram" width="40px" height="40px" /></a></li>
                        <li><a href="mailto:mohammadforoutan98@gmail.com" target="_blank">
                            <img src="../Pictures/mail.png" alt="Mail" width="40px" height="40px" /></a></li>
                        <li><a href="https://t.me/kut_news" target="_blank">
                            <img src="../Pictures/telegram.png" alt="Telegram" width="40px" height="40px" /></a></li>
                        <li><a href="https://goo.gl/maps/RSrqXaswFQRDMQrq8" target="_blank">
                            <img src="../Pictures/Map.png" alt="Address" width="40px" height="40px" /></a></li>
                    </ul>
                </div>
                <div class="footer-bottom">
                    <p>© کلیه حقوق مادی و معنوی این سامانه برای دانشگاه صنعتی کرمانشاه محفوظ است .</p>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
