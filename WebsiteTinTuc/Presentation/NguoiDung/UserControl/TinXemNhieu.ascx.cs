using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebsiteTinTuc.BusinessLogicLayer;
using WebsiteTinTuc.DataAccessLayer;
using WebsiteTinTuc.Entities;

namespace WebsiteTinTuc.Presentation.NguoiDung.UserControl
{
    public partial class TinXemNhieu : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TinBLL tbll = new TinBLL();
            List<Tin> t = new List<Tin>();
            t = tbll.TinPhu();
            Repeater1.DataSource = t;
            Repeater1.DataBind();
        }
    }
}