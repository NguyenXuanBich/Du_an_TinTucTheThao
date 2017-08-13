using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebsiteTinTuc.DataAccessLayer;
using WebsiteTinTuc.Entities;


namespace WebsiteTinTuc.BusinessLogicLayer
{
    public class NguoiDung1BLL
    {
        NguoiDung1DAL nddal = new NguoiDung1DAL();

        public int DangNhap(string taiKhoan, string matKhau)
        {
            return nddal.DangNhap(taiKhoan, matKhau);
        }
        public void ThemNguoiDung(NguoiDung1 nd)
        {
            nddal.ThemNguoiDung(nd);
        }

        public void SuaNguoiDung(NguoiDung1 nd)
        {
            nddal.SuaNguoiDung(nd);
        }

        public void XoaNguoiDung(string MaNguoiDung)
        {
            nddal.XoaNguoiDung(MaNguoiDung);
        }

        public List<NguoiDung1> AllNguoiDung()
        {
            NguoiDung1DAL BangNguoiDung = new NguoiDung1DAL();
            return BangNguoiDung.AllNguoiDung();
        }
    }
}