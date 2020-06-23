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
    public partial class LoaiPhong : Form
    {
        LoaiPhongControl ctrl = new LoaiPhongControl();
        public LoaiPhong()
        {
            InitializeComponent();
        }

        private void LoaiPhong_Load(object sender, EventArgs e)
        {
            ctrl.HienThi(dataGridViewX1, bindingNavigator1);
        }

        private void ThoattoolStripButton_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void SavetoolStripButton_Click(object sender, EventArgs e)
        {
            bindingNavigatorPositionItem.Focus();
            ctrl.Save();
        }       
    }
}