<%@ Page Title="" Language="C#" MasterPageFile="~/Presentation/QuanTriWebsite/GiaoDienQuanTri.Master" AutoEventWireup="true" CodeBehind="QLLoaiTin.aspx.cs" Inherits="WebsiteTinTuc.Presentation.QuanTriWebsite.QLLoaiTin" %>
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
                <td align="center">Mã loại tin</td>
                <td>
                    <asp:TextBox ID="txtMaLoaiTin" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center">Tên loại tin</td>
                <td>
                    <asp:TextBox ID="txtTenLoaiTin" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center">Mã thể loại</td>
                <td>
                    <asp:DropDownList ID="ddlMaTheLoai" runat="server"></asp:DropDownList>
                </td>
            </tr>
        </table>
    </div>
    <div id="bang1">

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="MaLoaiTin" HeaderText="Mã loại tin" />
                <asp:BoundField DataField="MaTheLoai" HeaderText="Mã thể loại" />
                <asp:BoundField DataField="TenLoaiTin" HeaderText="Tên loại tin" />
                <asp:CommandField HeaderText="Chọn" SelectText="Chọn" ShowSelectButton="True" />
            </Columns>
        </asp:GridView>

    </div>
    <div id="bang2">
        <span style="margin-left: 10px;"><asp:Button ID="btnTroVe" runat="server" Text="Trở về" OnClick="btnTroVe_Click1" Width="60" Height="50" ForeColor="White" BackColor="Black" BorderStyle="None"/></span>
        <span style="margin-left: 10px;"><asp:Button ID="btnThem" runat="server" Text="Thêm" OnClick="btnThem_Click" Width="60" Height="50" ForeColor="White" BackColor="Black" BorderStyle="None" /></span>
        <span style="margin-left: 10px;"><asp:Button ID="btnSua" runat="server" Text="Sửa" OnClick="btnSua_Click" Width="60" Height="50" ForeColor="White" BackColor="Black" BorderStyle="None"/></span>
        <span style="margin-left: 10px;"><asp:Button ID="btnXoa" runat="server" Text="Xoá" OnClick="btnXoa_Click" Width="60" Height="50" ForeColor="White" BackColor="Black" BorderStyle="None"/></span>
    </div>
</asp:Content>
