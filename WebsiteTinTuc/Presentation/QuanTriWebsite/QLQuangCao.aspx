<%@ Page Title="" Language="C#" MasterPageFile="~/Presentation/QuanTriWebsite/GiaoDienQuanTri.Master" AutoEventWireup="true" CodeBehind="QLQuangCao.aspx.cs" Inherits="WebsiteTinTuc.Presentation.QuanTriWebsite.QLQuangCao" %>
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
                <td align="center">Tên quảng cáo</td>
                <td>
                    <asp:TextBox ID="txtTenQuangCao" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center">Hình ảnh</td>
                <td>
                    <asp:FileUpload ID="UpHinhAnh" runat="server" />
                </td>
            </tr>
        </table>
    </div>
    <div id="bang1">

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="MaQC" HeaderText="Mã quảng cáo" />
                <asp:BoundField DataField="TenQC" HeaderText="Tên quảng cáo" />
                <asp:BoundField DataField="HinhAnh" HeaderText="Hình ảnh" />
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
