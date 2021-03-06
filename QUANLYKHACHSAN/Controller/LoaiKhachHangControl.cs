using System;
using System.Data;
using System.Windows.Forms;
using System.Collections.Generic;
using System.Text;
using QUANLYKHACHSAN.DataPlayer;

namespace QUANLYKHACHSAN.Controller
{
    public class LoaiKhachHangControl
    {
        LoaiKhachHangData data = new LoaiKhachHangData();       

        public void HienThi( DataGridView dg, BindingNavigator bn)
        {
            BindingSource bs = new BindingSource();            
            DataTable tbl = data.LayMaLoaiKhachHang();
            bs.DataSource = tbl;
            dg.DataSource = bs;
            bn.BindingSource = bs;
        }

        public void HienThiComboboxMaLKH(ComboBox cmb)
        {            
            cmb.DataSource = data.LayMaLoaiKhachHang();
            cmb.DisplayMember = "MaLoaiKhachHang";
            cmb.ValueMember = "TenLoaiKhachHang";
        }

        public DataGridViewComboBoxColumn HienthiDataGridViewComboBoxColumn()
        {
            DataGridViewComboBoxColumn cmb = new DataGridViewComboBoxColumn();
            DataTable tbl = data.LayMaLoaiKhachHang();
            cmb.DataSource = tbl;            
            cmb.DisplayMember = "TenLoaiKhachHang";
            cmb.ValueMember = "MaLoaiKhachHang";
            cmb.DataPropertyName = "MaLoaiKhachHang";
            cmb.HeaderText = "Mã loại khách hàng";
            return cmb;
        }

        public void Refresh(DataGridView dgv)
        {
            dgv.DataSource = data.LayMaLoaiKhachHang();
        }

        public DataRow NewRow()
        {
            return this.data.NewRow();
        }

        public void Add(DataRow row)
        {
            this.data.Add(row);
        }

        public bool Save()
        {
            return this.data.Save();
        }
    }
}
