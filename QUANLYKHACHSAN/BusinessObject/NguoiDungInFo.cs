using System;
using System.Collections.Generic;
using System.Text;

namespace QUANLYKHACHSAN.BusinessObject
{
    public class NguoiDungInFo
    {
        private string m_TenDangNhap;
        public string TenDangNhap
        {
            get { return m_TenDangNhap; }
            set { m_TenDangNhap = value; }
        }

        private string m_MatKhau;
        public string MatKhau
        {
            get { return m_MatKhau; }
            set { m_MatKhau = value; }

        }

        private int m_LoaiNguoidung;
        public int LoaiNguoiDung
        {
            get { return m_LoaiNguoidung; }
            set { m_LoaiNguoidung = value; }
        }

        private string m_NguoiDung;
        public string NguoiDung
        {
            get { return m_NguoiDung; }
            set { m_NguoiDung = value; }
        }
        
    }
}
