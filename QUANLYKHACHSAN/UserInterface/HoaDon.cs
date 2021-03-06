using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using QUANLYKHACHSAN.Controller;

namespace QUANLYKHACHSAN.UserInterface
{
    public partial class HoaDon : Form
    {
        HoaDonControl ctrl = new HoaDonControl();
        KhachHangControl khctrl = new KhachHangControl();
        PhieuNhanPhongControl pnctrl = new PhieuNhanPhongControl();
        public HoaDon()
        {
            InitializeComponent();
        }
        
        private void HoaDon_Load(object sender, EventArgs e)
        {
            khctrl.HienthiDataGridviewComboBox(TenKhachHang);
            pnctrl.HienthiDataGridviewComboBox(MaNhanPhong);
            ctrl.HienThiHoaDon(dataGridViewX1, bindingNavigator1);
        }

        ChiTietHoaDon chitiet = null;
        private void DataGridview_DoubleClick(object sender, EventArgs e)
        {
            if (chitiet == null || chitiet.IsDisposed)
            {
                chitiet = new ChiTietHoaDon();
                chitiet.Show();
            }
            else
                chitiet.Activate();
        }

        private void bindingNavigatorDeleteItem_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Bạn có chắc chắn xóa không?", "Hoa Don", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                bindingNavigator1.BindingSource.RemoveCurrent();
                ctrl.Save();
            }
        }

        private void bindingNavigatorAddNewItem_Click(object sender, EventArgs e)
        {
            if (chitiet == null || chitiet.IsDisposed)
            {
                chitiet = new ChiTietHoaDon();
                chitiet.Show();
            }
            else
                chitiet.Activate();
        }

        private void toolStripButtonThoat_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void toolStripTim_Click(object sender, EventArgs e)
        {
            QUANLYKHACHSAN.UserInterface.TimPhieuNhan tim = new QUANLYKHACHSAN.UserInterface.TimPhieuNhan();
            Point p = PointToScreen(toolStripTim.Bounds.Location);
            p.X += toolStripTim.Width;
            p.Y += toolStripTim.Height;
            tim.Location = p;
            tim.ShowDialog();
            if (tim.DialogResult == DialogResult.OK)
            {
                ctrl.TimPhieuNhan(tim.cmbTimPhieuNhan.SelectedValue.ToString());
            }
        }

        private void printToolStripButton_Click(object sender, EventArgs e)
        {
            DataRowView row = (DataRowView)bindingNavigator1.BindingSource.Current;
            if (row != null)
            {
                HoaDonControl ctrlPB = new HoaDonControl();
                String ma_phieu = row["MaKhachHang"].ToString();
                QUANLYKHACHSAN.BusinessObject.HoaDonInFo ph = ctrlPB.LayHoaDon(ma_phieu);
                InHoaDon PhieuBan = new InHoaDon();
                PhieuBan.Show();
            }
        }

       
    }
}