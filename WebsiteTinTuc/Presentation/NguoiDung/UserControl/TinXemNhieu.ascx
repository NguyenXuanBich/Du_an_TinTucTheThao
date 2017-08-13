<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TinXemNhieu.ascx.cs" Inherits="WebsiteTinTuc.Presentation.NguoiDung.UserControl.TinXemNhieu" %>
<div id="UCTinXemNhieu">
    <ul>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <li>
                    <img src='/Presentation/NguoiDung/Images/<%# Eval("HinhAnh") %>' style="width: 250px; height:150px; margin-left: 1px; margin-right: 7px; align-content:center;" /></a>
                    <br />
                    <h4 style="width: 250px; font-size:13px;">
                        <span>
                            <a style="text-decoration: none;color: #333; text-align:center;" href='ChiTietTin.aspx?MaTin=<%# Eval("MaTin") %>'><%# Eval("TieuDe") %></a>
                        </span>
                    </h4>
                </li>
            </ItemTemplate>
        </asp:Repeater>
    </ul>
</div>