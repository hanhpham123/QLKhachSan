using System;
using System.Collections.Generic;
using System.Text;

namespace QUANLYKHACHSAN.BusinessObject
{
    public class LoaiKhachHangInFo
    {
        private string m_MaLoaiKhachHang;
        public string MaLoaiKhachHang
        {
            get { return m_MaLoaiKhachHang; }
            set { m_MaLoaiKhachHang = value; }
        }

        private string m_TenLoaiKhachHang;
        public string TenLoaiKhachHang
        {
            get { return m_TenLoaiKhachHang; }
            set { m_TenLoaiKhachHang = value; }
        }

        private string m_GhiChu;
        public string GhiChu
        {
            get { return m_GhiChu; }
            set { m_GhiChu = value; }
        }
    }
}
