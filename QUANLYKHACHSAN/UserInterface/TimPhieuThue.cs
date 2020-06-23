using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace QUANLYKHACHSAN.UserInterface
{
    public partial class TimPhieuThue : Form
    {
        public TimPhieuThue()
        {
            InitializeComponent();
        }

        private void TimPhieuThue_Load(object sender, EventArgs e)
        {
            QUANLYKHACHSAN.Controller.PhieuThuePhongControl ctrl = new QUANLYKHACHSAN.Controller.PhieuThuePhongControl();
            ctrl.HienthiComboBoxMaPhieuThue(cmbMaPhieuThue);
        }

        
    }
}