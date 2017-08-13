using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using WebsiteTinTuc.Entities;

namespace WebsiteTinTuc.DataAccessLayer
{
    public class LoaiTinDAL
    {
        private DBACCESS db;
        public List<LoaiTin> DanhSachLoaiTin;

        public void ThemLoaiTin(LoaiTin lt)
        {
            string sql = "insert into LoaiTin values('" + lt.MaLoaiTin + "',N'" + lt.TenLoaiTin + "','" + lt.MaTheLoai + "')";
            db = new DBACCESS();
            db.open();
            db.ExcuteQuery(sql);
            db.close();
        }

        public void SuaLoaiTin(LoaiTin lt)
        {
            string sql = "update LoaiTin set TenLoaiTin=N'" + lt.TenLoaiTin + "',MaTheLoai='" + lt.MaTheLoai + "' where MaLoaiTin='" + lt.MaLoaiTin + "'";
            db = new DBACCESS();
            db.open();
            db.ExcuteQuery(sql);
            db.close();
        }

        public void XoaLoaiTin(string MaLoaiTin)
        {
            string sql = "delete LoaiTin where MaLoaiTin='" + MaLoaiTin + "'";
            db = new DBACCESS();
            db.open();
            db.ExcuteQuery(sql);
            db.close();
        }

        public List<LoaiTin> AllLoaiTin()
        {
            string sql = "select * from LoaiTin";
            db = new DBACCESS();
            db.open();
            DataTable dt = db.getTable(sql);
            db.close();
            List<LoaiTin> ds = new List<LoaiTin>();
            foreach (DataRow dr in dt.Rows)
            {
                LoaiTin lt = new LoaiTin();
                lt.MaLoaiTin = dr[0].ToString();
                lt.MaTheLoai = dr[1].ToString();
                lt.TenLoaiTin = dr[2].ToString();
                ds.Add(lt);
            }
            this.DanhSachLoaiTin = ds;
            return ds;
        }
    }
}