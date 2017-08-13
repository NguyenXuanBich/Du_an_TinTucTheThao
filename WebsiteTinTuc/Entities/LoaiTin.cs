using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebsiteTinTuc.Entities
{
    public class LoaiTin
    {
        private string maloaitin;
        private string matheloai;
        private string tenloaitin;

        public string MaLoaiTin
        {
            get { return maloaitin; }
            set { maloaitin = value; }
        }

        public string MaTheLoai
        {
            get { return matheloai; }
            set { matheloai = value; }
        }

        public string TenLoaiTin
        {
            get { return tenloaitin; }
            set { tenloaitin = value; }
        }

        public LoaiTin() { }

        public LoaiTin(string maloaitin, string matheloai, string tenloaitin)
        {
            this.maloaitin = maloaitin;
            this.matheloai = matheloai;
            this.tenloaitin = tenloaitin;
        }
    }
}