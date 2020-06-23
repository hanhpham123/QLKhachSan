using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using QUANLYKHACHSAN.Report;

namespace QUANLYKHACHSAN.UserInterface
{
    public partial class InHoaDon : Form
    {
        public InHoaDon()
        {
            InitializeComponent();
        }

        private void InHoaDon_Load(object sender, EventArgs e)
        {
            QUANLYKHACHSAN.DataPlayer.ChiTietHoaDonData chitietData = new QUANLYKHACHSAN.DataPlayer.ChiTietHoaDonData();
            QUANLYKHACHSAN.Report.HoaDon hoadon = new QUANLYKHACHSAN.Report.HoaDon();
            hoadon.SetDataSource(chitietData.LaydanhSachChiTietHoaDon());
            ReportViewer.ReportSource = hoadon;
        }
    }
}