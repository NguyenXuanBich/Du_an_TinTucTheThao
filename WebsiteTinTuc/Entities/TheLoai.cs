using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebsiteTinTuc.Entities
{
    public class TheLoai
    {
        private string matheloai;
        private string tentheloai;

        public string MaTheLoai
        {
            get { return matheloai; }
            set
            {
                if (value !="")
                    matheloai = value;
            }
        }

        public string TenTheLoai
        {
            get { return tentheloai; }
            set
            {
                if (value != "")
                    tentheloai = value;
            }
        }

        public TheLoai() { }

        public TheLoai(string matheloai, string tentheloai)
        {
            this.matheloai = matheloai;
            this.tentheloai = tentheloai;
        }
    }
}