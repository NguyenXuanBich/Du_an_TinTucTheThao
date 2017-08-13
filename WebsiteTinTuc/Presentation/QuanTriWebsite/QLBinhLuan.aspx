<%@ Page Title="" Language="C#" MasterPageFile="~/Presentation/QuanTriWebsite/GiaoDienQuanTri.Master" AutoEventWireup="true" CodeBehind="QLBinhLuan.aspx.cs" Inherits="WebsiteTinTuc.Presentation.QuanTriWebsite.QLBinhLuan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Styles/Form.css" rel="stylesheet" />
    <style type="text/css">
        table{width: 1070px; border-top: 1px solid #808080; border-left: 1px solid #808080; margin:auto;}
        td{padding: 4px; border-bottom: 1px solid #808080; border-right: 1px solid #808080;}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="bang">
        <table cellpadding="0" cellspacing="0">
            <tr>
                <td align="center">Mã bình luận</td>
                <td>
                    <asp:TextBox ID="txtMaBL" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center">Nội dung</td>
                <td>
                    <asp:TextBox ID="txtNoiDung" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center">Ngày</td>
                <td>
                    <asp:TextBox ID="txtNgay" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center">Mã tin</td>
                <td>
                    <asp:DropDownList ID="ddlMaTin" runat="server"></asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td align="center">Mã người dùng</td>
                <td>
                    <asp:DropDownList ID="ddlMaNguoiDung" runat="server"></asp:DropDownList>
                </td>
            </tr>
        </table>
    </div>
    <div id="bang1">

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="MaBinhLuan" HeaderText="Mã bình luận" />
                <asp:BoundField DataField="NoiDung" HeaderText="Nội dung" />
                <asp:BoundField DataField="Ngay" HeaderText="Ngày" />
                <asp:BoundField DataField="MaTin" HeaderText="Mã tin" />
                <asp:BoundField DataField="MaNguoiDung" HeaderText="Mã người dùng" />
                <asp:CommandField HeaderText="Chọn" SelectText="Chọn" ShowSelectButton="True" />
            </Columns>
        </asp:GridView>

    </div>
    <div id="bang2">
        <span style="margin-left: 10px;"><asp:Button ID="btnTroVe" runat="server" Text="Trở về" OnClick="btnTroVe_Click1" Width="60" Height="50" ForeColor="White" BackColor="Black" BorderStyle="None"/></span>
        <span style="margin-left: 10px;"><asp:Button ID="btnHienThi" runat="server" Text="Hiển thị" Width="60" Height="50" ForeColor="White" BackColor="Black" BorderStyle="None" OnClick="btnHienThi_Click" /></span>
        <span style="margin-left: 10px;"><asp:Button ID="btnXoa" runat="server" Text="Xoá" OnClick="btnXoa_Click" Width="60" Height="50" ForeColor="White" BackColor="Black" BorderStyle="None"/></span>
    </div>
</asp:Content>
