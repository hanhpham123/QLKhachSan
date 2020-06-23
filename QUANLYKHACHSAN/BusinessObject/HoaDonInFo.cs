using System;
using System.Collections.Generic;
using System.Text;

namespace QUANLYKHACHSAN.BusinessObject
{
    public class HoaDonInFo
    {
        private string m_MaHoaDon;
        public string MaHoaDon
        {
            get { return m_MaHoaDon; }
            set { m_MaHoaDon = value; }
        }

        private string m_TenNhanVien;
        public string TenNhanVien
        {
            get { return m_TenNhanVien; }
            set { m_TenNhanVien = value; }
        }

        private KhachHangInFo m_TenKhachHang;
        public KhachHangInFo TenKhachHang
        {
            get { return m_TenKhachHang; }
            set { m_TenKhachHang = value; }
        }

        private PhieuNhanPhongInFo m_MaNhanPhong;
        public PhieuNhanPhongInFo MaNhanPhong
        {
            get { return m_MaNhanPhong; }
            set { m_MaNhanPhong = value; }
        }

        private float m_TongTien;
        public float TongTien
        {
            get { return m_TongTien; }
            set { m_TongTien = value; }
        }

        private DateTime m_NgayLap;
        public DateTime NgayLap
        {
            get { return m_NgayLap; }
            set { m_NgayLap = value; }
        }

        private IList<ChiTietHoaDonInFo> m_ChiTiet;
        public IList<ChiTietHoaDonInFo> ChiTiet
        {
            get { return m_ChiTiet; }
            set { m_ChiTiet = value; }
        }
    }
}
