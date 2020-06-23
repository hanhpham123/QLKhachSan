using System;
using System.Collections.Generic;
using System.Text;

namespace QUANLYKHACHSAN.BusinessObject
{
    public class ChinhSachTraInFo
    {
        private string m_MaChinhSachTra;
        public string MaChinhSachTra
        {
            get { return m_MaChinhSachTra; }
            set { m_MaChinhSachTra = value; }
        }

        private string m_ThoiGian;
        public string ThoiGian
        {
            get { return m_ThoiGian; }
            set { m_ThoiGian = value; }
        }

        private float m_PhuThu;
        public float PhuThu
        {
            get { return m_PhuThu; }
            set { m_PhuThu = value; }
        }
    }
}
