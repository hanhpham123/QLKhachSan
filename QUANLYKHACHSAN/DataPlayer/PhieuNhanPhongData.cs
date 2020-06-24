using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using QUANLYKHACHSAN.Setting;

namespace QUANLYKHACHSAN.DataPlayer
{
    public class PhieuNhanPhongData
    {
        DataService ds = new DataService();
        public DataTable LayDanhSachNhanPhong()
        {
            SqlCommand cmd = new SqlCommand("select * from PHIEU_NHAN_PHONG");
            ds.Load(cmd);
            return ds;
        }

        public void LoadSchema()
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM PHIEU_NHAN_PHONG WHERE MaNhanPhong='-1'");
            ds.Load(cmd);

        }

        public DataTable LayMaNhanPhong(String id)
        {
            SqlCommand cmd = new SqlCommand("select * from PHIEU_NHAN_PHONG WHERE MaNhanPhong = @id ");
            cmd.Parameters.Add("id", SqlDbType.VarChar).Value = id;
            ds.Load(cmd);
            return ds;
        }

        public DataTable TimPhieuThue(String mathuephong)
        {
            SqlCommand cmd = new SqlCommand(" SELECT  pt.MaPhong, kh.MaKhachHang,ct.MaPhieuThue" +
                "FROM  CHI_TIET_PHIEU_THUE_PHONG pt inner join" +
                "  PHIEU_THUE_PHONG ct on pt.MaPhieuThue=ct.MaPhieuThue inner join" +
                " KHACH_HANG kh on kh.MaKhachHang=ct.MaKhachHang ");
            //cmd.Parameters.Add("mathuephong", SqlDbType.VarChar).Value = mathuephong;
            ds.Load(cmd);
            return ds;
        }

        public DataTable LayTheoMaPhong(String maphong)
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM PHIEU_NHAN_PHONG WHERE MaPhieuThue = @mathuephong ");
            cmd.Parameters.Add("mathuephong", SqlDbType.VarChar).Value = maphong;
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
