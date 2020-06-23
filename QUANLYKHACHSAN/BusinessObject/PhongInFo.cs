using System;
using System.Drawing;
using System.Collections.Generic;
using System.Text;

namespace QUANLYKHACHSAN.BusinessObject
{
    public class PhongInFo
    {
        private string m_MaPhong;
        public string MaPhong
        {
            get { return m_MaPhong; }
            set { m_MaPhong = value; }
        }

        private string m_MaLoaiPhong;
        public string MaLoaiPhong
        {
            get { return m_MaLoaiPhong; }
            set { m_MaLoaiPhong = value; }
        }

        private LoaiPhongInFo m_MaLoaiPhongML;
        public LoaiPhongInFo MaLoaiPhongML
        {
            get { return m_MaLoaiPhongML; }
            set { m_MaLoaiPhongML = value; }
        }

        private int m_TinhTrangPhong;
        public int TinhTrangPhong
        {
            get { return m_TinhTrangPhong; }
            set { m_TinhTrangPhong = value; }
        }

        private string m_GhiChu;
        public string GhiChu
        {
            get { return m_GhiChu; }
            set { m_GhiChu = value; }
        }


        //public PhongInFo(object giatri)
        //{
        //    this.m_Giatri = giatri;
        //}
        private Color m_MauNen = Color.Pink;
        public Color MauNen
        {
            get { return m_MauNen; }
            set { m_MauNen = value; }
        }
        private Color m_KhungVien = Color.YellowGreen;
        public Color KhungVien
        {
            get { return m_KhungVien; }
            set { m_KhungVien = value; }
        }
        private Color m_MauVien = Color.Red;
        public Color MauVien
        {
            get { return m_MauVien; }
            set { m_MauVien = value; }
        }
        private Color m_MauChu = Color.Blue;
        public Color MauChu
        {
            get { return m_MauChu; }
            set { m_MauChu = value; }
        }
        private object m_Giatri;
        public object Giatri
        {
            get { return m_Giatri; }
            set { m_Giatri = value; }
        }
        private int m_Rong = 100;
        public int Rong
        {
            get { return m_Rong; }
            set { m_Rong = value; }
        }
        private int m_Cao = 20;
        public int Cao
        {
            get { return m_Cao; }
            set { m_Cao = value; }
        }
        private Point m_ViTri;
        public Point ViTri
        {
            get { return m_ViTri; }
            set { m_ViTri = value; }
        }
    }
}
