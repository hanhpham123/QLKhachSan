using System;
using System.Collections.Generic;
using System.Text;

namespace QUANLYKHACHSAN.BusinessObject
{
    public class PhieuNhanPhongInFo
    {
        private string m_MaNhanPhong;
        public string MaNhanPhong
        {
            get { return m_MaNhanPhong; }
            set { m_MaNhanPhong = value; }
        }

        private PhieuThuePhongInFo m_MaPhieuThue;
        public PhieuThuePhongInFo MaPhieuThue
        {
            get { return m_MaPhieuThue; }
            set { m_MaPhieuThue = value; }
        }

        private KhachHangInFo m_MaKhachHang;
        public KhachHangInFo MaKhachHang
        {
            get { return m_MaKhachHang; }
            set { m_MaKhachHang = value; }
        }

        private IList<ChiTietPhieuNhanPhongInFo> m_ChiTiet;
        public IList<ChiTietPhieuNhanPhongInFo> ChiTiet
        {
            get { return m_ChiTiet; }
            set { m_ChiTiet = value; }
        }
    }
}
