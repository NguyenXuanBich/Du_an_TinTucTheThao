using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebsiteTinTuc.DataAccessLayer;
using WebsiteTinTuc.Entities;

namespace WebsiteTinTuc.BusinessLogicLayer
{
    public class LoaiTinBLL
    {
        LoaiTinDAL ltdal = new LoaiTinDAL();

        public void ThemLoaiTin(LoaiTin lt)
        {
            ltdal.ThemLoaiTin(lt);
        }

        public void SuaLoaiTin(LoaiTin lt)
        {
            ltdal.SuaLoaiTin(lt);
        }

        public void XoaLoaiTin(string MaLoaiTin)
        {
            ltdal.XoaLoaiTin(MaLoaiTin);
        }

        public List<LoaiTin> AllLoaiTin()
        {
            LoaiTinDAL ltdal = new LoaiTinDAL();
            return ltdal.AllLoaiTin();
        }
    }
}