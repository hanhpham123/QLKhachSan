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
    public partial class LoaiTinhTrangPhong : Form
    {
        LoaiTinhTrangPhongControl ctrl = new LoaiTinhTrangPhongControl();

        public LoaiTinhTrangPhong()
        {
            InitializeComponent();
        }

        private void toolStripButton1_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void toolLuu_Click(object sender, EventArgs e)
        {
            bindingNavigatorPositionItem.Focus();
            ctrl.Save();
        }              

        private void LoaiTinhTrangPhong_Load(object sender, EventArgs e)
        {
            ctrl.HienThi(dataGridViewX1, bindingNavigator1);
        }
    }
}