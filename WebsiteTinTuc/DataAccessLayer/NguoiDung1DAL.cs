using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using WebsiteTinTuc.Entities;

namespace WebsiteTinTuc.DataAccessLayer
{
    public class NguoiDung1DAL
    {
        private DBACCESS db;
        public List<NguoiDung1> DanhSachNguoiDung;

        public int DangNhap(string taiKhoan, string matKhau)
        {
            string sql = "select * from NguoiDung Where TaiKhoan='" + taiKhoan + "' And MatKhau='" + matKhau + "'";
            db = new DBACCESS();
            db.open();
            DataTable dt = db.getTable(sql);
            db.close();

            if (dt.Rows.Count > 0)
            {
                return int.Parse(dt.Rows[0][9].ToString());
            }
            return -1;
        }

        public void ThemNguoiDung(NguoiDung1 nd)
        {
            string sql = "insert into NguoiDung values(N'" + nd.HoTen + "','" + nd.TaiKhoan + "','" + nd.MatKhau + "',N'" + nd.DiaChi + "',N'" + nd.Email + "','" + nd.GioiTinh + "','" + nd.NgaySinh + "','" + nd.NgayDangKy + "','" + nd.VaiTro + "')";
            db = new DBACCESS();
            db.open();
            db.ExcuteQuery(sql);
            db.close();
        }

        public void SuaNguoiDung(NguoiDung1 nd)
        {
            string sql = "update NguoiDung set HoTen=N'" + nd.HoTen + "','" + nd.TaiKhoan + "','" + nd.MatKhau + "',N'" + nd.DiaChi + "',N'" + nd.Email + "','" + nd.GioiTinh + "','" + nd.NgaySinh + "','" + nd.NgayDangKy + "' where MaNguoiDung='" + nd.MaNguoiDung + "'";
            db = new DBACCESS();
            db.open();
            db.ExcuteQuery(sql);
            db.close();
        }

        public void XoaNguoiDung(string MaNguoiDung)
        {
            string sql = "delete NguoiDung where MaNguoiDung='" + MaNguoiDung + "'";
            db = new DBACCESS();
            db.open();
            db.ExcuteQuery(sql);
            db.close();
        }

        public List<NguoiDung1> AllNguoiDung()
        {
            string sql = "select * from NguoiDung";
            db = new DBACCESS();
            db.open();
            DataTable dt = db.getTable(sql);
            db.close();
            List<NguoiDung1> ds = new List<NguoiDung1>();
            foreach (DataRow dr in dt.Rows)
            {
                NguoiDung1 nd = new NguoiDung1();
                nd.MaNguoiDung = dr[0].ToString();
                nd.HoTen = dr[1].ToString();
                nd.TaiKhoan = dr[2].ToString();
                nd.MatKhau = dr[3].ToString();
                nd.DiaChi = dr[4].ToString();
                nd.Email = dr[5].ToString();
                nd.GioiTinh = dr[6].ToString();
                nd.NgaySinh = dr[7].ToString();
                nd.NgayDangKy = dr[8].ToString();
                nd.VaiTro = int.Parse(dr[9].ToString());
                ds.Add(nd);
            }
            this.DanhSachNguoiDung = ds;
            return ds;
        }
    }
}