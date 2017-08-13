<%@ Page Title="" Language="C#" MasterPageFile="~/Presentation/NguoiDung/GiaoDienNguoiDung.Master" AutoEventWireup="true" CodeBehind="TinTrongLoai.aspx.cs" Inherits="WebsiteTinTuc.Presentation.NguoiDung.TinTrongLoai" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Repeater runat="server" ID="rpt">
        <ItemTemplate>
            <div style="clear:both"></div>
                <img src='/Presentation/NguoiDung/Images/<%# Eval("HinhAnh") %>' style="width: 230px; height: 180px; float:left; margin-right: 7px; margin-bottom: 7px;" />
            <h4 style="width:600px;">
                <asp:HyperLink Font-Underline="false" ID="hplTK" runat="server" ForeColor="#006087" NavigateUrl='<%#"ChiTietTin.aspx?MaTin=" + Eval("MaTin") %>' Text='<%# Eval("TieuDe") %>'>'></asp:HyperLink>
            </h4>
            <p style="width:600px; padding: 10px;">
                <%#Eval("TomTat") %>
            </p>
            <h4 style="font-size:10px;">
                <%#Eval("NgayDang") %>
            </h4>
        </ItemTemplate>
    </asp:Repeater>
</asp:Content>
