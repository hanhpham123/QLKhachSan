using System;
using System.Collections.Generic;
using System.Text;

namespace   QUANLYKHACHSAN.BusinessObject
{
    public class DonViInFo
    {
        private string m_MaDonVi;
        public string MaDonVi
        {
            get { return m_MaDonVi; }
            set { m_MaDonVi = value; }
        }

        private string m_TenDonVi;
        public string TenDonVi
        {
            get { return m_TenDonVi; }
            set { m_TenDonVi = value; }
        }
    }
}
