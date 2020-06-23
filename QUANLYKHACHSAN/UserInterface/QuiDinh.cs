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
    public partial class QuiDinh : Form
    {
        QuiDinhControl ctrl = new QuiDinhControl();
        public QuiDinh()
        {
            InitializeComponent();
        }

        private void QuiDinh_Load(object sender, EventArgs e)
        {
            ctrl.HienThi(dataGridViewX1, bindingNavigator1);
        }

        private void toolStripButtonLuu_Click(object sender, EventArgs e)
        {
            bindingNavigatorPositionItem.Focus();
            ctrl.Save();
        }

        private void toolStripButtonThoat_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}