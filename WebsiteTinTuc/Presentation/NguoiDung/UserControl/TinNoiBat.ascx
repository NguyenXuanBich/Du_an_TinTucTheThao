<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TinNoiBat.ascx.cs" Inherits="WebsiteTinTuc.Presentation.NguoiDung.UserControl.TinNoiBat" %>
<div id="UCTinNoiBat">
    <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
            <img src='/Presentation/NguoiDung/Images/<%# Eval("HinhAnh") %>' style="width: 520px; height:300px;" /></a>
            <h2>
                <span>
                    <a style="text-decoration: none; color: #006088;" href='ChiTietTin.aspx?MaTin=<%# Eval("MaTin") %>'><%# Eval("TieuDe") %></a>
                </span>
            </h2>
            <h4>
                <span style="color: #333;"><%# Eval("TomTat") %></span><br />
                <span style="font-size:10px; color: #333;"><%# Eval("NgayDang") %></span>
            </h4>
        </ItemTemplate>
    </asp:Repeater>
</div>