using System;
using System.Collections.Generic;
using System.Text;

namespace QUANLYKHACHSAN.BusinessObject
{
    public class ChiTietHoaDonInFo
    {
        private HoaDonInFo m_MaHoaDon;
        public HoaDonInFo MaHoaDon
        {
            get { return m_MaHoaDon; }
            set { m_MaHoaDon = value; }
        }

        private HoaDonInFo m_MaKhachHang;
        public HoaDonInFo MaKhachHang
        {
            get { return m_MaKhachHang; }
            set { m_MaKhachHang = value; }
        }

        private PhongInFo m_MaPhong;
        public PhongInFo MaPhong
        {
            get { return m_MaPhong; }
            set { m_MaPhong = value; }
        }

        private float m_TienPhong;
        public float TienPhong
        {
            get { return m_TienPhong; }
            set { m_TienPhong = value; }
        }

        private DanhSachSuDungDichVuInFo m_MaDichVu;
        public DanhSachSuDungDichVuInFo MaDichVu
        {
            get { return m_MaDichVu; }
            set { m_MaDichVu = value; }
        }

        private float m_PhuThu;
        public float PhuThu
        {
            get { return m_PhuThu; }
            set { m_PhuThu = value; }
        }

        private float m_TienDichVu;
        public float TienDichVu
        {
            get { return m_TienDichVu; }
            set { m_TienDichVu = value; }
        }

        private float m_GiamGiaKH;
        public float GiamGiaKH
        {
            get { return m_GiamGiaKH; }
            set { m_GiamGiaKH = value; }
        }

        private float m_ThanhTien;
        public float ThanhTien
        {
            get { return m_ThanhTien; }
            set { m_ThanhTien = value; }
        }

        private int m_SoNgay;
        public int SoNgay
        {
            get { return m_SoNgay; }
            set { m_SoNgay = value; }
        }

        private ChinhSachTraInFo m_MaChinhSach;
        public ChinhSachTraInFo MaChinhSach
        {
            get { return m_MaChinhSach; }
            set { m_MaChinhSach = value; }
        }

        private string m_HinhThucThanhToan;
        public string HinhThucThanhToan
        {
            get { return m_HinhThucThanhToan; }
            set { m_HinhThucThanhToan = value; }
        }
    }
}
