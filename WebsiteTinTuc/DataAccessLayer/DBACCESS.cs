using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace WebsiteTinTuc.DataAccessLayer
{
    public class DBACCESS
    {
        private string strConn;
        private SqlConnection conn;

        public DBACCESS()
        {
            this.strConn = System.Configuration.ConfigurationManager.AppSettings["strConn"];
        }

        public void open()
        {
            this.conn = new SqlConnection(this.strConn);
            conn.Open();
        }

        public void close()
        {
            this.conn.Close();
        }

        public void ExcuteQuery(string sql)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = this.conn;
            cmd.CommandText = sql;
            cmd.CommandType = CommandType.Text;
            cmd.ExecuteNonQuery();
        }

        public int ExcuteQueryrows(string sql)
        {

            SqlConnection sqlcnn = new SqlConnection(@"Data Source=.;Initial Catalog=TinTuc;Integrated Security=True");
            sqlcnn.Open();
            SqlCommand cmd = new SqlCommand(sql, sqlcnn);
            cmd.ExecuteNonQuery();
            if (cmd.ExecuteReader().HasRows)
            {
                return 1;
            }
            else
                return 0;
        }

        public DataTable getTable(string sql)
        {
            SqlDataAdapter da = new SqlDataAdapter();
            DataTable dt = new DataTable();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = this.conn;
            cmd.CommandText = sql;
            cmd.CommandType = CommandType.Text;
            da.SelectCommand = cmd;
            da.Fill(dt);
            return dt;
        }
        public string GetValue(string sql)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = this.conn;
            cmd.CommandText = sql;
            cmd.CommandType = CommandType.Text;
            string kq = cmd.ExecuteScalar().ToString();
            return kq;

        }

        public bool KiemTraMaTrung(string sql)
        {
            SqlCommand cmd = new SqlCommand();
            open();
            bool kt = false;
            int sobanghi = 0;
            cmd = new SqlCommand(sql, conn);
            sobanghi = (int)cmd.ExecuteScalar();
            if (sobanghi > 0)
            {
                kt = true;
            }
            close();
            return kt;
        }

        private SqlConnection GetConnect()
        {
            SqlConnection con = new SqlConnection(strConn);
            if (con.State == ConnectionState.Open)
                con.Close();
            return con;
        }

        public int ExecScalar(string query, params SqlParameter[] values)
        {
            SqlCommand cmd = new SqlCommand(query);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddRange(values);

            using (SqlConnection con = GetConnect())
            {
                cmd.Connection = con;
                con.Open();
                return (int)cmd.ExecuteScalar();
            }
        }
    }
}