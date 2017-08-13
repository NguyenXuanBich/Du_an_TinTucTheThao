using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using WebsiteTinTuc.Entities;

namespace WebsiteTinTuc.DataAccessLayer
{
    public class TinDAL
    {
        private DBACCESS db;
        public List<Tin> DanhSachTin;

        public void ThemTin(Tin t)
        {
            string sql = "insert into Tin values('" + t.MaTin + "',N'" + t.TieuDe + "',N'" + t.TomTat + "','" + t.NgayDang + "',N'" + t.NoiDung + "','" + t.HinhAnh + "','" + t.SoLanXem + "','" + t.TrangThai + "','" + t.MaLoaiTin + "')";
            db = new DBACCESS();
            db.open();
            db.ExcuteQuery(sql);
            db.close();
        }
        public void SuaTin(Tin t)
        {
            string sql = "update Tin set TieuDe=N'" + t.TieuDe + "',TomTat=N'" + t.TomTat + "',NgayDang='" + t.NgayDang + "',NoiDung=N'" + t.NoiDung + "',HinhAnh='" + t.HinhAnh + "',SoLanXem='" + t.SoLanXem + "',TrangThai='" + t.TrangThai + "',MaLoaiTin='" + t.MaLoaiTin + "' where MaTin='" + t.MaTin + "'";
            db = new DBACCESS();
            db.open();
            db.ExcuteQuery(sql);
            db.close();
        }

        public void XoaTin(string MaTin)
        {
            string sql = "delete Tin where MaTin='" + MaTin + "'";
            db = new DBACCESS();
            db.open();
            db.ExcuteQuery(sql);
            db.close();
        }

        public List<Tin> AllTin()
        {
            string sql = "select * from Tin";
            db = new DBACCESS();
            db.open();
            DataTable dt = db.getTable(sql);
            db.close();
            List<Tin> ds = new List<Tin>();
            foreach (DataRow dr in dt.Rows)
            {
                Tin t = new Tin();
                t.MaTin = dr[0].ToString();
                t.TieuDe = dr[1].ToString();
                t.TomTat = dr[2].ToString();
                t.NgayDang = dr[3].ToString();
                t.NoiDung = dr[4].ToString();
                t.HinhAnh = dr[5].ToString();
                t.SoLanXem = dr[6].ToString();
                t.TrangThai = dr[7].ToString();
                
                t.MaLoaiTin = dr[8].ToString();
                ds.Add(t);
            }
            this.DanhSachTin = ds;
            return ds;
        }

        public List<Tin> TinNoiBat()
        {
            string sql = "select top 1 * from Tin order by MaTin desc";
            db = new DBACCESS();
            db.open();
            DataTable dt = db.getTable(sql);
            db.close();
            List<Tin> ds = new List<Tin>();
            foreach (DataRow dr in dt.Rows)
            {
                Tin t = new Tin();
                t.MaTin = dr[0].ToString();
                t.TieuDe = dr[1].ToString();
                t.TomTat = dr[2].ToString();
                t.NgayDang = dr[3].ToString();
                t.NoiDung = dr[4].ToString();
                t.HinhAnh = dr[5].ToString();
                t.SoLanXem = dr[6].ToString();
                t.TrangThai = dr[7].ToString();
                t.MaLoaiTin = dr[8].ToString();
                ds.Add(t);
            }
            this.DanhSachTin = ds;
            return ds;
        }

        public List<Tin> TinLienQuan()
        {
            string sql = "select top 10 * from Tin order by MaTin desc";
            db = new DBACCESS();
            db.open();
            DataTable dt = db.getTable(sql);
            db.close();
            List<Tin> ds = new List<Tin>();
            foreach (DataRow dr in dt.Rows)
            {
                Tin t = new Tin();
                t.MaTin = dr[0].ToString();
                t.TieuDe = dr[1].ToString();
                t.TomTat = dr[2].ToString();
                t.NgayDang = dr[3].ToString();
                t.NoiDung = dr[4].ToString();
                t.HinhAnh = dr[5].ToString();
                t.SoLanXem = dr[6].ToString();
                t.TrangThai = dr[7].ToString();
                t.MaLoaiTin = dr[8].ToString();
                ds.Add(t);
            }
            this.DanhSachTin = ds;
            return ds;
        }

