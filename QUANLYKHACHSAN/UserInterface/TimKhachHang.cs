using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace QUANLYKHACHSAN.UserInterface
{
    public partial class TimKhachHang : Form
    {
        public TimKhachHang()
        {
            InitializeComponent();
        }

        private void TimKhachHang_Load(object sender, EventArgs e)
        {
            QUANLYKHACHSAN.Controller.KhachHangControl ctrl = new QUANLYKHACHSAN.Controller.KhachHangControl();
            ctrl.HienthiComboBox(cmbtimKH);  
        }
    }
}