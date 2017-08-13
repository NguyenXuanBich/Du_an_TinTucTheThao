using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebsiteTinTuc.BusinessLogicLayer;
using WebsiteTinTuc.Entities;

namespace WebsiteTinTuc.Presentation.NguoiDung
{
    public partial class DangNhap : System.Web.UI.Page
    {
        private NguoiDung1BLL ndbll = new NguoiDung1BLL();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnHuy_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('Đăng Nhập thất bại')</script>");
        }

        protected void btnDangNhap_Click(object sender, EventArgs e)
        {
            string taiKhoan = txtUser.Text;
            string matKhau = txtPass.Text;

            int check = ndbll.DangNhap(taiKhoan, matKhau);

            if (check == 1)
            {
                Session["TaiKhoan"] = taiKhoan;
                Session["MatKhau"] = matKhau;

                Response.Write("<script>alert('Đăng nhập thành công'); window.location.replace('/Presentation/QuanTriWebsite/GiaoDienQuanTri.aspx');</script>");
            }
            else

                if (check == 0)
                {
                    Session["TaiKhoan"] = taiKhoan;
                    Session["MatKhau"] = matKhau;

                    Response.Write("<script>alert('Đăng nhập thành công'); window.location.replace('/Presentation/NguoiDung/TrangChu.aspx');</script>");
                }
                else
                {
                    Response.Write("<script>alert('Sai tài khoản hoặc mật khẩu. Vui lòng kiểm tra lại!');</script>");
                }

        }
    }
}