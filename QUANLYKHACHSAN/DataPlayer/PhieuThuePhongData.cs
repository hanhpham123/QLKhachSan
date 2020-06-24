using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using QUANLYKHACHSAN.Setting;

namespace QUANLYKHACHSAN.DataPlayer
{
    public class PhieuThuePhongData
    {
        DataService ds = new DataService();
       
        public void LoadSchema()
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM PHIEU_THUE_PHONG WHERE MaPhieuThue='-1'");
            ds.Load(cmd);

        }

        public DataTable DanhSachPhieudangKy()
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM PHIEU_THUE_PHONG");
            ds.Load(cmd);

            return ds;
        }

        public DataTable TimPhieuThue(string cmnd)
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM PHIEU_THUE_PHONG WHERE MaPhieuThue =@cmnd");
            cmd.Parameters.Add("cmnd", SqlDbType.VarChar).Value = cmnd;
            ds.Load(cmd);

            return ds;
        }

        public DataTable TimKhachHang(string cmnd)
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM PHIEU_THUE_PHONG WHERE MaKhachHang =@cmnd");
            cmd.Parameters.Add("cmnd", SqlDbType.VarChar).Value = cmnd;
            ds.Load(cmd);

            return ds;
        }       

        public DataTable LayPhieuDangKy(String id)
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM PHIEU_THUE_PHONG WHERE MaPhieuThue = @id");
            cmd.Parameters.Add("id", SqlDbType.VarChar, 10).Value = id;
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
