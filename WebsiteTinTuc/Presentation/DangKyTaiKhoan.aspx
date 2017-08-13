<%@ Page Title="" Language="C#" MasterPageFile="~/Presentation/NguoiDung/GiaoDienNguoiDung.Master" AutoEventWireup="true" CodeBehind="DangKyTaiKhoan.aspx.cs" Inherits="WebsiteTinTuc.Presentation.DangKyTaiKhoan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="NguoiDung/Styles/FormDK.css" rel="stylesheet" />
    <style type="text/css">
        table{width: 600px; border-top: 1px solid #0d5d6c; border-left: 1px solid #0d5d6c;margin-left:220px; background-color: #ffffff; margin-top: 5px;}
        td{padding:4px; border-bottom: 1px solid #0d5d6c; border-right: 1px solid #0d5d6c;}
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="bang">
        <table cellpadding="0" cellspacing="0">
            <tr>
                <td colspan="2" align="center" style="background-color:#0d5d6c;"><h1 style="color:white">ĐĂNG KÝ HỆ THỐNG</h1></td>
            </tr>
            <tr>
                <td style="height: 40px;"><p>Họ tên:</p></td>
                <td>
                    <asp:TextBox ID="txtHoTen" runat="server" Height="30px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="height: 40px;"><p>Tài khoản:</p></td>
                <td>
                    <asp:TextBox ID="txtTaiKhoan" runat="server" Height="30px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="height: 40px;"><p>Mật khẩu:</p></td>
                <td>
                    <asp:TextBox ID="txtMatKhau" runat="server" Height="30px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="height: 40px;"><p>Địa chỉ:</p></td>
                <td>
                    <asp:TextBox ID="txtDiaChi" runat="server" Height="30px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="height: 40px;"><p>Email:</p></td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server" Height="30px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="height: 40px;"><p>Giới tính:</p></td>
                <td>
                    <asp:TextBox ID="txtGioiTinh" runat="server" Height="30px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="height: 40px;"><p>Ngày sinh:</p></td>
                <td>
                    <asp:TextBox ID="txtNgaySinh" runat="server" Height="30px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="height: 40px;"><p>Ngày đăng ký:</p></td>
                <td>
                    <asp:TextBox ID="txtNgayDK" runat="server" Height="30px"></asp:TextBox>
                </td>
            </tr>
        </table>
    </div>
    <div id="bang2">
        <span style="margin-left: 720px;"><asp:Button ID="btnDangKy" runat="server" Text="Đăng Ký" Width="100" Height="40" ForeColor="white" BackColor="#0d5d6c" BorderStyle="None" OnClick="btnDangKy_Click"/></span>
    </div>
</asp:Content>
