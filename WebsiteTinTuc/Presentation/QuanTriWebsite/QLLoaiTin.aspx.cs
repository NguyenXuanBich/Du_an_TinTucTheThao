using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebsiteTinTuc.Entities;
using WebsiteTinTuc.BusinessLogicLayer;

namespace WebsiteTinTuc.Presentation.QuanTriWebsite
{
    public partial class QLLoaiTin : System.Web.UI.Page
    {
        LoaiTinBLL ltbll = new LoaiTinBLL();
        TheLoaiBLL tlbll = new TheLoaiBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            Load();
            List<TheLoai> ds = new List<TheLoai>();
            ds = tlbll.AllTheLoai();

            ddlMaTheLoai.DataSource = ds;
            ddlMaTheLoai.DataValueField = "MaTheLoai";
            ddlMaTheLoai.DataBind();
        }

        private void Load()
        {
            List<LoaiTin> ds = new List<LoaiTin>();
            ds = ltbll.AllLoaiTin();
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        protected void btnTroVe_Click1(object sender, EventArgs e)
        {

        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            LoaiTin lt = new LoaiTin();
            if (txtMaLoaiTin.Text == "")
            {
                Response.Write("<script language='javascript'>alert('" + "Bạn chưa nhập mã loại tin!" + "')</script>");
                txtMaLoaiTin.Focus();
            }
            else
            {
                if (txtTenLoaiTin.Text == "")
                {
                    Response.Write("<script language='javascript'>alert('" + "Bạn chưa nhập tên loại tin!" + "')</script>");
                    txtTenLoaiTin.Focus();
                }
                else
                {
                    lt.MaLoaiTin = txtMaLoaiTin.Text;
                    lt.MaTheLoai = ddlMaTheLoai.SelectedValue;
                    lt.TenLoaiTin = txtTenLoaiTin.Text;
                    Response.Write("<script language=''javascript>alert('" + " Thêm thành công! " + "')</script>");

                    ltbll.ThemLoaiTin(lt);
                    Page_Load(sender, e);

                    txtMaLoaiTin.Text = "";
                    txtTenLoaiTin.Text = "";
                }
            }
        }

        protected void btnSua_Click(object sender, EventArgs e)
        {
            LoaiTin lt = new LoaiTin();
            if (txtMaLoaiTin.Text == "")
            {
                Response.Write("<script language='javascript'>alert('" + "Bạn chưa nhập mã loại tin!" + "')</script>");
                txtMaLoaiTin.Focus();
            }
            else
            {
                if (txtTenLoaiTin.Text == "")
                {
                    Response.Write("<script language='javascript'>alert('" + "Bạn chưa nhập tên loại tin!" + "')</script>");
                    txtTenLoaiTin.Focus();
                }
                else
                {
                    lt.MaLoaiTin = txtMaLoaiTin.Text;
                    lt.MaTheLoai = ddlMaTheLoai.SelectedValue;
                    lt.TenLoaiTin = txtTenLoaiTin.Text;
                    Response.Write("<script language=''javascript>alert('" + " Sửa thành công! " + "')</script>");

                    ltbll.SuaLoaiTin(lt);
                    Page_Load(sender, e);

                    txtMaLoaiTin.Text = "";
                    txtTenLoaiTin.Text = "";
                }
            }
        }

        protected void btnXoa_Click(object sender, EventArgs e)
        {
            ltbll.XoaLoaiTin(txtMaLoaiTin.Text);
            Response.Write("<script language=''javascript>alert('" + " Xóa thành công! " + "')</script>");
            Page_Load(sender, e);

            txtMaLoaiTin.Text = "";
            txtTenLoaiTin.Text = "";
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int chisodong = GridView1.SelectedIndex;
            {
                txtMaLoaiTin.Text = HttpUtility.HtmlDecode((string)(GridView1.Rows[chisodong].Cells[0].Text.ToString()));
                txtTenLoaiTin.Text = HttpUtility.HtmlDecode((string)(GridView1.Rows[chisodong].Cells[1].Text.ToString()));
                ddlMaTheLoai.SelectedValue = HttpUtility.HtmlDecode((string)(GridView1.Rows[chisodong].Cells[2].Text.ToString()));
            }
        }
    }
}