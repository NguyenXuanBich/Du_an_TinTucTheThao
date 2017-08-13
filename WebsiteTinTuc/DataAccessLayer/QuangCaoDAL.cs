using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using WebsiteTinTuc.Entities;

namespace WebsiteTinTuc.DataAccessLayer
{
    public class QuangCaoDAL
    {
        private DBACCESS db;
        public List<QuangCao> DanhSachLoaiTin;

        public void ThemQuangCao(QuangCao qc)
        {
            string sql = "insert into QuangCao values('" + qc.MaQC + "',N'" + qc.TenQC + "','" + qc.HinhAnh + "')";
            db = new DBACCESS();
            db.open();
            db.ExcuteQuery(sql);
            db.close();
        }

        public void SuaQuangCao(QuangCao qc)
        {
            string sql = "update QuangCao set TenQC=N'" + qc.TenQC + "',HinhAnh='" + qc.HinhAnh + "' where MaQC='" + qc.MaQC + "'";
            db = new DBACCESS();
            db.open();
            db.ExcuteQuery(sql);
            db.close();
        }

        public void XoaQuangCao(string MaQC)
        {
            string sql = "delete QuangCao where MaQuangCao='" + MaQC + "'";
            db = new DBACCESS();
            db.open();
            db.ExcuteQuery(sql);
            db.close();
        }

        public List<QuangCao> AllQuangCao()
        {
            string sql = "select * from QuangCao";
            db = new DBACCESS();
            db.open();
            DataTable dt = db.getTable(sql);
            db.close();
            List<QuangCao> ds = new List<QuangCao>();
            foreach (DataRow dr in dt.Rows)
            {
                QuangCao qc = new QuangCao();
                qc.MaQC = dr[0].ToString();
                qc.MaQC = dr[1].ToString();
                qc.HinhAnh = dr[2].ToString();
                ds.Add(qc);
            }
            this.DanhSachLoaiTin = ds;
            return ds;
        }
    }
}