        public List<Tin> TinPhu()
        {
            string sql = "select top 4 * from Tin order by SoLanXem desc";
            db = new DBACCESS();
            db.open();
            DataTable dt = db.getTable(sql);
            db.close();
            List<Tin> ds = new List<Tin>();
            foreach (DataRow dr in dt.Rows)
            {
                Tin t = new Tin();
                t.MaTin = dr[0].ToString();
                t.TieuDe = dr[1].ToString();
                t.TomTat = dr[2].ToString();
                t.NgayDang = dr[3].ToString();
                t.NoiDung = dr[4].ToString();
                t.HinhAnh = dr[5].ToString();
                t.SoLanXem = dr[6].ToString();
                t.TrangThai = dr[7].ToString();
                t.MaLoaiTin = dr[8].ToString();
                ds.Add(t);
            }
            this.DanhSachTin = ds;
            return ds;
        }

        public List<Tin> TimKiem(string NoiDung)
        {
            string sql = "select * from Tin where NoiDung like N'%" + NoiDung + "%' or TieuDe like N'" + NoiDung + "'";
            db = new DBACCESS();
            db.open();
            DataTable dt = db.getTable(sql);
            db.close();
            List<Tin> ds = new List<Tin>();
            foreach (DataRow dr in dt.Rows)
            {
                Tin t = new Tin();
                t.MaTin = dr[0].ToString();
                t.TieuDe = dr[1].ToString();
                t.TomTat = dr[2].ToString();
                t.NgayDang = dr[3].ToString();
                t.NoiDung = dr[4].ToString();
                t.HinhAnh = dr[5].ToString();
                t.SoLanXem = dr[6].ToString();
                t.TrangThai = dr[7].ToString();
                t.MaLoaiTin = dr[8].ToString();
                ds.Add(t);
            }
            this.DanhSachTin = ds;
            return ds;
        }

        public List<Tin> timkiem(string MaTin)
        {
            string sql = "select * from Tin where NoiDung like N'%" + MaTin + "%'";
            db = new DBACCESS();
            db.open();
            DataTable dt = db.getTable(sql);
            db.close();
            List<Tin> ds = new List<Tin>();
            foreach (DataRow dr in dt.Rows)
            {
                Tin t = new Tin();
                t.MaTin = dr[0].ToString();
                t.TieuDe = dr[1].ToString();
                t.TomTat = dr[2].ToString();
                t.NgayDang = dr[3].ToString();
                t.NoiDung = dr[4].ToString();
                t.HinhAnh = dr[5].ToString();
                t.SoLanXem = dr[6].ToString();
                t.TrangThai = dr[7].ToString();
                t.MaLoaiTin = dr[8].ToString();
                ds.Add(t);
            }
            this.DanhSachTin = ds;
            return ds;
        }

        public List<Tin> LayMaLoaiTin(string MaLoaiTin)
        {
            string sql = "select * from Tin where MaLoaiTin='" + MaLoaiTin + "'";
            db = new DBACCESS();
            db.open();
            DataTable dt = db.getTable(sql);
            db.close();
            List<Tin> ds = new List<Tin>();
            foreach (DataRow dr in dt.Rows)
            {
                Tin t = new Tin();
                t.MaTin = dr[0].ToString();
                t.TieuDe = dr[1].ToString();
                t.TomTat = dr[2].ToString();
                t.NgayDang = dr[3].ToString();
                t.NoiDung = dr[4].ToString();
                t.HinhAnh = dr[5].ToString();
                t.SoLanXem = dr[6].ToString();
                t.TrangThai = dr[7].ToString();
                t.MaLoaiTin = dr[8].ToString();
                ds.Add(t);
            }
            this.DanhSachTin = ds;
            return ds;
        }

        public List<Tin> LayMaLoaiTin1(string MaLoaiTin)
        {
            string sql = "select top 1 * from Tin where MaLoaiTin='" + MaLoaiTin + "'";
            db = new DBACCESS();
            db.open();
            DataTable dt = db.getTable(sql);
            db.close();
            List<Tin> ds = new List<Tin>();
            foreach (DataRow dr in dt.Rows)
            {
                Tin t = new Tin();
                t.MaTin = dr[0].ToString();
                t.TieuDe = dr[1].ToString();
                t.TomTat = dr[2].ToString();
                t.NgayDang = dr[3].ToString();
                t.NoiDung = dr[4].ToString();
                t.HinhAnh = dr[5].ToString();
                t.SoLanXem = dr[6].ToString();
                t.TrangThai = dr[7].ToString();
                t.MaLoaiTin = dr[8].ToString();
                ds.Add(t);
            }
            this.DanhSachTin = ds;
            return ds;
        }

