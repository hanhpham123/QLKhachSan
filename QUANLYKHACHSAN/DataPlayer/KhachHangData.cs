using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using QUANLYKHACHSAN.Setting;

namespace QUANLYKHACHSAN.DataPlayer
{
    public class KhachHangData
    {
        DataService ds = new DataService();
        public DataTable LayMaKhachHang()
        {
            SqlCommand cmd = new SqlCommand("select * from KHACH_HANG");
            ds.Load(cmd);
            return ds;
        }

        public DataTable LKH(String id)
        {
            SqlCommand cmd = new SqlCommand("select * from KHACH_HANG WHERE MaKhachHang=@id");
            cmd.Parameters.Add("id", SqlDbType.VarChar, 10).Value = id;
            ds.Load(cmd);
            return ds;
        }

        public DataTable TimHoTen(string hoten)
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM KHACH_HANG WHERE TenKhachHang = @hoten");
            cmd.Parameters.Add("hoten",SqlDbType.NVarChar).Value = hoten;
            ds.Load(cmd);

            return ds;
        }

        public DataTable TimDiaChi(string diachi)
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM KHACH_HANG WHERE DiaChi = @diachi");
            cmd.Parameters.Add("diachi", SqlDbType.NVarChar).Value = diachi;
            ds.Load(cmd);

            return ds;
        }

        public DataTable TimGioiTinh(string gioitinh)
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM KHACH_HANG WHERE GioiTinh = @gioitinh ");
            cmd.Parameters.Add("gioitinh", SqlDbType.NVarChar).Value = gioitinh;
            ds.Load(cmd);

            return ds;
        }

        public DataTable TimCMND(string cmnd)
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM KHACH_HANG WHERE CMND=@cmnd");
            cmd.Parameters.Add("cmnd", SqlDbType.NVarChar).Value = cmnd;
            ds.Load(cmd);

            return ds;
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
    }
}
