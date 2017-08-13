using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebsiteTinTuc.Entities;
using WebsiteTinTuc.BusinessLogicLayer;

namespace WebsiteTinTuc.Presentation
{
    public partial class DangKyTaiKhoan : System.Web.UI.Page
    {
        private NguoiDung1BLL ndbll = new NguoiDung1BLL();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDangKy_Click(object sender, EventArgs e)
        {
            NguoiDung1 nd1 = new NguoiDung1();
            if (txtHoTen.Text == "")
            {
                Response.Write("<script language='javascript'>alert('" + "Bạn chưa nhập họ tên!" + "')</script>");
                txtHoTen.Focus();
            }
            else
            {
                if (txtTaiKhoan.Text == "")
                {
                    Response.Write("<script language='javascript'>alert('" + "Bạn chưa nhập tên tài khoản!" + "')</script>");
                    txtTaiKhoan.Focus();
                }
                else
                {
                    if (txtMatKhau.Text == "")
                    {
                        Response.Write("<script language='javascript'>alert('" + "Bạn chưa nhập mật khẩu!" + "')</script>");
                        txtMatKhau.Focus();
                    }
                    else
                    {
                        if (txtDiaChi.Text == "")
                        {
                            Response.Write("<script language='javascript'>alert('" + "Bạn chưa nhập địa chỉ!" + "')</script>");
                            txtDiaChi.Focus();
                        }
                        else
                        {
                            if (txtEmail.Text == "")
                            {
                                Response.Write("<script language='javascript'>alert('" + "Bạn chưa nhập email!" + "')</script>");
                                txtDiaChi.Focus();
                            }
                            else
                            {
                                if (txtGioiTinh.Text == "")
                                {
                                    Response.Write("<script language='javascript'>alert('" + "Bạn chưa nhập giới tính!" + "')</script>");
                                    txtDiaChi.Focus();
                                }
                                else
                                {
                                    if (txtNgaySinh.Text == "")
                                    {
                                        Response.Write("<script language='javascript'>alert('" + "Bạn chưa nhập ngày sinh!" + "')</script>");
                                        txtDiaChi.Focus();
                                    }
                                    else
                                    {
                                        if (txtNgayDK.Text == "")
                                        {
                                            Response.Write("<script language='javascript'>alert('" + "Bạn chưa nhập ngày đăng ký!" + "')</script>");
                                            txtDiaChi.Focus();
                                        }
                                        else
                                        {
                                            nd1.HoTen = txtHoTen.Text;
                                            nd1.TaiKhoan = txtTaiKhoan.Text;
                                            nd1.MatKhau = txtMatKhau.Text;
                                            nd1.DiaChi = txtDiaChi.Text;
                                            nd1.Email = txtEmail.Text;
                                            nd1.GioiTinh = txtGioiTinh.Text;
                                            nd1.NgaySinh = txtNgaySinh.Text;
                                            nd1.NgayDangKy = txtNgayDK.Text;
                                            nd1.VaiTro = 0;
                                            //try
                                            {
                                                ndbll.ThemNguoiDung(nd1);
                                                Response.Write("<script>alert('Đăng ký thành công!'); window.location.replace('/Presentation/NguoiDung/DangNhap.aspx');</script>");
                                            }
                                            //catch
                                            {
                                                Response.Write("<script>alert('Đăng ký thất bại!');</script>");
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}