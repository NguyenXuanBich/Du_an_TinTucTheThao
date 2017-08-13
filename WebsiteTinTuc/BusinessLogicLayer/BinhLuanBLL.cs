using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebsiteTinTuc.DataAccessLayer;
using WebsiteTinTuc.Entities;


namespace WebsiteTinTuc.BusinessLogicLayer
{
    public class BinhLuanBLL
    {
        BinhLuanDAL bldal = new BinhLuanDAL();

        public void ThemBinhLuan(BinhLuan bl)
        {
            bldal.ThemBinhLuan(bl);
        }

        public void SuaBinhLuan(BinhLuan bl)
        {
            bldal.SuaBinhLuan(bl);
        }

        public void XoaBinhLuan(string MaBinhLuan)
        {
            bldal.XoaBinhLuan(MaBinhLuan);
        }

        public List<BinhLuan> AllBinhLuan()
        {
            BinhLuanDAL BangBinhLuan = new BinhLuanDAL();
            return BangBinhLuan.AllBinhLuan();
        }
    }
}