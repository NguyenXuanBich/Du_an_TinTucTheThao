using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebsiteTinTuc.Entities
{
    public class QuangCao
    {
        private string maquangcao;
        private string tenquangcao;
        private string hinhanh;

        public string MaQC
        {
            get { return maquangcao; }
            set { maquangcao = value; }
        }

        public string TenQC
        {
            get { return tenquangcao; }
            set { tenquangcao = value; }
        }

        public string HinhAnh
        {
            get { return hinhanh; }
            set { hinhanh = value; }
        }

        public QuangCao() { }

        public QuangCao(string maquangcao, string tenquangcao, string hinhanh)
        {
            this.maquangcao = maquangcao;
            this.tenquangcao = tenquangcao;
            this.hinhanh = hinhanh;
        }
    }
}