        public List<Tin> LayMaLoaiTin1benphai(string MaLoaiTin)
        {
            string sql = "select top 2 * from Tin where MaLoaiTin='" + MaLoaiTin + "'";
            db = new DBACCESS();
            db.open();
            DataTable dt = db.getTable(sql);
            db.close();
            List<Tin> ds = new List<Tin>();
            foreach (DataRow dr in dt.Rows)
            {
                Tin t = new Tin();
                t.MaTin = dr[0].ToString();
                t.TieuDe = dr[1].ToString();
                t.TomTat = dr[2].ToString();
                t.NgayDang = dr[3].ToString();
                t.NoiDung = dr[4].ToString();
                t.HinhAnh = dr[5].ToString();
                t.SoLanXem = dr[6].ToString();
                t.TrangThai = dr[7].ToString();
                t.MaLoaiTin = dr[8].ToString();
                ds.Add(t);
            }
            this.DanhSachTin = ds;
            return ds;
        }

        public List<Tin> LayMaLoaiTin2(string MaLoaiTin)
        {
            string sql = "select top 1 * from Tin where MaLoaiTin='" + MaLoaiTin + "'";
            db = new DBACCESS();
            db.open();
            DataTable dt = db.getTable(sql);
            db.close();
            List<Tin> ds = new List<Tin>();
            foreach (DataRow dr in dt.Rows)
            {
                Tin t = new Tin();
                t.MaTin = dr[0].ToString();
                t.TieuDe = dr[1].ToString();
                t.TomTat = dr[2].ToString();
                t.NgayDang = dr[3].ToString();
                t.NoiDung = dr[4].ToString();
                t.HinhAnh = dr[5].ToString();
                t.SoLanXem = dr[6].ToString();
                t.TrangThai = dr[7].ToString();
                t.MaLoaiTin = dr[8].ToString();
                ds.Add(t);
            }
            this.DanhSachTin = ds;
            return ds;
        }

        public List<Tin> LayMaLoaiTin2benphai(string MaLoaiTin)
        {
            string sql = "select top 2 * from Tin where MaLoaiTin='" + MaLoaiTin + "'";
            db = new DBACCESS();
            db.open();
            DataTable dt = db.getTable(sql);
            db.close();
            List<Tin> ds = new List<Tin>();
            foreach (DataRow dr in dt.Rows)
            {
                Tin t = new Tin();
                t.MaTin = dr[0].ToString();
                t.TieuDe = dr[1].ToString();
                t.TomTat = dr[2].ToString();
                t.NgayDang = dr[3].ToString();
                t.NoiDung = dr[4].ToString();
                t.HinhAnh = dr[5].ToString();
                t.SoLanXem = dr[6].ToString();
                t.TrangThai = dr[7].ToString();
                t.MaLoaiTin = dr[8].ToString();
                ds.Add(t);
            }
            this.DanhSachTin = ds;
            return ds;
        }

        public List<Tin> LayMaLoaiTin3(string MaLoaiTin)
        {
            string sql = "select top 1 * from Tin where MaLoaiTin='" + MaLoaiTin + "'";
            db = new DBACCESS();
            db.open();
            DataTable dt = db.getTable(sql);
            db.close();
            List<Tin> ds = new List<Tin>();
            foreach (DataRow dr in dt.Rows)
            {
                Tin t = new Tin();
                t.MaTin = dr[0].ToString();
                t.TieuDe = dr[1].ToString();
                t.TomTat = dr[2].ToString();
                t.NgayDang = dr[3].ToString();
                t.NoiDung = dr[4].ToString();
                t.HinhAnh = dr[5].ToString();
                t.SoLanXem = dr[6].ToString();
                t.TrangThai = dr[7].ToString();
                t.MaLoaiTin = dr[8].ToString();
                ds.Add(t);
            }
            this.DanhSachTin = ds;
            return ds;
        }

