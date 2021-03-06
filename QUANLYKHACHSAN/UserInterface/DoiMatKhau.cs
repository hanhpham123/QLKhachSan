using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using QUANLYKHACHSAN.Controller;
using QUANLYKHACHSAN.DataPlayer;
using QUANLYKHACHSAN.BusinessObject;

namespace QUANLYKHACHSAN.UserInterface
{
    public partial class DoiMatKhau : Form
    {
        NguoiDungControl nguoiDung = new NguoiDungControl();
        private int ktra;
        public int KTraDangNhap
        {
            get { return ktra; }
            set { ktra = value; }
        }

        private NguoiDungInFo m_NguoiDung = new NguoiDungInFo();

        public NguoiDungInFo pNguoiDung
        {
            get { return m_NguoiDung; }
            set { m_NguoiDung = value; }
        }
        public DoiMatKhau()
        {
            InitializeComponent();
        }

        private void btnHuyBo_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.Abort;
        }

        private void DoiMatKhau_Load(object sender, EventArgs e)
        {
            this.txtMatKhauCu.Text = "";
            this.txtMatKhauMoi.Text = "";
            this.txtXacNhanMatKhau.Text = "";
        }

       

        private void btnDongY_Click_1(object sender, EventArgs e)
        {
            this.txtMatKhauCu.Focus();
            this.DialogResult = DialogResult.OK;

        }

        private void DoiMatKhau_Leave(object sender, EventArgs e)
        {

        }
        
        
    }
}