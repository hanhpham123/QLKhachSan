using System;
using System.Collections.Generic;
using System.Text;

namespace QUANLYKHACHSAN.BusinessObject
{
    public class ChiTietPhieuThuePhongInFo
    {
        private string m_STT;
        public string STT
        {
            get { return m_STT; }
            set { m_STT = value; }
        }
        
        private string m_MaPhieuThue;
        public string MaPhieuThue
        {
            get { return m_MaPhieuThue; }
            set { m_MaPhieuThue = value; }
        }

        private string m_MaPhong;
        public string MaPhong
        {
            get { return m_MaPhong; }
            set { m_MaPhong = value; }
        }

        private DateTime m_NgayDangKy;
        public DateTime NgayDangKy
        {
            get { return m_NgayDangKy; }
            set { m_NgayDangKy = value; }
        }

        private DateTime m_NgayNhan;
        public DateTime NgayNhan
        {
            get { return m_NgayNhan; }
            set { m_NgayNhan = value; }
        }
    }
}
