using System;
using System.Collections.Generic;
using System.Text;

namespace QUANLYKHACHSAN.BusinessObject
{
    public class LoaiPhongInFo
    {
        private string m_MaLoaiPhong;
        public string MaLoaiPhong
        {
            get { return m_MaLoaiPhong; }
            set { m_MaLoaiPhong = value; }
        }

        private string m_TenLoaiPhong;
        public string TenLoaiPhong
        {
            get { return m_TenLoaiPhong; }
            set { m_TenLoaiPhong = value; }
        }

        private float m_DonGia;
        public float DonGia
        {
            get { return m_DonGia; }
            set { m_DonGia = value; }
        }

        private int m_SoNguoiChuan;
        public int SoNguoiChuan
        {
            get { return m_SoNguoiChuan; }
            set { m_SoNguoiChuan = value; }
        }

        private int m_SoNguoiToiDa;
        public int SoNguoiToiDa
        {
            get { return m_SoNguoiToiDa; }
            set { m_SoNguoiToiDa = value; }
        }

        private float m_TyLeTang;
        public float TyLeTang
        {
            get { return m_TyLeTang; }
            set { m_TyLeTang = value; }
        }
    }
}
