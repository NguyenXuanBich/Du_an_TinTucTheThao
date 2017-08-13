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
    public partial class QLBinhLuan : System.Web.UI.Page
    {

        BinhLuanBLL blbll = new BinhLuanBLL();
        TinBLL tbll = new TinBLL();
        NguoiDung1BLL ndbll = new NguoiDung1BLL();

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnTroVe_Click1(object sender, EventArgs e)
        {

        }

        protected void btnXoa_Click(object sender, EventArgs e)
        {
            blbll.XoaBinhLuan(txtMaBL.Text);
            Page_Load(sender, e);
            Response.Write("<script language=''javascript>alert('" + " Xóa thành công! " + "')</script>");

            txtMaBL.Text = "";
            txtNoiDung.Text = "";
        }

        protected void btnHienThi_Click(object sender, EventArgs e)
        {

        }
    }
}