using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using QUANLYKHACHSAN.Setting;

namespace QUANLYKHACHSAN.DataPlayer
{
    public class PhongData
    {
        DataService ds = new DataService();
        public DataTable LayMaPhong()
        {
            SqlCommand cmd = new SqlCommand("select * from PHONG");
            ds.Load(cmd);
            return ds;
        }

        public DataTable LayMaPhong(string id)
        {
            SqlCommand cmd = new SqlCommand("select * from PHONG WHERE MaPhong = @id");
            cmd.Parameters.Add("id", SqlDbType.VarChar, 3).Value = id;
            ds.Load(cmd);
            return ds;
        }
        //Download source code tai Sharecode.vn
        public DataTable LayMaTinhTrangPhong(int id)
        {
            SqlCommand cmd = new SqlCommand("select * from PHONG WHERE MaLoaiTinhTrangPhong = @id");
            cmd.Parameters.Add("id", SqlDbType.VarChar, 10).Value = id;
            ds.Load(cmd);
            return ds;
        }

        public DataTable LayDSMaTinhTrangPhong()
        {
            SqlCommand cmd = new SqlCommand("select * from PHONG WHERE MaLoaiTinhTrangPhong");
            //cmd.Parameters.Add("id", SqlDbType.VarChar, 10).Value = id;
            ds.Load(cmd);
            return ds;
        }

        public DataTable LayMaLoaiPhong()
        {
            SqlCommand cmd = new SqlCommand("select * from PHONG WHERE MaLoaiPhong");
            //cmd.Parameters.Add("id", SqlDbType.VarChar, 10).Value = id;
            ds.Load(cmd);
            return ds;
        }


        public static void CapNhatMaLoaiTinhTrangPhong(String maphong, int id)
        {
            DataService ds = new DataService();
            SqlCommand cmd = new SqlCommand("UPDATE PHONG SET MaLoaiTinhTrangPhong = @so WHERE MaPhong = @id");
            cmd.Parameters.Add("so", SqlDbType.Int).Value = id;
            cmd.Parameters.Add("id", SqlDbType.VarChar).Value = maphong;
            ds.ExecuteNoneQuery(cmd);
        }

        

        public DataTable TimMaLoaiPhong(string maloaiphong)
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM PHONG WHERE MaLoaiPhong = @maloaiphong ");
            cmd.Parameters.Add("maloaiphong", SqlDbType.VarChar).Value = maloaiphong;
            ds.Load(cmd);

            return ds;
        }

        public DataTable TimTinhTrangPhong(string tinhtrangphong)
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM PHONG WHERE MaLoaiTinhTrangPhong=@tinhtrangphong ");
            cmd.Parameters.Add("tinhtrangphong", SqlDbType.VarChar).Value = tinhtrangphong;
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
