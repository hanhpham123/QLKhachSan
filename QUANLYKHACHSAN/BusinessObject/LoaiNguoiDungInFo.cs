using System;
using System.Collections.Generic;
using System.Text;

namespace QUANLYKHACHSAN.BusinessObject
{
    public class LoaiNguoiDungInFo
    {
        private int m_LoaiNguoiDung;
        public int loaiNguoiDung
        {
            get { return m_LoaiNguoiDung; }
            set { m_LoaiNguoiDung = value; }
        }

        private string m_TenloaiNguoiDung;
        public string TenloaiNguoiDung
        {
            get { return m_TenloaiNguoiDung; }
            set { m_TenloaiNguoiDung = value; }
        }
    }
}
