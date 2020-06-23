using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace QUANLYKHACHSAN.UserInterface
{
    public partial class DangNHap : Form
    {
        public DangNHap()
        {
            InitializeComponent();
        }

        private String m_TenNguoiDung;
        public String lay_TenNguoiDung
        {
            get { return m_TenNguoiDung; }
            set { m_TenNguoiDung = value; }
        }
        private String m_MatKhau;
        public String lay_MatKhau
        {
            get { return m_MatKhau; }
            set { m_MatKhau = value; }
        }    

        private void btnDongY_Click(object sender, EventArgs e)
        {
            this.txtTenDangNhap.Focus();
            m_TenNguoiDung = this.txtTenDangNhap.Text;
            m_MatKhau = this.txtMatKhau.Text;
            this.DialogResult = DialogResult.OK;
        }

        private void btnHuyBo_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.Cancel;
        }

        private void DangNHap_Load(object sender, EventArgs e)
        {
            this.txtTenDangNhap.Text = "";
            this.txtMatKhau.Text = ""; 
        }
    }
}