        public List<Tin> LayMaLoaiTin3benphai(string MaLoaiTin)
        {
            string sql = "select top 2 * from Tin where MaLoaiTin='" + MaLoaiTin + "'";
            db = new DBACCESS();
            db.open();
            DataTable dt = db.getTable(sql);
            db.close();
            List<Tin> ds = new List<Tin>();
            foreach (DataRow dr in dt.Rows)
            {
                Tin t = new Tin();
                t.MaTin = dr[0].ToString();
                t.TieuDe = dr[1].ToString();
                t.TomTat = dr[2].ToString();
                t.NgayDang = dr[3].ToString();
                t.NoiDung = dr[4].ToString();
                t.HinhAnh = dr[5].ToString();
                t.SoLanXem = dr[6].ToString();
                t.TrangThai = dr[7].ToString();
                t.MaLoaiTin = dr[8].ToString();
                ds.Add(t);
            }
            this.DanhSachTin = ds;
            return ds;
        }

        public List<Tin> LayMaLoaiTin4(string MaLoaiTin)
        {
            string sql = "select top 1 * from Tin where MaLoaiTin='" + MaLoaiTin + "'";
            db = new DBACCESS();
            db.open();
            DataTable dt = db.getTable(sql);
            db.close();
            List<Tin> ds = new List<Tin>();
            foreach (DataRow dr in dt.Rows)
            {
                Tin t = new Tin();
                t.MaTin = dr[0].ToString();
                t.TieuDe = dr[1].ToString();
                t.TomTat = dr[2].ToString();
                t.NgayDang = dr[3].ToString();
                t.NoiDung = dr[4].ToString();
                t.HinhAnh = dr[5].ToString();
                t.SoLanXem = dr[6].ToString();
                t.TrangThai = dr[7].ToString();
                t.MaLoaiTin = dr[8].ToString();
                ds.Add(t);
            }
            this.DanhSachTin = ds;
            return ds;
        }

        public List<Tin> LayMaLoaiTin4benphai(string MaLoaiTin)
        {
            string sql = "select top 2 * from Tin where MaLoaiTin='" + MaLoaiTin + "'";
            db = new DBACCESS();
            db.open();
            DataTable dt = db.getTable(sql);
            db.close();
            List<Tin> ds = new List<Tin>();
            foreach (DataRow dr in dt.Rows)
            {
                Tin t = new Tin();
                t.MaTin = dr[0].ToString();
                t.TieuDe = dr[1].ToString();
                t.TomTat = dr[2].ToString();
                t.NgayDang = dr[3].ToString();
                t.NoiDung = dr[4].ToString();
                t.HinhAnh = dr[5].ToString();
                t.SoLanXem = dr[6].ToString();
                t.TrangThai = dr[7].ToString();
                t.MaLoaiTin = dr[8].ToString();
                ds.Add(t);
            }
            this.DanhSachTin = ds;
            return ds;
        }

        public List<Tin> LayMaLoaiTin5(string MaLoaiTin)
        {
            string sql = "select top 1 * from Tin where MaLoaiTin='" + MaLoaiTin + "'";
            db = new DBACCESS();
            db.open();
            DataTable dt = db.getTable(sql);
            db.close();
            List<Tin> ds = new List<Tin>();
            foreach (DataRow dr in dt.Rows)
            {
                Tin t = new Tin();
                t.MaTin = dr[0].ToString();
                t.TieuDe = dr[1].ToString();
                t.TomTat = dr[2].ToString();
                t.NgayDang = dr[3].ToString();
                t.NoiDung = dr[4].ToString();
                t.HinhAnh = dr[5].ToString();
                t.SoLanXem = dr[6].ToString();
                t.TrangThai = dr[7].ToString();
                t.MaLoaiTin = dr[8].ToString();
                ds.Add(t);
            }
            this.DanhSachTin = ds;
            return ds;
        }

        public List<Tin> LayMaLoaiTin5benphai(string MaLoaiTin)
        {
            string sql = "select top 2 * from Tin where MaLoaiTin='" + MaLoaiTin + "'";
            db = new DBACCESS();
            db.open();
            DataTable dt = db.getTable(sql);
            db.close();
            List<Tin> ds = new List<Tin>();
            foreach (DataRow dr in dt.Rows)
            {
                Tin t = new Tin();
                t.MaTin = dr[0].ToString();
                t.TieuDe = dr[1].ToString();
                t.TomTat = dr[2].ToString();
                t.NgayDang = dr[3].ToString();
                t.NoiDung = dr[4].ToString();
                t.HinhAnh = dr[5].ToString();
                t.SoLanXem = dr[6].ToString();
                t.TrangThai = dr[7].ToString();
                t.MaLoaiTin = dr[8].ToString();
                ds.Add(t);
            }
            this.DanhSachTin = ds;
            return ds;
        }

