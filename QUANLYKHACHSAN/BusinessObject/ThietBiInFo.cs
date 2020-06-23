using System;
using System.Collections.Generic;
using System.Text;

namespace QUANLYKHACHSAN.BusinessObject
{
    public class ThietBiInFo
    {
        private string m_MaThietBi;
        public string MaThietBi
        {
            get { return m_MaThietBi; }
            set { m_MaThietBi = value; }
        }

        private string m_MaLoaiPhong;
        public string MaLoaiPhong
        {
            get { return m_MaLoaiPhong; }
            set { m_MaLoaiPhong = value; }
        }

        private string m_TenThietBi;
        public string TenThietBi
        {
            get { return m_TenThietBi; }
            set { m_TenThietBi = value; }
        }

        private int m_SoLuong;
        public int SoLuong
        {
            get { return m_SoLuong; }
            set { m_SoLuong = value; }
        }
    }
}
