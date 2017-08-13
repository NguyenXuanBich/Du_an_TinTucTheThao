using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using WebsiteTinTuc.Entities;

namespace WebsiteTinTuc.DataAccessLayer
{
    public class TheLoaiDAL
    {
        private DBACCESS db;
        public List<TheLoai> DanhSachTheLoai;

        public void ThemTheLoai(TheLoai tl)
        {
            string sql = "insert into TheLoai values('" + tl.MaTheLoai + "',N'" + tl.TenTheLoai + "')";
            db = new DBACCESS();
            db.open();
            db.ExcuteQuery(sql);
            db.close();
        }

        public void SuaTheLoai(TheLoai tl)
        {
            string sql = "update TheLoai set TenTheLoai=N'" + tl.TenTheLoai + "' where MaTheLoai='" + tl.MaTheLoai + "'";
            db = new DBACCESS();
            db.open();
            db.ExcuteQuery(sql);
            db.close();
        }

        public void XoaTheLoai(string MaTheLoai)
        {
            string sql = "delete TheLoai where MaTheLoai='" + MaTheLoai + "'";
            db = new DBACCESS();
            db.open();
            db.ExcuteQuery(sql);
            db.close();
        }

        public List<TheLoai> AllTheLoai()
        {
            string sql = "select * from TheLoai";
            db = new DBACCESS();
            db.open();
            DataTable dt = db.getTable(sql);
            db.close();
            List<TheLoai> ds = new List<TheLoai>();
            foreach (DataRow dr in dt.Rows)
            {
                TheLoai tl = new TheLoai();
                tl.MaTheLoai = dr[0].ToString();
                tl.TenTheLoai = dr[1].ToString();
                ds.Add(tl);
            }
            this.DanhSachTheLoai = ds;
            return ds;
        }
    }
}