using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using QUANLYKHACHSAN.Controller;

namespace QUANLYKHACHSAN.UserInterface
{
    public partial class ThietBiTrongPhong : Form
    {
        LoaiPhongControl lpctrl = new LoaiPhongControl();
        ThietBiControl ctrl = new ThietBiControl();
        public ThietBiTrongPhong()
        {
            InitializeComponent();
        }                                  
        
        private void dataGridView_DataError(object sender, DataGridViewDataErrorEventArgs e)
        {
            e.Cancel = true;
        }

        private void btnThemMLPhong_Click(object sender, EventArgs e)
        {
            LoaiPhong lp = new LoaiPhong();
            lp.ShowDialog();
            lpctrl.HienthiComboBoxMLPhong(cmbMLPhong);
        }

        private void toolStripButtonThoat_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void toolStripButtonLuu_Click(object sender, EventArgs e)
        {
            txtMaTBi.Focus();
            bindingNavigator2.BindingSource.MoveNext();
            ctrl.Save();
        }

        private void bindingNavigatorDeleteItem1_Click(object sender, EventArgs e)
        {

            if (MessageBox.Show("Bạn chắc chắn xóa thiết bị này không?", "Thiet Bi", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                bindingNavigator2.BindingSource.RemoveCurrent();
                ctrl.Save();
            }
        }

        private void DataGridView_UserDeletingRow(object sender, DataGridViewRowCancelEventArgs e)
        {
            if (MessageBox.Show("Bạn chắc chắn xóa thiết bị này không?", "Thiet Bi", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.No)
            {
                e.Cancel = true;
            }
        }

        private void FrmThietBiPhong_Click(object sender, EventArgs e)
        {
            lpctrl.HienthiComboBoxMLPhong(cmbMLPhong);
            dataGridViewX2.Columns.Add(lpctrl.HienthiDataGridViewComboBoxColumn());
            ctrl.HienThi(dataGridViewX2, bindingNavigator2, txtMaTBi, txtTenTBi, cmbMLPhong, numericUpDown1);
        }            
        
        private void toolTimMLPhong_Enter(object sender, EventArgs e)
        {
            toolTimMLPhong.Text = "";
            toolTimMLPhong.ForeColor = Color.Black;
        }

        private void toolTimMLPhong_Leave(object sender, EventArgs e)
        {
            toolTimMLPhong.Text = "Tìm Mã Loại Phòng";
            toolTimMLPhong.ForeColor = Color.FromArgb(224, 224, 224);
        }

        private void toolTimMLPhong_KeyPess(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar == 13)
            {
                ctrl.TimMaLoaiPhong(toolTimMLPhong.Text);
            }
        }

        private void bindingNavigatorAddNewItem1_Click(object sender, EventArgs e)
        {
            DataRow row = ctrl.NewRow();
            row["MaThietBi"] = "";
            row["TenThietBi"] = "";
            row["SoLuong"] = 0;
            ctrl.Add(row);
            bindingNavigator2.BindingSource.MoveLast();
        }

       
    }
}