        public List<Tin> LayMaLoaiTin6(string MaLoaiTin)
        {
            string sql = "select top 1 * from Tin where MaLoaiTin='" + MaLoaiTin + "'";
            db = new DBACCESS();
            db.open();
            DataTable dt = db.getTable(sql);
            db.close();
            List<Tin> ds = new List<Tin>();
            foreach (DataRow dr in dt.Rows)
            {
                Tin t = new Tin();
                t.MaTin = dr[0].ToString();
                t.TieuDe = dr[1].ToString();
                t.TomTat = dr[2].ToString();
                t.NgayDang = dr[3].ToString();
                t.NoiDung = dr[4].ToString();
                t.HinhAnh = dr[5].ToString();
                t.SoLanXem = dr[6].ToString();
                t.TrangThai = dr[7].ToString();
                t.MaLoaiTin = dr[8].ToString();
                ds.Add(t);
            }
            this.DanhSachTin = ds;
            return ds;
        }

        public List<Tin> LayMaLoaiTin6benphai(string MaLoaiTin)
        {
            string sql = "select top 2 * from Tin where MaLoaiTin='" + MaLoaiTin + "'";
            db = new DBACCESS();
            db.open();
            DataTable dt = db.getTable(sql);
            db.close();
            List<Tin> ds = new List<Tin>();
            foreach (DataRow dr in dt.Rows)
            {
                Tin t = new Tin();
                t.MaTin = dr[0].ToString();
                t.TieuDe = dr[1].ToString();
                t.TomTat = dr[2].ToString();
                t.NgayDang = dr[3].ToString();
                t.NoiDung = dr[4].ToString();
                t.HinhAnh = dr[5].ToString();
                t.SoLanXem = dr[6].ToString();
                t.TrangThai = dr[7].ToString();
                t.MaLoaiTin = dr[8].ToString();
                ds.Add(t);
            }
            this.DanhSachTin = ds;
            return ds;
        }

        public List<Tin> LayMaLoaiTin7(string MaLoaiTin)
        {
            string sql = "select top 1 * from Tin where MaLoaiTin='" + MaLoaiTin + "'";
            db = new DBACCESS();
            db.open();
            DataTable dt = db.getTable(sql);
            db.close();
            List<Tin> ds = new List<Tin>();
            foreach (DataRow dr in dt.Rows)
            {
                Tin t = new Tin();
                t.MaTin = dr[0].ToString();
                t.TieuDe = dr[1].ToString();
                t.TomTat = dr[2].ToString();
                t.NgayDang = dr[3].ToString();
                t.NoiDung = dr[4].ToString();
                t.HinhAnh = dr[5].ToString();
                t.SoLanXem = dr[6].ToString();
                t.TrangThai = dr[7].ToString();
                t.MaLoaiTin = dr[8].ToString();
                ds.Add(t);
            }
            this.DanhSachTin = ds;
            return ds;
        }

        public List<Tin> LayMaLoaiTin7benphai(string MaLoaiTin)
        {
            string sql = "select top 2 * from Tin where MaLoaiTin='" + MaLoaiTin + "'";
            db = new DBACCESS();
            db.open();
            DataTable dt = db.getTable(sql);
            db.close();
            List<Tin> ds = new List<Tin>();
            foreach (DataRow dr in dt.Rows)
            {
                Tin t = new Tin();
                t.MaTin = dr[0].ToString();
                t.TieuDe = dr[1].ToString();
                t.TomTat = dr[2].ToString();
                t.NgayDang = dr[3].ToString();
                t.NoiDung = dr[4].ToString();
                t.HinhAnh = dr[5].ToString();
                t.SoLanXem = dr[6].ToString();
                t.TrangThai = dr[7].ToString();
                t.MaLoaiTin = dr[8].ToString();
                ds.Add(t);
            }
            this.DanhSachTin = ds;
            return ds;
        }

