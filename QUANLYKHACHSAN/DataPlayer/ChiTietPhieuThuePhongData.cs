using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using QUANLYKHACHSAN.Setting;

namespace QUANLYKHACHSAN.DataPlayer
{
    public class ChiTietPhieuThuePhongData
    {
        DataService ds = new DataService();       

        public void LoadSchema()
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM CHI_TIET_PHIEU_THUE_PHONG WHERE MaPhieuThue = '-1'");
            ds.Load(cmd);
        }        

        public int XoaChiTietPhieuDangKy(String id)
        {
            SqlCommand cmd = new SqlCommand("DELETE FROM CHI_TIET_PHIEU_THUE_PHONG WHERE MaPhieuThue = @id");
            cmd.Parameters.Add("id", SqlDbType.VarChar, 10).Value = id;
            return ds.ExecuteNoneQuery(cmd);
        }
        
        public DataTable LayChiTietPhieuDangKy(String id)
        {
            SqlCommand cmd = new SqlCommand("select * from CHI_TIET_PHIEU_THUE_PHONG WHERE MaPhieuThue = @id");
            cmd.Parameters.Add("id", SqlDbType.VarChar, 10).Value = id;
            ds.Load(cmd);
            return ds;
        }

        public DataTable TimPhong(string cmnd)
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM CHI_TIET_PHIEU_THUE_PHONG WHERE MaPhong =@cmnd");
            cmd.Parameters.Add("cmnd", SqlDbType.VarChar).Value = cmnd;
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
