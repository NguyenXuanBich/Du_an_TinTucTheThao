using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebsiteTinTuc.DataAccessLayer;
using WebsiteTinTuc.Entities;

namespace WebsiteTinTuc.BusinessLogicLayer
{
    public class TheLoaiBLL
    {
        TheLoaiDAL tldal = new TheLoaiDAL();

        public void ThemTheLoai(TheLoai tl)
        {
            tldal.ThemTheLoai(tl);
        }

        public void SuaTheLoai(TheLoai tl)
        {
            tldal.SuaTheLoai(tl);
        }

        public void XoaTheLoai(string MaTheLoai)
        {
            tldal.XoaTheLoai(MaTheLoai);
        }

        public List<TheLoai> AllTheLoai()
        {
            TheLoaiDAL BangTheLoai = new TheLoaiDAL();
            return BangTheLoai.AllTheLoai();
        }
    }
}