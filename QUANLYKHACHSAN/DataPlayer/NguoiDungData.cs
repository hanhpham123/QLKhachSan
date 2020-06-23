using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using QUANLYKHACHSAN.Setting;

namespace QUANLYKHACHSAN.DataPlayer
{
    public class NguoiDungData
    {
        DataService ds = new DataService();
        DataService ds1 = new DataService();
        public DataTable LayDSNguoiDung()
        {
            SqlCommand cmd = new SqlCommand("Select * from NGUOI_DUNG");
            ds.Load(cmd);
            return ds;
        } 

        public DataTable LayDSNguoiDung(string tenDangNhap)
        {
            String sql = "SELECT * FROM NGUOI_DUNG WHERE TenDangNhap = @ten";
            SqlCommand cmd = new SqlCommand(sql);
            cmd.Parameters.Add("ten", SqlDbType.VarChar).Value = tenDangNhap;
            ds.Load(cmd);
            return ds;
        }            
                   
        public DataTable LayDSNguoiDung_Q(string loaiNguoiDung)
        {
            //String sql = "SELECT * FROM NGUOI_DUNG WHERE LoaiNguoiDung = @ten";
            //SqlCommand cmd = new SqlCommand(sql);
            //cmd.Parameters.Add("ten", SqlDbType.VarChar, 50).Value = loaiNguoiDung;
            //ds.Load(cmd);
            //return ds;
            SqlCommand cmd = new SqlCommand("select * from NGUOI_DUNG WHERE LoaiNguoiDung='" + loaiNguoiDung + "'");
            ds.Load(cmd);
            return ds;

        }


        public void UpdatePassWord(String tenDangNhap, String matKhau)
        {
            ds1.UpdatePassWord(tenDangNhap, matKhau);
        }

        public DataRow NewRow()
        {
            return ds.NewRow();
        }

        public void Add(DataRow row)
        {
            ds.Rows.Add(row);
        }

        public bool Save()
        {
            return (ds.ExecuteNoneQuery() > 0);
        }

        //public void DoiMatKhau(string ten, string matKhau)
        //{
        //    SqlCommand cmd = new SqlCommand("Update NGUOI_DUNG Set MatKhau=@matKhau where TenDangNhap=@ten");
        //    cmd.Parameters.Add("ten", SqlDbType.VarChar).Value = ten;
        //    cmd.Parameters.Add("matKhau", SqlDbType.VarChar).Value = matKhau;
        //    ds.Load(cmd);
        //}
        //public void DoiMatKhauSQL(String ten, String matKhau, String matKhauMoi)
        //{
        //    SqlCommand cmd = new SqlCommand("exec sp_password @matKhau, @matKhauMoi, @ten");
        //    cmd.Parameters.Add("matKhau", SqlDbType.VarChar).Value = matKhau;
        //    cmd.Parameters.Add("matKhauMoi", SqlDbType.VarChar).Value = matKhauMoi;
        //    cmd.Parameters.Add("ten", SqlDbType.VarChar).Value = ten;
        //    ds.Load(cmd);
        //}
    }
}
