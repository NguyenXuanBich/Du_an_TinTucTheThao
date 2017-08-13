using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebsiteTinTuc.DataAccessLayer;
using WebsiteTinTuc.Entities;

namespace WebsiteTinTuc.BusinessLogicLayer
{
    public class QuangCaoBLL
    {
        QuangCaoDAL bldal = new QuangCaoDAL();

        public void ThemQuangCao(QuangCao qc)
        {
            bldal.ThemQuangCao(qc);
        }

        public void SuaQuangCao(QuangCao qc)
        {
            bldal.SuaQuangCao(qc);
        }

        public void XoaQuangCao(string MaQC)
        {
            bldal.XoaQuangCao(MaQC);
        }

        public List<QuangCao> AllQuangCao()
        {
            QuangCaoDAL BangQuangCao = new QuangCaoDAL();
            return BangQuangCao.AllQuangCao();
        }
    }
}