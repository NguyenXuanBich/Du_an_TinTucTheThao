<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TinMoi.ascx.cs" Inherits="WebsiteTinTuc.Presentation.NguoiDung.UserControl.TinMoi" %>
<div id="UCTinMoi">
    <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
            <p style="padding: 3px; margin-top: 3px; line-height: 15px;">
                    <a style="text-decoration: none; color: #333;" href='ChiTietTin.aspx?MaTin=<%# Eval("MaTin") %>'><%# Eval("TieuDe") %></a>
                    <hr style="margin: auto; color: #808080; border-style:dotted; margin-top: 3px; border-width: 1px;" />
            </p>
        </ItemTemplate>
    </asp:Repeater>
</div>