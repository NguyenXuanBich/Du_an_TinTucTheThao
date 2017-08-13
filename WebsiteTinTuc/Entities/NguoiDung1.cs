using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebsiteTinTuc.Entities
{
    public class NguoiDung1
    {
        private string manguoidung;
        private string hoten;
        private string taikhoan;
        private string matkhau;
        private string diachi;
        private string email;
        private string gioitinh;
        private string ngaysinh;
        private string ngaydangky;
        private int vaitro;
        public string MaNguoiDung
        {
            get { return manguoidung; }
            set
            {
                if (value != "")
                    manguoidung = value;
            }
        }

        public string HoTen
        {
            get { return hoten; }
            set
            {
                if (value != "")
                    hoten = value;
            }
        }

        public string TaiKhoan
        {
            get { return taikhoan; }
            set { taikhoan = value; }
        }

        public string MatKhau
        {
            get { return matkhau; }
            set { matkhau = value; }
        }

        public string DiaChi
        {
            get { return diachi; }
            set { diachi = value; }
        }

        public string Email
        {
            get { return email; }
            set { email = value; }
        }

        public string GioiTinh
        {
            get { return gioitinh; }
            set { gioitinh = value; }
        }

        public string NgaySinh
        {
            get { return ngaysinh; }
            set { ngaysinh = value; }
        }

        public string NgayDangKy
        {
            get { return ngaydangky; }
            set { ngaydangky = value; }
        }

        public int VaiTro
        {
            get { return vaitro; }
            set { vaitro = value; }
        }

        public NguoiDung1() { }

        public NguoiDung1(string manguoidung, string hoten, string taikhoan, string matkhau, string diachi, string email, string gioitinh, string ngaysinh, string ngaydangky, int vaitro)
        {
            this.manguoidung = manguoidung;
            this.hoten = hoten;
            this.taikhoan = taikhoan;
            this.matkhau = matkhau;
            this.diachi = diachi;
            this.email = email;
            this.gioitinh = gioitinh;
            this.ngaysinh = ngaysinh;
            this.ngaydangky = ngaydangky;
            this.vaitro = vaitro;
        }
    }
}