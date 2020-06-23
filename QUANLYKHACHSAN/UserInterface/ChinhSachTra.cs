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
    public partial class ChinhSachTra : Form
    {
        ChinhSachTraControl ctrl = new ChinhSachTraControl();
        public ChinhSachTra()
        {
            InitializeComponent();
        }

        private void ChinhSachTra_Load(object sender, EventArgs e)
        {
            ctrl.HienThi(dataGridViewX1, bindingNavigator1);
        }

        private void toolStripLuu_Click(object sender, EventArgs e)
        {
            bindingNavigatorPositionItem.Focus();
            ctrl.Save();
        }

        private void toolStripThoat_Click(object sender, EventArgs e)
        {
            this.Close();
        }

    }
}