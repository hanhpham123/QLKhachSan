using System;
using System.Collections.Generic;
using System.Text;

namespace QUANLYKHACHSAN.BusinessObject
{
    public class KhachHangInFo
    {
        private string m_MaKhachHang;
        public string MaKhachHang
        {
            get { return m_MaKhachHang; }
            set { m_MaKhachHang = value; }
        }

        private string m_TenKhachHang;
        public string TenKhachHang
        {
            get { return m_TenKhachHang; }
            set { m_TenKhachHang = value; }
        }       

        private string m_CMND;
        public string CMND
        {
            get { return m_CMND; }
            set { m_CMND = value; }
        }

        private string m_QuocTich;
        public string QuocTich
        {
            get { return m_QuocTich; }
            set { m_QuocTich = value; }
        }

        private string m_DiaChi;
        public string DiaChi
        {
            get { return m_DiaChi; }
            set { m_DiaChi = value; }
        }

        private int m_DienThoai;
        public int DienThoai
        {
            get { return m_DienThoai; }
            set { m_DienThoai = value; }
        }

        private string m_GioiTinh;
        public string GioiTinh
        {
            get { return m_GioiTinh; }
            set { m_GioiTinh = value; }
        }
    }
}
