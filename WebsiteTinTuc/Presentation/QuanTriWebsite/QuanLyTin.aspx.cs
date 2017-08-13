using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebsiteTinTuc.Entities;
using WebsiteTinTuc.BusinessLogicLayer;
using WebsiteTinTuc.DataAccessLayer;

using CKEditor;
namespace WebsiteTinTuc.Presentation.QuanTriWebsite
{
    public partial class QuanLyTin : System.Web.UI.Page
    {
        TinBLL tbll = new TinBLL();
        TinDAL tdal = new TinDAL();
        LoaiTinBLL ltbll = new LoaiTinBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            Load();
            List<LoaiTin> ds = new List<LoaiTin>();
            ds = ltbll.AllLoaiTin();
            ddlMaLoaiTin.DataSource = ds;
             ddlMaLoaiTin.DataValueField = "MaLoaiTin";
            ddlMaLoaiTin.DataBind();
            if(!IsPostBack)
            {
                CKEditorControl1.Language = "vi";
                CKFinder.FileBrowser
                    _FileBrowser = new CKFinder.FileBrowser();
                _FileBrowser.BasePath = "/ckfinder/";
                _FileBrowser.SetupCKEditor(CKEditorControl1);
            }
        }

        private void Load()
        {
            List<Tin> ds = new List<Tin>();
            ds = tbll.AllTin();
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void btnTroVe_Click1(object sender, EventArgs e)
        {

        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            Tin t = new Tin();
            if (txtMaTin.Text == "")
            {
                Response.Write("<script>alert('" + "Bạn chưa nhập mã tin!" + "')</script>");
                txtMaTin.Focus();
            }
            else
            {
                if (txtTieuDe.Text == "")
                {
                    Response.Write("<script>alert('" + "Bạn chưa nhập tiêu đề!" + "')</script>");
                    txtTieuDe.Focus();
                }
                else
                {
                    if (txtTomTat.Text == "")
                    {
                        Response.Write("<script>alert('" + "Bạn chưa nhập tóm tắt!" + "')</script>");
                        txtTomTat.Focus();
                    }
                    else
                    {
                        if(txtNgayDang.Text=="")
                        {
                            Response.Write("<script>alert('" + "Bạn chưa nhập ngày!" + "')</script>");
                            txtNgayDang.Focus();
                        }
                        else
                        {
                            if (CKEditorControl1.Text == "")
                            {
                                Response.Write("<script>alert('" + "Bạn chưa nhập nội dung!" + "')</script>");
                                CKEditorControl1.Focus();
                            }
                            else
                            {
                                if (txtHinhAnh.Text == "")
                                {
                                    Response.Write("<script>alert('" + "Bạn chưa nhập tên hình ảnh!" + "')</script>");
                                    upImages.Focus();
                                }
                                    else
                                    {
                                        if (txtLuotXem.Text == "")
                                        {
                                            Response.Write("<script>alert('" + "Bạn chưa nhập lượt xem!" + "')</script>");
                                            txtLuotXem.Focus();
                                        }
                                        else
                                        {
                                            if(txtTrangThai.Text == "")
                                            {
                                                Response.Write("<script>alert('" + "Bạn chưa nhập trạng thái!" + "')</script>");
                                                txtTrangThai.Focus();
                                            }
                                            else
                                            {
                                                t.MaTin = txtMaTin.Text;
                                                t.TieuDe = txtTieuDe.Text;
                                                t.TomTat = txtTomTat.Text;
                                                t.NgayDang = txtNgayDang.Text;
                                                t.NoiDung = CKEditorControl1.Text;
                                                t.HinhAnh = txtHinhAnh.Text;
                                                t.SoLanXem = txtLuotXem.Text;
                                                t.TrangThai = txtTrangThai.Text;
                                                t.MaLoaiTin = ddlMaLoaiTin.SelectedValue;
                                                Response.Write("<script>alert('" + " Thêm thành công! " + "')</script>");
                                                tdal.ThemTin(t);
                                                Load();

                                                txtMaTin.Text = "";
                                                txtTieuDe.Text = "";
                                                txtTomTat.Text = "";
                                                CKEditorControl1.Text = "";
                                                txtHinhAnh.Text = "";
                                                txtNgayDang.Text = "";
                                                txtLuotXem.Text = "";
                                                txtTrangThai.Text = "";
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }

        protected void btnSua_Click(object sender, EventArgs e)
        {
            Tin t = new Tin();
            if (txtMaTin.Text == "")
            {
                Response.Write("<script>alert('" + "Bạn chưa nhập mã tin!" + "')</script>");
                txtMaTin.Focus();
            }
            else
            {
                if (txtTieuDe.Text == "")
                {
                    Response.Write("<script>alert('" + "Bạn chưa nhập tiêu đề!" + "')</script>");
                    txtTieuDe.Focus();
                }
                else
                {
                    if (txtTomTat.Text == "")
                    {
                        Response.Write("<script>alert('" + "Bạn chưa nhập tóm tắt!" + "')</script>");
                        txtTomTat.Focus();
                    }
                    else
                    {
                        if (txtNgayDang.Text == "")
                        {
                            Response.Write("<script>alert('" + "Bạn chưa nhập ngày!" + "')</script>");
                            txtNgayDang.Focus();
                        }
                        else
                        {
                            if (CKEditorControl1.Text == "")
                            {
                                Response.Write("<script>alert('" + "Bạn chưa nhập nội dung!" + "')</script>");
                                CKEditorControl1.Focus();
                            }
                            else
                            {
                                if (txtHinhAnh.Text == "")
                                {
                                    Response.Write("<script>alert('" + "Bạn chưa nhập tên hình ảnh!" + "')</script>");
                                    upImages.Focus();
                                }
                                else
                                {
                                    if (txtLuotXem.Text == "")
                                    {
                                        Response.Write("<script>alert('" + "Bạn chưa nhập lượt xem!" + "')</script>");
                                        txtLuotXem.Focus();
                                    }
                                    else
                                    {
                                        if (txtTrangThai.Text == "")
                                        {
                                            Response.Write("<script>alert('" + "Bạn chưa nhập trạng thái!" + "')</script>");
                                            txtTrangThai.Focus();
                                        }
                                        else
                                        {
                                            t.MaTin = txtMaTin.Text;
                                            t.TieuDe = txtTieuDe.Text;
                                            t.TomTat = txtTomTat.Text;
                                            t.NgayDang = txtNgayDang.Text;
                                            t.NoiDung = CKEditorControl1.Text;
                                            t.HinhAnh = txtHinhAnh.Text;
                                            t.SoLanXem = txtLuotXem.Text;
                                            t.TrangThai = txtTrangThai.Text;
                                            t.MaLoaiTin = ddlMaLoaiTin.SelectedValue;
                                            Response.Write("<script>alert('" + " Sửa thành công! " + "')</script>");
                                            tbll.SuaTin(t);
                                            Load();

                                            txtMaTin.Text = "";
                                            txtTieuDe.Text = "";
                                            txtTomTat.Text = "";
                                            CKEditorControl1.Text = "";
                                            txtHinhAnh.Text = "";
                                            txtNgayDang.Text = "";
                                            txtLuotXem.Text = "";
                                            txtTrangThai.Text = "";
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
            tbll.XoaTin(txtMaTin.Text);
            Page_Load(sender, e);
            Response.Write("<script language=''javascript>alert('" + " Xóa thành công! " + "')</script>");

            txtMaTin.Text = "";
            txtTieuDe.Text = "";
            txtTomTat.Text = "";
            txtHinhAnh.Text = "";
            CKEditorControl1.Text = "";
            txtNgayDang.Text = "";
            txtLuotXem.Text = "";
            txtTrangThai.Text = "";
        }

        protected void btnLuu_Click(object sender, EventArgs e)
        {
        }

        protected void btnTimKiem_Click(object sender, EventArgs e)
        {
            //string Moithu = Request.QueryString["moithu"].ToString();
            //List<Tin> ds = new List<Tin>();
            //TinBLL tbll = new TinBLL();
            //ds = tbll.timkiem(Moithu);
            //this.GridView1.DataSource = ds;
            //GridView1.DataBind();

            //if (txtTimKiem.Text == "")
            //{
            //    Response.Write("<script language='javascript'>alert('" + "Bạn chưa nhập nội dung!" + "')</script>");
            //    txtTimKiem.Focus();
            //}
            //else
            //{
            //    string moithu = txtTimKiem.Text;
            //}



        }

        int stt = 1;

        public string get_stt()
        {
            return Convert.ToString(stt++);
        }
        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            int trang_thu = e.NewPageIndex;
            int so_dong = GridView1.PageSize;
            stt = trang_thu * so_dong + 1;
            Load();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int chisodong = GridView1.SelectedIndex;
            {
                txtMaTin.Text = HttpUtility.HtmlDecode((string)(GridView1.Rows[chisodong].Cells[0].Text.ToString()));
                txtTieuDe.Text = HttpUtility.HtmlDecode((string)(GridView1.Rows[chisodong].Cells[1].Text.ToString()));
                txtTomTat.Text = HttpUtility.HtmlDecode((string)(GridView1.Rows[chisodong].Cells[2].Text.ToString()));
                txtNgayDang.Text = HttpUtility.HtmlDecode((string)(GridView1.Rows[chisodong].Cells[3].Text.ToString()));
                CKEditorControl1.Text = HttpUtility.HtmlDecode((string)(GridView1.Rows[chisodong].Cells[4].Text.ToString()));
                txtHinhAnh.Text = HttpUtility.HtmlDecode((string)(GridView1.Rows[chisodong].Cells[5].Text.ToString()));
                txtLuotXem.Text = HttpUtility.HtmlDecode((string)(GridView1.Rows[chisodong].Cells[6].Text.ToString()));
                txtTrangThai.Text = HttpUtility.HtmlDecode((string)(GridView1.Rows[chisodong].Cells[7].Text.ToString()));
                ddlMaLoaiTin.SelectedValue = HttpUtility.HtmlDecode((string)(GridView1.Rows[chisodong].Cells[8].Text.ToString()));
            }
        }

        protected void btnUpFile_Click1(object sender, EventArgs e)
        {
            string root = Server.MapPath("~/");
            string folder = "Presentation/NguoiDung/Images";
            string filename = this.upImages.FileName;
            upImages.SaveAs(root + folder + @"/" + filename);
            txtHinhAnh.Text = filename;
        }
    }
}