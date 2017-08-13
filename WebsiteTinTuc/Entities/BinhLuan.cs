using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebsiteTinTuc.Entities
{
    public class BinhLuan
    {
        private string mabinhluan;
        private string noidung;
        private string ngay;
        private string matin;
        private string manguoidung;

        public string MaBinhLuan
        {
            get { return mabinhluan; }
            set { mabinhluan = value; }
        }

        public string NoiDung
        {
            get { return noidung; }
            set { noidung = value; }
        }

        public string Ngay
        {
            get { return ngay; }
            set { ngay = value; }
        }
        public string MaTin
        {
            get { return matin; }
            set { matin = value; }
        }

        public string MaNguoiDung
        {
            get { return manguoidung; }
            set { manguoidung = value; }
        }

        public BinhLuan() { }

        public BinhLuan(string mabinhluan, string noidung, string ngay, string matin, string manguoidung)
        {
            this.mabinhluan = mabinhluan;
            this.noidung = noidung;
            this.ngay = ngay;
            this.matin = matin;
            this.manguoidung = manguoidung;
        }
    }
}