using System;
using System.Collections.Generic;
using System.Text;

namespace QUANLYKHACHSAN.BusinessObject
{
    public class ChiTietPhieuNhanPhongInFo
    {
        private string m_STT;
        public string STT
        {
            get { return m_STT; }
            set { m_STT = value; }
        }

        private string m_MaNhanPhong;
        public string MaNhanPhong
        {
            get { return m_MaNhanPhong; }
            set { m_MaNhanPhong = value; }
        }

        private string m_MaPhong;
        public string MaPhong
        {
            get { return m_MaPhong; }
            set { m_MaPhong = value; }
        }

        private string m_HoTenKhachHang;
        public string HoTenKhachHang
        {
            get { return m_HoTenKhachHang; }
            set { m_HoTenKhachHang = value; }
        }

        private string m_CMND;
        public string CMND
        {
            get { return m_CMND; }
            set { m_CMND = value; }
        }

        private DateTime m_NgayNhan;
        public DateTime NgayNhan
        {
            get { return m_NgayNhan; }
            set { m_NgayNhan = value; }
        }

        private DateTime m_NgayTraDuKien;
        public DateTime NgayTraDuKien
        {
            get { return m_NgayTraDuKien; }
            set { m_NgayTraDuKien = value; }
        }

        private DateTime m_NgayTraThucTe;
        public DateTime NgayTraThucTe
        {
            get { return m_NgayTraThucTe; }
            set { m_NgayTraThucTe = value; }
        }
    }
}
