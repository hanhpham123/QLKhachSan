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
    public partial class DonVi : Form
    {
        DonViControl ctrl = new DonViControl();
        public DonVi()
        {
            InitializeComponent();
        }

        private void DonVi_Load(object sender, EventArgs e)
        {
            ctrl.HienThi(dataGridViewX1, bindingNavigator1);
        }

        private void toolStripButtonLuu_Click(object sender, EventArgs e)
        {
            bindingNavigatorPositionItem.Focus();
            ctrl.Save();
        }

        private void bindingNavigatorDeleteItem_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Bạn có chắc chắn xóa không?", "Don Vi", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                bindingNavigator1.BindingSource.RemoveCurrent();
            }
        }

        private void dataGridView_Delete(object sender, DataGridViewRowCancelEventArgs e)
        {
            if (MessageBox.Show("Bạn có chắc chắn xóa không?", "Don Vi", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.No)
            {
                e.Cancel = true;
            }
        }

        private void toolStripButtonThoat_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}