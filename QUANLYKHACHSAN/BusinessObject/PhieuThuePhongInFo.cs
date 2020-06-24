using System;
using System.Collections.Generic;
using System.Text;

namespace QUANLYKHACHSAN.BusinessObject
{
    public class PhieuThuePhongInFo
    {
        private string m_MaPhieuThue;
        public string MaPhieuThue
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
        
        private IList<ChiTietPhieuThuePhongInFo> m_ChiTiet;
        public IList<ChiTietPhieuThuePhongInFo> ChiTiet
        {
            get { return m_ChiTiet; }
            set { m_ChiTiet = value; }
        }
    }
}
