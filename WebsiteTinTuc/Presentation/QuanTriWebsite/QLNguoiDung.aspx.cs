using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebsiteTinTuc.BusinessLogicLayer;
using WebsiteTinTuc.Entities;

namespace WebsiteTinTuc.Presentation.QuanTriWebsite
{
    public partial class QLNguoiDung : System.Web.UI.Page
    {
        NguoiDung1BLL ndbll = new NguoiDung1BLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                List<NguoiDung1> ds = new List<NguoiDung1>();
                ds = ndbll.AllNguoiDung();
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }

        }

        protected void btnTroVe_Click1(object sender, EventArgs e)
        {

        }

        protected void btnThem_Click(object sender, EventArgs e)
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
                                            try
                                            {
                                                ndbll.ThemNguoiDung(nd1);
                                                Response.Write("<script>alert('Đăng ký thành công!'); window.location.replace('/Presentation/NguoiDung/DangNhap.aspx');</script>");
                                            }
                                            catch
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

        protected void btnXoa_Click(object sender, EventArgs e)
        {
            ndbll.XoaNguoiDung("MaNguoiDung");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int chisodong = GridView1.SelectedIndex;
            {
                txtHoTen.Text = HttpUtility.HtmlDecode((string)(GridView1.Rows[chisodong].Cells[1].Text.ToString()));
                txtTaiKhoan.Text = HttpUtility.HtmlDecode((string)(GridView1.Rows[chisodong].Cells[2].Text.ToString()));
                txtMatKhau.Text = HttpUtility.HtmlDecode((string)(GridView1.Rows[chisodong].Cells[3].Text.ToString()));
                txtDiaChi.Text = HttpUtility.HtmlDecode((string)(GridView1.Rows[chisodong].Cells[4].Text.ToString()));
                txtEmail.Text = HttpUtility.HtmlDecode((string)(GridView1.Rows[chisodong].Cells[5].Text.ToString()));
                txtGioiTinh.Text = HttpUtility.HtmlDecode((string)(GridView1.Rows[chisodong].Cells[6].Text.ToString()));
                txtNgaySinh.Text = HttpUtility.HtmlDecode((string)(GridView1.Rows[chisodong].Cells[7].Text.ToString()));
                txtNgayDK.Text = HttpUtility.HtmlDecode((string)(GridView1.Rows[chisodong].Cells[8].Text.ToString()));
                txtVaiTro.Text = HttpUtility.HtmlDecode((string)(GridView1.Rows[chisodong].Cells[9].Text.ToString()));
            }
        }
    }
}