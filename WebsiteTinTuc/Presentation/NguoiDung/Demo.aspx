<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Demo.aspx.cs" Inherits="WebsiteTinTuc.Presentation.NguoiDung.Demo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        #menu{width:1335px; min-height: 45px; margin-top: 3px;background-color: #0d5d6c;}
#menu ul{float:left;position:relative;margin-left:40px;}
#menu ul li{float:left;}
#menu ul li a{display:block; padding: 15px 17px; color:#fff; font-size:13px; float:left;}
#menu ul li ul{position:absolute; width:136px; background:#0d5d6c; margin-top: 46px; display:none;}
#menu ul li ul li{width:100%; font-size: 15px; border-bottom:1px solid white;}
#menu ul li ul li ul{margin-left:135px; margin-top:0px;}
#menu ul li:hover > ul{display:block}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="main" style="background-color: #f3bbf2; width:1330px; height:500px">
            <div id="banner" style="text-align: center; background-color: azure"  >
                <div id="tieude" style="float: left; margin-left: 50px; background-color: #e88585">
                    <div class="title" style="position: static">Tin tức thể thao</div>
                    <div class="title2" style="position: static">Tin tức mọi nơi</div>
                </div>
                <span style="margin-left: 55px">
                    <asp:TextBox ID="tvTimKiem" runat="server" Height="20px" Width="200px" BackColor="#9999ff"></asp:TextBox>
                    <asp:Button ID="btnTimKiem" runat="server" Height="20px" Width="100px" Text="Search" Font-Bold="false" ForeColor="Aqua" BackColor="#9999ff" />
                </span>
                <span style="margin-left: 100px">
                    <a href="/Presentation/NguoiDung/DangNhap.aspx" style="color: #152def">Đăng Nhập</a>
                    <span>/</span>
                    <a href="../DangKyTaiKhoan.aspx" style="color: #152def">Đăng Kí</a>
                </span>
            </div>
            <div id="menu">
                <ul>
                    <li>Trang Chủ</li>
                    <li>
                        <a href="#">Bóng đá</a>
                        <ul style="list-style-type:none">
                            <li><a href="#">Bóng đá Pháp</a></li>
                            <li>Bóng đá Pháp</li>
                            <li>Bóng đá Việt Nam</li>
                            <li>Bóng đá Mỹ</li>
                        </ul>
                    </li>
                     <li>
                        <a href="#">Bóng đá</a>
                        <ul>
                            <li>Bóng đá Anh</li>
                            <li>Bóng đá Pháp</li>
                            <li>Bóng đá Việt Nam</li>
                            <li>Bóng đá Mỹ</li>
                        </ul>
                    </li>
                     <li>
                        <a href="#">Bóng đá</a>
                        <ul>
                            <li>Bóng đá Anh</li>
                            <li>Bóng đá Pháp</li>
                            <li>Bóng đá Việt Nam</li>
                            <li>Bóng đá Mỹ</li>
                        </ul>
                    </li>
                     <li>
                        <a href="#">Bóng đá</a>
                        <ul>
                            <li>Bóng đá Anh</li>
                            <li>Bóng đá Pháp</li>
                            <li>Bóng đá Việt Nam</li>
                            <li>Bóng đá Mỹ</li>
                        </ul>
                    </li>
                     <li>
                        <a href="#">Bóng đá</a>
                        <ul>
                            <li>Bóng đá Anh</li>
                            <li>Bóng đá Pháp</li>
                            <li>Bóng đá Việt Nam</li>
                            <li>Bóng đá Mỹ</li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div id="content">
            </div>


        </div>
    </form>
</body>
</html>
