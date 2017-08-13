<%@ Page Title="" Language="C#" MasterPageFile="~/Presentation/QuanTriWebsite/GiaoDienQuanTri.Master" AutoEventWireup="true" CodeBehind="QLNguoiDung.aspx.cs" Inherits="WebsiteTinTuc.Presentation.QuanTriWebsite.QLNguoiDung" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Styles/Form.css" rel="stylesheet" />
    <style type="text/css">
        table{width: 1070px; border-top: 1px solid #808080; border-left: 1px solid #808080;margin:auto; }
        td{padding: 4px; border-bottom: 1px solid #808080; border-right: 1px solid #808080;}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="bang">
        <table cellpadding="0" cellspacing="0">
            <tr>
                <td align="center">Họ tên</td>
                <td>
                    <asp:TextBox ID="txtHoTen" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center">Tài khoản</td>
                <td>
                    <asp:TextBox ID="txtTaiKhoan" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center">Mật khẩu</td>
                <td>
                    <asp:TextBox ID="txtMatKhau" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center">Địa chỉ</td>
                <td>
                    <asp:TextBox ID="txtDiaChi" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center">Email</td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center">Giới tính</td>
                <td>
                    <asp:TextBox ID="txtGioiTinh" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center">Ngày sinh</td>
                <td>
                    <asp:TextBox ID="txtNgaySinh" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center">Ngày đăng ký</td>
                <td>
                    <asp:TextBox ID="txtNgayDK" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center">Vai trò</td>
                <td>
                    <asp:TextBox ID="txtVaiTro" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
    </div>
    <div id="bang1">

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="MaNguoiDung" HeaderText="Mã người dùng" />
                <asp:BoundField DataField="HoTen" HeaderText="Họ tên" />
                <asp:BoundField DataField="TaiKhoan" HeaderText="Tài khoản" />
                <asp:BoundField DataField="MatKhau" HeaderText="Mật khẩu" />
                <asp:BoundField DataField="DiaChi" HeaderText="Địa chỉ" />
                <asp:BoundField DataField="Email" HeaderText="Email" />
                <asp:BoundField DataField="GioiTinh" HeaderText="Giới tính" />
                <asp:BoundField DataField="NgaySinh" HeaderText="Ngày sinh" />
                <asp:BoundField DataField="NgayDangKy" HeaderText="Ngày ĐK" />
                <asp:BoundField DataField="VaiTro" HeaderText="Vai trò" />
                <asp:CommandField HeaderText="Chọn" SelectText="Chọn" ShowSelectButton="True" />
            </Columns>
        </asp:GridView>

    </div>
    <div id="bang2">
        <span style="margin-left: 10px;"><asp:Button ID="btnTroVe" runat="server" Text="Trở về" OnClick="btnTroVe_Click1" Width="60" Height="50" ForeColor="White" BackColor="Black" BorderStyle="None"/></span>
        <span style="margin-left: 10px;"><asp:Button ID="btnThem" runat="server" Text="Thêm" OnClick="btnThem_Click" Width="60" Height="50" ForeColor="White" BackColor="Black" BorderStyle="None" /></span>
        <span style="margin-left: 10px;"><asp:Button ID="btnXoa" runat="server" Text="Xoá" OnClick="btnXoa_Click" Width="60" Height="50" ForeColor="White" BackColor="Black" BorderStyle="None"/></span>
    </div>
</asp:Content>
