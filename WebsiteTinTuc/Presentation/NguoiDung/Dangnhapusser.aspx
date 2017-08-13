<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dangnhapusser.aspx.cs" Inherits="WebsiteTinTuc.Presentation.NguoiDung.Dangnhapusser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đăng nhập</title>
    <style>
        #loginuser {
            background-color: #0094ff;
            width: 400px;
            height: 300px;
            border: 5px solid red;
            border-radius: 10px;
        }

            #loginuser .info {
                margin-left: 20px;
                margin-top: 10px;
            }

            #loginuser b {
                display: block;
                margin-left: 05px;
                width: 100px;
                line-height: 30px;
                float: left;
            }

            #loginuser h1 {
                width: 100%;
                text-align: center;
                font-size: 28px;
            }

            #loginuser input[type=Email], input[type=Password] {
                border: 3px solid #0094ff;
            }

            #loginuser .button {
                margin-left: 50px;
                padding: 10px;
                margin-top: 50px;
            }

            #loginuser input[type='submit'] {
                background-color: Blue;
                color: #FFF;
                border: none;
                font-weight: bold;
                width: 120px;
                height: 40px;
                border:3px solid red;
                border-radius:10px;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="loginuser">
            <h1>ĐĂNG NHẬP ADMIN</h1>
            <div class="info">
                <b>Email: </b>
                <asp:TextBox ID="txtName" TextMode="Email" runat="server" Width="220px" Height="30px"></asp:TextBox>
            </div>
            <div class="info">
                <b>Mật Khẩu: </b>
                <asp:TextBox ID="txtPass" TextMode="Password" runat="server" Width="220px" Height="30px"></asp:TextBox>
            </div>
            <div class="button">
                <span>
                    <asp:Button ID="btnDangNhap" runat="server" Text="Đăng nhập" /></span>
                <span>
                    <asp:Button ID="btnHuy" runat="server" Text="Hủy bỏ"  /></span>
            </div>
        </div>
    </form>
</body>
</html>
