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
    public partial class DanhSachSuDungDichVu : Form
    {
        DanhSachSuDungDichVuControl ctrl = new DanhSachSuDungDichVuControl();
        DichVuControl dvctrl = new DichVuControl();
        PhieuNhanPhongControl pnctrl = new PhieuNhanPhongControl();
        
        public DanhSachSuDungDichVu()
        {
            InitializeComponent();
        }      

        private void DanhSachSuDungDichVu_Load(object sender, EventArgs e)
        {
            dvctrl.HienThiCombobox(cmbMadichvu);
            dataGridViewX1.Columns.Add(dvctrl.HienthiDataGridViewComboBoxColumn());
            pnctrl.HienthiComboBoxMaPhieuNhan(cmbMaCTNhanPhong);
            dataGridViewX1.Columns.Add(pnctrl.HienthiDataGridViewComboBoxColumn());           

            ctrl.HienThi(txtMaSuDung,cmbMadichvu, cmbMaCTNhanPhong, numSoLuong, dataGridViewX1, bindingNavigator1);

        }        

        private void toolStripButtonThoat_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void toolStripButtonLuu_Click(object sender, EventArgs e)
        {
            cmbMadichvu.Focus();
            bindingNavigator1.BindingSource.MoveNext();
            ctrl.Save();
        }

        private void bindingNavigatorDeleteItem_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Bạn có chắc chắn xóa không?", "Danh Sach Su Dung Dich Vu", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                bindingNavigator1.BindingSource.RemoveCurrent();
                ctrl.Save();
            }
        }

        private void DataGV_Delete(object sender, DataGridViewRowCancelEventArgs e)
        {
            if (MessageBox.Show("Bạn có chắc chắn xóa không?", "Danh Sach Su Dung Dich Vu", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.No)
            {
                e.Cancel = true;
            }
        }

        private void toolTimKiem_Enter(object sender, EventArgs e)
        {
            toolTimKiem.Text = "";
            toolTimKiem.ForeColor = Color.Black; 
        }

        private void toolTimKiem_Leave(object sender, EventArgs e)
        {
            if (tìmMãDịchVụToolStripMenuItem.Checked == true)
                tìmMãDịchVụToolStripMenuItem.Text = "Tìm theo mã dịch vụ";
            else
                tìmMãPhiếuNhậnToolStripMenuItem.Text = "Tìm theo mã phiếu nhận";

            toolTimKiem.ForeColor = Color.FromArgb(224, 224, 224);
        }

        private void toolTimKiem_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar == 13)
            {
                if (tìmMãDịchVụToolStripMenuItem.Checked)
                    ctrl.TimMaDichVu(toolTimKiem.Text);
                else
                    ctrl.TimMaPhieuNhan(toolTimKiem.Text);
            }
        }

        private void tìmMãDịchVụToolStripMenuItem_Click(object sender, EventArgs e)
        {
            tìmMãPhiếuNhậnToolStripMenuItem.Checked = false;
            tìmMãDịchVụToolStripMenuItem.Checked = true;
            toolTimKiem.Text = "Tìm theo mã dịch vụ";
            bindingNavigator1.Focus();
        }

        private void tìmMãPhiếuNhậnToolStripMenuItem_Click(object sender, EventArgs e)
        {
            tìmMãPhiếuNhậnToolStripMenuItem.Checked = true;
            tìmMãDịchVụToolStripMenuItem.Checked = false;
            toolTimKiem.Text = "Tìm theo mã phiếu nhận";
            bindingNavigator1.Focus();
        }

        private void btnMaDVu_Click(object sender, EventArgs e)
        {
            QUANLYKHACHSAN.UserInterface.DichVu dv = new QUANLYKHACHSAN.UserInterface.DichVu();
            dv.ShowDialog();
            dvctrl.HienThiCombobox(cmbMadichvu);
        }

        private void btnMaPhieuNhan_Click(object sender, EventArgs e)
        {
            QUANLYKHACHSAN.UserInterface.PhieuNhanPhong pn = new PhieuNhanPhong();
            pn.ShowDialog();
            pnctrl.HienthiComboBoxMaPhieuNhan(cmbMaCTNhanPhong);
        }

        private void TienDVu_ValueChanged(object sender, EventArgs e)
        {           
            DichVuControl dvctrl = new DichVuControl();            
            QUANLYKHACHSAN.BusinessObject.DanhSachSuDungDichVuInFo dsi = ctrl.LayDSSuDungDVu(cmbMadichvu.SelectedValue.ToString());
            QUANLYKHACHSAN.BusinessObject.DichVuInFo dvi = dvctrl.LayMaDichVu(dsi.MaDichVu);
            float dongia = dvi.DonGia;
            int soluong = dsi.SoLuong;
            float tien = 0;
            
            tien = tien + (dongia * soluong);
            //numTienDVu.Value = tien;

            //numTienDVu.Value=(numSoLuong.Value*dvi.DonGia);
        }

        private void bindingNavigatorAddNewItem_Click(object sender, EventArgs e)
        {
            DataRow row = ctrl.NewRow();
            
            row["MaSuDungDvu"] = "";
            row["SoLuong"] = 0;
            row["TienDichVu"] = 0;
            ctrl.Add(row);
            bindingNavigator1.BindingSource.MoveLast();
            txtMaSuDung.Focus();
        }       
    }
}