using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebsiteTinTuc.BusinessLogicLayer;
using WebsiteTinTuc.DataAccessLayer;
using WebsiteTinTuc.Entities;

namespace WebsiteTinTuc.Presentation.NguoiDung
{
    public partial class TimKiem : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string Moithu = Request.QueryString["moithu"].ToString();
            List<Tin> ds = new List<Tin>();
            TinBLL tbll = new TinBLL();
            ds = tbll.TimKiem(Moithu);
            this.rpt.DataSource = ds;
            rpt.DataBind();
        }
    }
}