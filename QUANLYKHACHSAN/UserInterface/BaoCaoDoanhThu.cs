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
    public partial class BaoCaoDoanhThu : Form
    {
        BaoCaoDoanhThuControl ctrl = new BaoCaoDoanhThuControl();
        
        public BaoCaoDoanhThu()
        {
            InitializeComponent();
        }       

        private void toolNam_Validating(object sender, CancelEventArgs e)
        {
            bool ok = true;
            try
            {
                long nam = Convert.ToInt32(toolNam.Text);
                if (nam < 2000 || nam > 9999)
                {
                    ok = false;
                }
            }
            catch
            {
                ok = false;
            }
            if (!ok)
            {
                MessageBox.Show("Thông tin năm không hợp lệ!", "Doanh Thu", MessageBoxButtons.OK, MessageBoxIcon.Error);
                e.Cancel = true;
            }
        }

        private void toolStripButtonLuu_Click(object sender, EventArgs e)
        {
            tooThang.Focus();
            ctrl.Save();
        }

        private void toolStripButtonThoat_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void toolStripTongHop_Click(object sender, EventArgs e)
        {            
            ctrl.LayDS(bindingNavigator1, dataGridViewX1, Convert.ToInt32(tooThang.Text),Convert.ToInt32(toolNam.Text));            
        }

        private void BaoCaoDoanhThu_Load(object sender, EventArgs e)
        {
            this.tooThang.SelectedIndex = DateTime.Now.Month - 1;
            this.toolNam.Text = DateTime.Now.Year.ToString();               
        }
        
    }
}