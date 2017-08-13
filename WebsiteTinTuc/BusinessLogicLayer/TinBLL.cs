using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebsiteTinTuc.DataAccessLayer;
using WebsiteTinTuc.Entities;

namespace WebsiteTinTuc.BusinessLogicLayer
{
    public class TinBLL
    {
        TinDAL tdal = new TinDAL();

        public void ThemTin(Tin t)
        {
            tdal.ThemTin(t);
        }

        public void SuaTin(Tin t)
        {
            tdal.SuaTin(t);
        }

        public void XoaTin(string MaTin)
        {
            tdal.XoaTin(MaTin);
        }

        public List<Tin> AllTin()
        {
            TinDAL BangTin = new TinDAL();
            return BangTin.AllTin();
        }

        public List<Tin> TinNoiBat()
        {
            return tdal.TinNoiBat();
        }

        public List<Tin> TinLienQuan()
        {
            return tdal.TinLienQuan();
        }

        public List<Tin> TinPhu()
        {
            return tdal.TinPhu();
        }

        public List<Tin> TimKiem(string NoiDung)
        {
            TinDAL t = new TinDAL();
            return t.TimKiem(NoiDung);
        }

        public List<Tin> timkiem(string MaTin)
        {
            TinDAL t = new TinDAL();
            return t.timkiem(MaTin);
        }

        public List<Tin> LayMaLoaiTin(string MaLoaiTin)
        {
            TinDAL t = new TinDAL();
            return t.LayMaLoaiTin(MaLoaiTin);
        }

        public List<Tin> LayMaLoaiTin1(string MaLoaiTin)
        {
            TinDAL t = new TinDAL();
            return t.LayMaLoaiTin1(MaLoaiTin);
        }

        public List<Tin> LayMaLoaiTin1benphai(string MaLoaiTin)
        {
            TinDAL t = new TinDAL();
            return t.LayMaLoaiTin1benphai(MaLoaiTin);
        }

        public List<Tin> LayMaLoaiTin2(string MaLoaiTin)
        {
            TinDAL t = new TinDAL();
            return t.LayMaLoaiTin2(MaLoaiTin);
        }

        public List<Tin> LayMaLoaiTin2benphai(string MaLoaiTin)
        {
            TinDAL t = new TinDAL();
            return t.LayMaLoaiTin2benphai(MaLoaiTin);
        }

        public List<Tin> LayMaLoaiTin3(string MaLoaiTin)
        {
            TinDAL t = new TinDAL();
            return t.LayMaLoaiTin3(MaLoaiTin);
        }

        public List<Tin> LayMaLoaiTin3benphai(string MaLoaiTin)
        {
            TinDAL t = new TinDAL();
            return t.LayMaLoaiTin3benphai(MaLoaiTin);
        }

        public List<Tin> LayMaLoaiTin4(string MaLoaiTin)
        {
            TinDAL t = new TinDAL();
            return t.LayMaLoaiTin4(MaLoaiTin);
        }

        public List<Tin> LayMaLoaiTin4benphai(string MaLoaiTin)
        {
            TinDAL t = new TinDAL();
            return t.LayMaLoaiTin4benphai(MaLoaiTin);
        }

        public List<Tin> LayMaLoaiTin5(string MaLoaiTin)
        {
            TinDAL t = new TinDAL();
            return t.LayMaLoaiTin5(MaLoaiTin);
        }

        public List<Tin> LayMaLoaiTin5benphai(string MaLoaiTin)
        {
            TinDAL t = new TinDAL();
            return t.LayMaLoaiTin5benphai(MaLoaiTin);
        }

        public List<Tin> LayMaLoaiTin6(string MaLoaiTin)
        {
            TinDAL t = new TinDAL();
            return t.LayMaLoaiTin6(MaLoaiTin);
        }

        public List<Tin> LayMaLoaiTin6benphai(string MaLoaiTin)
        {
            TinDAL t = new TinDAL();
            return t.LayMaLoaiTin6benphai(MaLoaiTin);
        }

        public List<Tin> LayMaLoaiTin7(string MaLoaiTin)
        {
            TinDAL t = new TinDAL();
            return t.LayMaLoaiTin7(MaLoaiTin);
        }

        public List<Tin> LayMaLoaiTin7benphai(string MaLoaiTin)
        {
            TinDAL t = new TinDAL();
            return t.LayMaLoaiTin7benphai(MaLoaiTin);
        }

        public List<Tin> LayMaLoaiTin8(string MaLoaiTin)
        {
            TinDAL t = new TinDAL();
            return t.LayMaLoaiTin8(MaLoaiTin);
        }

        public List<Tin> LayMaLoaiTin8benphai(string MaLoaiTin)
        {
            TinDAL t = new TinDAL();
            return t.LayMaLoaiTin8benphai(MaLoaiTin);
        }

        public List<Tin> LayMaLoaiTin9(string MaLoaiTin)
        {
            TinDAL t = new TinDAL();
            return t.LayMaLoaiTin9(MaLoaiTin);
        }

        public List<Tin> LayMaLoaiTin9benphai(string MaLoaiTin)
        {
            TinDAL t = new TinDAL();
            return t.LayMaLoaiTin9benphai(MaLoaiTin);
        }
        
        public List<Tin> LayMaTin(string MaTin)
        {
            TinDAL t = new TinDAL();
            return t.LayMaTin(MaTin);
        }

    }
}