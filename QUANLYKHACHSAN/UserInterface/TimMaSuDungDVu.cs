using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace QUANLYKHACHSAN.UserInterface
{
    public partial class TimMaSuDungDVu : Form
    {
        public TimMaSuDungDVu()
        {
            InitializeComponent();
        }

        private void TimMaSuDungDVu_Load(object sender, EventArgs e)
        {
            QUANLYKHACHSAN.Controller.DanhSachSuDungDichVuControl ds = new QUANLYKHACHSAN.Controller.DanhSachSuDungDichVuControl();
            ds.HienthiComboBoxMaSuDung(cmbmaSuDung);
        }

        
    }
}