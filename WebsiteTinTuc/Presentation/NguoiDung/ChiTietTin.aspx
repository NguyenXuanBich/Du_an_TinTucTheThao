<%@ Page Title="" Language="C#" MasterPageFile="~/Presentation/NguoiDung/GiaoDienNguoiDung.Master" AutoEventWireup="true" CodeBehind="ChiTietTin.aspx.cs" Inherits="WebsiteTinTuc.Presentation.NguoiDung.ChiTietTin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Repeater runat="server" ID="rpt">
        <ItemTemplate>
            <div style="clear: both"></div>
            <h3 style="width: 700px; margin-top: 10px;">
                <asp:HyperLink Font-Underline="false" ID="hplTK" runat="server" ForeColor="#006087" NavigateUrl='<%#"ChiTietTin.aspx?MaTin=" + Eval("MaTin") %>' Text='<%# Eval("TieuDe") %>'>'></asp:HyperLink>
            </h3>
            <br />
            <p style="width: 700px; margin-bottom: 5px;">
                <%#Eval("TomTat") %>
            </p>
            <h4 style="font-size: 10px;">
                <%#Eval("NgayDang") %>
            </h4>
            <br />
            <p align="center" style="width: 700px;">
                <img src='/Presentation/NguoiDung/Images/<%# Eval("HinhAnh") %>' style="margin-bottom: 7px;" /></p>
            <p style="width: 700px;"><%#Eval("NoiDung") %></p>
            <br />
        </ItemTemplate>
    </asp:Repeater>
    <style>
        .fb_iframe_widget, .fb_iframe_widget span, .fb_iframe_widget span iframe[style] {
            min-width: 100% !important;
            width: 100% !important;
        }
    </style>
    <p:if cond='data:blog.pageType == "item"'> <script type='text/javascript'> document.write(fbcm); </script> </p:if>
<%--    <div class="fb-comments" data-href="http://localhost:7495/" data-numposts="10" data-width="100%" data-colorscheme="light"></div>--%>
    <script>
        window.fbAsyncInit = function () {
            FB.init({
                appId: '376317512764963',
                xfbml: true,
                version: 'v2.5'
            });
        };

        (function (d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) { return; }
            js = d.createElement(s); js.id = id;
            js.src = "//connect.facebook.net/en_US/sdk.js";
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));
    </script>
</asp:Content>