        public List<Tin> LayMaLoaiTin8(string MaLoaiTin)
        {
            string sql = "select top 1 * from Tin where MaLoaiTin='" + MaLoaiTin + "'";
            db = new DBACCESS();
            db.open();
            DataTable dt = db.getTable(sql);
            db.close();
            List<Tin> ds = new List<Tin>();
            foreach (DataRow dr in dt.Rows)
            {
                Tin t = new Tin();
                t.MaTin = dr[0].ToString();
                t.TieuDe = dr[1].ToString();
                t.TomTat = dr[2].ToString();
                t.NgayDang = dr[3].ToString();
                t.NoiDung = dr[4].ToString();
                t.HinhAnh = dr[5].ToString();
                t.SoLanXem = dr[6].ToString();
                t.TrangThai = dr[7].ToString();
                t.MaLoaiTin = dr[8].ToString();
                ds.Add(t);
            }
            this.DanhSachTin = ds;
            return ds;
        }

        public List<Tin> LayMaLoaiTin8benphai(string MaLoaiTin)
        {
            string sql = "select top 2 * from Tin where MaLoaiTin='" + MaLoaiTin + "'";
            db = new DBACCESS();
            db.open();
            DataTable dt = db.getTable(sql);
            db.close();
            List<Tin> ds = new List<Tin>();
            foreach (DataRow dr in dt.Rows)
            {
                Tin t = new Tin();
                t.MaTin = dr[0].ToString();
                t.TieuDe = dr[1].ToString();
                t.TomTat = dr[2].ToString();
                t.NgayDang = dr[3].ToString();
                t.NoiDung = dr[4].ToString();
                t.HinhAnh = dr[5].ToString();
                t.SoLanXem = dr[6].ToString();
                t.TrangThai = dr[7].ToString();
                t.MaLoaiTin = dr[8].ToString();
                ds.Add(t);
            }
            this.DanhSachTin = ds;
            return ds;
        }

        public List<Tin> LayMaLoaiTin9(string MaLoaiTin)
        {
            string sql = "select top 1 * from Tin where MaLoaiTin='" + MaLoaiTin + "'";
            db = new DBACCESS();
            db.open();
            DataTable dt = db.getTable(sql);
            db.close();
            List<Tin> ds = new List<Tin>();
            foreach (DataRow dr in dt.Rows)
            {
                Tin t = new Tin();
                t.MaTin = dr[0].ToString();
                t.TieuDe = dr[1].ToString();
                t.TomTat = dr[2].ToString();
                t.NgayDang = dr[3].ToString();
                t.NoiDung = dr[4].ToString();
                t.HinhAnh = dr[5].ToString();
                t.SoLanXem = dr[6].ToString();
                t.TrangThai = dr[7].ToString();
                t.MaLoaiTin = dr[8].ToString();
                ds.Add(t);
            }
            this.DanhSachTin = ds;
            return ds;
        }

        public List<Tin> LayMaLoaiTin9benphai(string MaLoaiTin)
        {
            string sql = "select top 2 * from Tin where MaLoaiTin='" + MaLoaiTin + "'";
            db = new DBACCESS();
            db.open();
            DataTable dt = db.getTable(sql);
            db.close();
            List<Tin> ds = new List<Tin>();
            foreach (DataRow dr in dt.Rows)
            {
                Tin t = new Tin();
                t.MaTin = dr[0].ToString();
                t.TieuDe = dr[1].ToString();
                t.TomTat = dr[2].ToString();
                t.NgayDang = dr[3].ToString();
                t.NoiDung = dr[4].ToString();
                t.HinhAnh = dr[5].ToString();
                t.SoLanXem = dr[6].ToString();
                t.TrangThai = dr[7].ToString();
                t.MaLoaiTin = dr[8].ToString();
                ds.Add(t);
            }
            this.DanhSachTin = ds;
            return ds;
        }

        public List<Tin> LayMaTin(string MaTin)
        {
            string sql = "select * from Tin where MaTin='" + MaTin + "'";
            db = new DBACCESS();
            db.open();
            DataTable dt = db.getTable(sql);
            db.close();
            List<Tin> ds = new List<Tin>();
            foreach (DataRow dr in dt.Rows)
            {
                Tin t = new Tin();
                t.MaTin = dr[0].ToString();
                t.TieuDe = dr[1].ToString();
                t.TomTat = dr[2].ToString();
                t.NgayDang = dr[3].ToString();
                t.NoiDung = dr[4].ToString();
                t.HinhAnh = dr[5].ToString();
                t.SoLanXem = dr[6].ToString();
                t.TrangThai = dr[7].ToString();
                t.MaLoaiTin = dr[8].ToString();
                ds.Add(t);
            }
            this.DanhSachTin = ds;
            return ds;
        }
    }
}