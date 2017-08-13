<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangNhap.aspx.cs" Inherits="WebsiteTinTuc.Presentation.NguoiDung.DangNhap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body {
            background-color: #CCC;
        }

        #login {
            background-color: #FFF;
            margin: 150px auto;
            width: 400px;
            height: 240px;
            border: 5px solid blue;
            border-radius: 5px;
        }

            #login h1 {
                width: 100%;
                text-align: center;
                font-size: 28px;
            }

            #login span {
                display: block;
                margin-left: 30px;
                width: 120px;
                line-height: 30px;
                float: left;
            }

            #login input[type=text] {
                padding: 5px 5px;
                margin-top: 4px;
                width: 150px;
            }

            #login .user, #pass {
                height: 50px;
                color:#00ff21;
            }

            #login .button {
                margin-left: 50px;
                margin-top: 10px;
            }
              
           
        input[type='submit'] {
            width: 120px;
            height: 40px;
            background-color: Blue;
            color: #FFF;
            border: none;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="login">
            <h1>ĐĂNG NHẬP HỆ THỐNG
            </h1>
            <div class="user">
                <span>Tên đăng nhập:</span>
                <asp:TextBox runat="server" ID="txtUser" />
            </div>
            <div class="user">
                <span>Mật khẩu:</span>
                <asp:TextBox runat="server" ID="txtPass" TextMode="Password" Height="22px" Width="160px" />
            </div>
            <div class="button">
                <span><asp:Button ID="btnDangNhap" runat="server" Text="Đăng nhập" OnClick="btnDangNhap_Click" /></span>
               <span><asp:Button ID="btnHuy" runat="server" Text="Hủy bỏ" OnClick="btnHuy_Click" /></span>
            </div>
           
        </div>
    </form>
</body>
</html>
