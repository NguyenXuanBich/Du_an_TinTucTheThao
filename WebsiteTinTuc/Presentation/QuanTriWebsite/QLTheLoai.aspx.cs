using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebsiteTinTuc.Entities;
using WebsiteTinTuc.BusinessLogicLayer;
using System.Data;
using System.Data.SqlClient;

namespace WebsiteTinTuc.Presentation.QuanTriWebsite
{
    public partial class QLTheLoai : System.Web.UI.Page
    {
        TheLoaiBLL tlbll = new TheLoaiBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            List<TheLoai> ds = new List<TheLoai>();
            ds = tlbll.AllTheLoai();
            dgvTheLoai.DataSource = ds;
            dgvTheLoai.DataBind();
        }
        protected void btnThem_Click(object sender, EventArgs e)
        {
            TheLoai tl = new TheLoai();
            if (txtMaTheLoai.Text == "")
            {
                Response.Write("<script language='javascript'>alert('" + "Bạn chưa nhập mã thể loại!" + "')</script>");
                txtMaTheLoai.Focus();
            }
            else
            {
                if (txtTenTheLoai.Text == "")
                {
                    Response.Write("<script language='javascript'>alert('" + "Bạn chưa nhập tên thể loại!" + "')</script>");
                    txtTenTheLoai.Focus();
                }
                else
                {
                    tl.MaTheLoai = txtMaTheLoai.Text;
                    tl.TenTheLoai = txtTenTheLoai.Text;
                    Response.Write("<script language=''javascript>alert('" + " Thêm thành công! " + "')</script>");

                    tlbll.ThemTheLoai(tl);
                    Page_Load(sender, e);

                    txtMaTheLoai.Text = "";
                    txtTenTheLoai.Text = "";
                }
            }
        }

        protected void btnSua_Click(object sender, EventArgs e)
        {
            TheLoai tl = new TheLoai();
            if (txtMaTheLoai.Text == "")
            {
                Response.Write("<script language='javascript'>alert('" + "Bạn chưa nhập mã thể loại!" + "')</script>");
                txtMaTheLoai.Focus();
            }
            else
            {
                if (txtTenTheLoai.Text == "")
                {
                    Response.Write("<script language='javascript'>alert('" + "Bạn chưa nhập tên loại tin!" + "')</script>");
                    txtTenTheLoai.Focus();
                }
                else
                {
                    tl.MaTheLoai = txtMaTheLoai.Text;
                    tl.TenTheLoai = txtTenTheLoai.Text;
                    Response.Write("<script language=''javascript>alert('" + " Sửa thành công! " + "')</script>");

                    tlbll.SuaTheLoai(tl);
                    Page_Load(sender, e);

                    txtMaTheLoai.Text = "";
                    txtTenTheLoai.Text = "";
                }
            }
        }

        protected void btnXoa_Click(object sender, EventArgs e)
        {
            tlbll.XoaTheLoai(txtMaTheLoai.Text);
            Page_Load(sender, e);
            Response.Write("<script language=''javascript>alert('" + " Xóa thành công! " + "')</script>");

            txtMaTheLoai.Text = "";
            txtTenTheLoai.Text = "";
        }

        protected void btnTroVe_Click1(object sender, EventArgs e)
        {

        }

        protected void dgvTheLoai_SelectedIndexChanged(object sender, EventArgs e)
        {
            int chisodong = dgvTheLoai.SelectedIndex;
            {
                txtMaTheLoai.Text = HttpUtility.HtmlDecode((string)(dgvTheLoai.Rows[chisodong].Cells[0].Text.ToString()));
                txtTenTheLoai.Text = HttpUtility.HtmlDecode((string)(dgvTheLoai.Rows[chisodong].Cells[1].Text.ToString()));
            }
        }
    }
}