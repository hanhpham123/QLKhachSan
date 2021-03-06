using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using QUANLYKHACHSAN.BusinessObject;
using QUANLYKHACHSAN.Controller;
using QUANLYKHACHSAN.DataPlayer;

namespace QUANLYKHACHSAN.UserInterface
{
    public partial class NguoiDung : Form
    {
        NguoiDungControl ctrl = new NguoiDungControl();
        public NguoiDung()
        {
            InitializeComponent();
        }

        private void NguoiDung_Load(object sender, EventArgs e)
        {
            ctrl.HienThi(txtTenDangnhap, txtMatKhau, cmbLoaiNDung, dataGridViewX1, bindingNavigator1);
        }

        private void toolStripLuu_Click(object sender, EventArgs e)
        {
            txtTenDangnhap.Focus();
            bindingNavigator1.BindingSource.MoveNext();
            ctrl.Save();
        }

        private void bindingNavigatorDeleteItem_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Bạn chắc chắn xóa không?", "Nguoi Dung", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                bindingNavigator1.BindingSource.RemoveCurrent();
                ctrl.Save();
            }
        }

        private void toolStripThoat_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void bindingNavigatorAddNewItem_Click(object sender, EventArgs e)
        {
            DataRow row = ctrl.NewRow();
            row["TenDangNhap"] = "";
            row["MatKhau"] = "";
            row["LoaiNguoiDung"] = cmbLoaiNDung.SelectedValue;
            ctrl.Add(row);
            bindingNavigator1.BindingSource.MoveLast();
        }

        private void DataGridview_DeleteUser(object sender, DataGridViewRowCancelEventArgs e)
        {
            if (MessageBox.Show("Bạn chắc chắn xóa không?", "Nguoi Dung", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                e.Cancel = true;
            }
        }
    }
}