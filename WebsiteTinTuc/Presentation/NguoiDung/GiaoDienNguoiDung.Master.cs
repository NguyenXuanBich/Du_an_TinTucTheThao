using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace WebsiteTinTuc.Presentation.NguoiDung
{
    public partial class GiaoDienNguoiDung : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnTK_Click(object sender, EventArgs e)
        {
            if (txtTK.Text == "")
            {
                Response.Write("<script language='javascript'>alert('" + "Bạn chưa nhập nội dung!" + "')</script>");
                txtTK.Focus();
            }
            else
            {
                string moithu = txtTK.Text;
                Response.Redirect("TimKiem.aspx?moithu=" + moithu);
            }
        }

        protected void Repeater8_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }
    }
}