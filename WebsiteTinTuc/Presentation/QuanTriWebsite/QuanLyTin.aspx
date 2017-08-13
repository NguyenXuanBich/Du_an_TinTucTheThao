<%@ Page Title="" Language="C#" MasterPageFile="~/Presentation/QuanTriWebsite/GiaoDienQuanTri.Master" AutoEventWireup="true" CodeBehind="QuanLyTin.aspx.cs" Inherits="WebsiteTinTuc.Presentation.QuanTriWebsite.QuanLyTin" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
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
           <%-- <tr>
                <td colspan="2">
                    <asp:TextBox ID="txtTimKiem" runat="server" Height="26" Width="350"></asp:TextBox>
                    <asp:Button ID="btnTimKiem" runat="server" Text="Tìm kiếm" Height="30" BorderStyle="None" Width="70" OnClick="btnTimKiem_Click"/>
                </td>
            </tr>--%>
            <tr>
                <td align="center">Mã tin</td>
                <td>
                    <asp:TextBox ID="txtMaTin" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center">Tiêu đề</td>
                <td>
                    <asp:TextBox ID="txtTieuDe" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center">Tóm tắt</td>
                <td>
                    <asp:TextBox ID="txtTomTat" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center">Ngày đăng</td>
                <td>
                    <asp:TextBox ID="txtNgayDang" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center">Tên hình ảnh</td>
                <td>
                    <asp:TextBox ID="txtHinhAnh" runat="server"  Text="Tên hình ảnh"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center">Lưu ảnh</td>
                <td>
                    <asp:FileUpload ID="upImages" runat="server" />
                    <span style="margin-left: 3px;"><asp:Button ID="btnLuu" runat="server" Text="Lưu ảnh" OnClick="btnLuu_Click"/></span>
                </td>
            </tr>
            <tr>
                <td align="center">Nội dung</td>
                <td>
                    <CKEditor:CKEditorControl ID="CKEditorControl1" runat="server"></CKEditor:CKEditorControl>
                </td>
            </tr>
            <tr>
                <td align="center">Lượt xem</td>
                <td>
                    <asp:TextBox ID="txtLuotXem" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center">Trạng thái</td>
                <td>
                    <asp:TextBox ID="txtTrangThai" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center">Mã loại tin</td>
                <td>
                    <asp:DropDownList ID="ddlMaLoaiTin" runat="server"></asp:DropDownList>
                </td>
            </tr>
        </table>
    </div>
    <div id="bang1">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="5" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="30px">
            <Columns>
                <asp:BoundField DataField="MaTin" HeaderText="Mã tin"/>
                <asp:BoundField DataField="TieuDe" HeaderText="Tiêu đề" />
                <asp:BoundField DataField="TomTat" HeaderText="Tóm tắt" />
                <asp:BoundField DataField="NgayDang" HeaderText="Ngày đăng" />
                <asp:BoundField DataField="NoiDung" HeaderText="Nội dung" />
                <asp:BoundField DataField="HinhAnh" HeaderText="Hình ảnh" />
                <asp:BoundField DataField="SoLanXem" HeaderText="Số lần xem" />
                <asp:BoundField DataField="TrangThai" HeaderText="Trạng thái" />
                <asp:BoundField DataField="MaLoaiTin" HeaderText="Mã LT" />
                <asp:CommandField HeaderText="Chọn" SelectText="Chon" ShowSelectButton="True" />
            </Columns>
        </asp:GridView>
    </div>
    <div id="bang2">
        <span style="margin-left: 10px;"><asp:Button ID="btnTroVe" runat="server" Text="Trở về" OnClick="btnTroVe_Click1" Width="60" Height="50" ForeColor="White" BackColor="Black" BorderStyle="None"/></span>
        <span style="margin-left: 10px;"><asp:Button ID="btnThem" runat="server" Text="Thêm" OnClick="btnThem_Click" Width="60" Height="50" ForeColor="White" BackColor="Black" BorderStyle="None" /></span>
        <span style="margin-left: 10px;"><asp:Button ID="btnSua" runat="server" Text="Sửa" Width="60" Height="50" ForeColor="White" BackColor="Black" BorderStyle="None" OnClick="btnSua_Click" /></span>
        <span style="margin-left: 10px;"><asp:Button ID="btnXoa" runat="server" Text="Xoá" OnClick="btnXoa_Click" Width="60" Height="50" ForeColor="White" BackColor="Black" BorderStyle="None"/></span>
    </div>
    <div id="clr"></div>
</asp:Content>
