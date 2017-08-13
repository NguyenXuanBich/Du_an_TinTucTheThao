using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebsiteTinTuc.Entities
{
    public class Tin
    {
        private string matin;
        private string tieude;
        private string tomtat;
        private string ngaydang;
        private string noidung;
        private string hinhanh;
        private string solanxem;
        private string trangthai;
        private string maloaitin;

        public string MaTin
        {
            get { return matin; }
            set { matin = value; }
        }

        public string TieuDe
        {
            get { return tieude; }
            set { tieude = value; }
        }

        public string TomTat
        {
            get { return tomtat; }
            set { tomtat = value; }
        }

        public string NgayDang
        {
            get { return ngaydang; }
            set { ngaydang = value; }
        }

        public string NoiDung
        {
            get { return noidung; }
            set { noidung = value; }
        }

        public string HinhAnh
        {
            get { return hinhanh; }
            set { hinhanh = value; }
        }

        public string SoLanXem
        {
            get { return solanxem; }
            set { solanxem = value; }
        }

        public string TrangThai
        {
            get { return trangthai; }
            set { trangthai = value; }
        }

        public string MaLoaiTin
        {
            get { return maloaitin; }
            set { maloaitin = value; }
        }

        public Tin() { }

        public Tin(string matin, string tieude, string tomtat, string ngaydang, string noidung, string hinhanh, string solanxem, string trangthai, string maloaitin)
        {
            this.matin = matin;
            this.tieude = tieude;
            this.tomtat = tomtat;
            this.ngaydang = ngaydang;
            this.noidung = noidung;
            this.hinhanh = hinhanh;
            this.solanxem = solanxem;
            this.trangthai = trangthai;
            this.maloaitin = maloaitin;
        }
    }
}