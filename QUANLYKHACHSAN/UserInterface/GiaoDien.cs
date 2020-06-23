using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace QUANLYKHACHSAN.UserInterface
{
    public partial class GiaoDien : Form
    {
        public GiaoDien()
        {
            InitializeComponent();
        }

        int i;
        private void timer1_Tick(object sender, EventArgs e)
        {
            i++;
            if (i == 2)
                this.Dispose();
        }
    }
}