using System;
using System.Collections.Generic;
using System.Text;

namespace QUANLYKHACHSAN.BusinessObject
{
    public class BaoCaoDoanhThuInFo
    {        
        private int m_Thang;
        public int Thang
        {
            get { return m_Thang; }
            set { m_Thang = value; }
        }

        private int m_Nam;
        public int Nam
        {
            get { return m_Nam; }
            set { m_Nam = value; }
        }

        private PhongInFo m_MaPhong;
        public PhongInFo MaPhong
        {
            get { return m_MaPhong; }
            set { m_MaPhong = value; }
        }

        private float m_DoanhThu;
        public float DoanhThu
        {
            get { return m_DoanhThu; }
            set { m_DoanhThu = value; }
        }

        private float m_TyLe;
        public float TyLe
        {
            get { return m_TyLe; }
            set { m_TyLe = value; }
        }        
    }
}
