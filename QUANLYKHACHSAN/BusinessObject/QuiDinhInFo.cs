using System;
using System.Collections.Generic;
using System.Text;

namespace QUANLYKHACHSAN.BusinessObject
{
    public class QuiDinhInFo
    {
        private string m_TenQuiDinh;
        public string TenQuiDinh
        {
            get { return m_TenQuiDinh; }
            set { m_TenQuiDinh = value; }
        }

        private string m_MoTa;
        public string MoTa
        {
            get { return m_MoTa; }
            set { m_MoTa = value; }
        }
    }
}
