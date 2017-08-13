using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using WebsiteTinTuc.Entities;

namespace WebsiteTinTuc.DataAccessLayer
{
    public class BinhLuanDAL
    {
        private DBACCESS db;
        public List<BinhLuan> DanhSachBinhLuan;

        public void ThemBinhLuan(BinhLuan bl)
        {
            string sql = "insert into BinhLuan values('" + bl.MaBinhLuan + "',N'" + bl.NoiDung + "','" + bl.Ngay + "','" + bl.MaTin + "','" + bl.MaNguoiDung + "')";
            db = new DBACCESS();
            db.open();
            db.ExcuteQuery(sql);
            db.close();
        }

        public void SuaBinhLuan(BinhLuan bl)
        {
            string sql = "update BinhLuan set NoiDung=N'" + bl.NoiDung + "',Ngay='" + bl.Ngay + "',MaTin='" + bl.MaTin + "',MaNguoiDung='" + bl.MaNguoiDung + "' where MaBinhLuan='" + bl.MaBinhLuan + "'";
            db = new DBACCESS();
            db.open();
            db.ExcuteQuery(sql);
            db.close();
        }

        public void XoaBinhLuan(string MaBinhLuan)
        {
            string sql = "delete BinhLuan where MaBinhLuan='" + MaBinhLuan + "'";
            db = new DBACCESS();
            db.open();
            db.ExcuteQuery(sql);
            db.close();
        }

        public List<BinhLuan> AllBinhLuan()
        {
            string sql = "select * from BinhLuan";
            db = new DBACCESS();
            db.open();
            DataTable dt = db.getTable(sql);
            db.close();
            List<BinhLuan> ds = new List<BinhLuan>();
            foreach (DataRow dr in dt.Rows)
            {
                BinhLuan bl = new BinhLuan();
                bl.MaBinhLuan = dr[0].ToString();
                bl.NoiDung = dr[1].ToString();
                bl.Ngay = dr[2].ToString();
                bl.MaTin = dr[3].ToString();
                bl.MaNguoiDung = dr[4].ToString();
                ds.Add(bl);
            }
            this.DanhSachBinhLuan = ds;
            return ds;
        }

        public List<BinhLuan> LayBinhLuanTheoMaTin(string MaTin)
        {
            string sql = "select t.*,n.HoTen from BinhLuan t,NguoiDung n where MaTin=" + MaTin + " and t.MaNguoiDung=n.MaNguoiDung";
            db = new DBACCESS();
            db.open();
            DataTable dt = db.getTable(sql);
            db.close();
            List<BinhLuan> ds = new List<BinhLuan>();
            foreach(DataRow dr in dt.Rows)
            {
                BinhLuan bl = new BinhLuan();
                bl.MaBinhLuan = dr[0].ToString();
                bl.NoiDung = dr[1].ToString();
                bl.Ngay = dr[2].ToString();
                bl.MaTin = dr[3].ToString();
                bl.MaNguoiDung = dr[4].ToString();
                ds.Add(bl);
            }
            this.DanhSachBinhLuan = ds;
            return ds;
        }

        public List<BinhLuan> LaySoBinhLuanTheoTin(string MaTin)
        {
            string sql = "select * from BinhLuan where MaTin=" + MaTin + "";
            db = new DBACCESS();
            db.open();
            DataTable dt = db.getTable(sql);
            db.close();
            List<BinhLuan> ds = new List<BinhLuan>();
            foreach (DataRow dr in dt.Rows)
            {
                BinhLuan bl = new BinhLuan();
                bl.MaBinhLuan = dr[0].ToString();
                bl.NoiDung = dr[1].ToString();
                bl.Ngay = dr[2].ToString();
                bl.MaTin = dr[3].ToString();
                bl.MaNguoiDung = dr[4].ToString();
                ds.Add(bl);
            }
            this.DanhSachBinhLuan = ds;
            return ds;
        }
    }
}