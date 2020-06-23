using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace QUANLYKHACHSAN.UserInterface
{
    public partial class InDoanhThu : Form
    {
        public InDoanhThu()
        {
            InitializeComponent();
        }

        private void InDoanhThu_Load(object sender, EventArgs e)
        {
            QUANLYKHACHSAN.DataPlayer.BaoCaoDoanhThuData tinhData = new QUANLYKHACHSAN.DataPlayer.BaoCaoDoanhThuData();
            QUANLYKHACHSAN.Report.DoanhThu tkSLSVTheoTinh_HeDaoTao = new QUANLYKHACHSAN.Report.DoanhThu();
            //tkSLSVTheoTinh_HeDaoTao.SetDataSource(tinhData.TruyVan());
            crystalReportViewer1.ReportSource = tkSLSVTheoTinh_HeDaoTao;
        }
    }
}