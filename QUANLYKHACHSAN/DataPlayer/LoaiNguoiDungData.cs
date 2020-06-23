using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using QUANLYKHACHSAN.Setting;

namespace QUANLYKHACHSAN.DataPlayer
{
    public class LoaiNguoiDungData
    {
        DataService ds = new DataService();
        public DataTable LayDSLoaiNguoiDung()
        {
            SqlCommand cmd = new SqlCommand("Select * From LOAI_NGUOI_DUNG");
            ds.Load(cmd);
            return ds;
        }

        public DataTable LayDSLoaiNguoiDung_Q(string loainguoidung)
        {
            SqlCommand cmd = new SqlCommand("select * from LOAI_NGUOI_DUNG WHERE TenloaiNguoiDung='" + loainguoidung + "'");
            ds.Load(cmd);
            return ds;
        }

        //public void UpdatePassWord(String tenDangNhap, String matKhau)
        //{
        //    ds.UpdatePassWord(tenDangNhap, matKhau);
        //}

        public void Update()
        {
            ds.Update();
        }   
    }
}
