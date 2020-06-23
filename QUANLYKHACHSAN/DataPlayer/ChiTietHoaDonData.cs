using System;
using System.Data.SqlClient;
using System.Data;
using System.Collections.Generic;
using System.Text;
using QUANLYKHACHSAN.Setting;

namespace QUANLYKHACHSAN.DataPlayer
{
    public class ChiTietHoaDonData
    {
        DataService ds = new DataService();
        public DataTable LaydanhSachChiTietHoaDon()
        {
            SqlCommand cmd = new SqlCommand("select * from CHI_TIET_HOA_DON");
            ds.Load(cmd);
            return ds;
        }
        public DataTable LayMaChiTietHoaDon(string mahd)
        {
            SqlCommand cmd = new SqlCommand("select * from CHI_TIET_HOA_DON WHERE MaHoaDon = @mahd ");
            cmd.Parameters.Add("mahd", SqlDbType.VarChar, 10).Value = mahd;
            ds.Load(cmd);
            return ds;
        }
        //Download source code tại Sharecode.vn
        public DataTable LayMaKhachHang(string makh)
        {
            SqlCommand cmd = new SqlCommand("select * from HOA_DON WHERE MaKhachHang = @makh ");
            cmd.Parameters.Add("makh", SqlDbType.VarChar, 3).Value = makh;
            ds.Load(cmd);
            return ds;
        }


        public String TruyVan()
        {
            String sql = " SELECT DANH_SACH_SU_DUNG_DICH_VU.SoLuong, DICH_VU.DonGia, [SoLuong]*[DonGia] AS TienDichVu " +
               " FROM DANH_SACH_SU_DUNG_DICH_VU INNER JOIN " +
               " DICH_VU ON DANH_SACH_SU_DUNG_DICH_VU.MaDichVu = DICH_VU.MaDichVu";
            return sql;
        }


        public DataTable LayTienDVu(float tiendvu)
        {            
            SqlCommand cmd = new SqlCommand();
            String SQL = TruyVan() + " where CHI_TIET_HOA_DON.TienDichVu LIKE'%' + @tiendvu + '%'";
            cmd.Parameters.Add("tiendvu", SqlDbType.Float).Value = tiendvu;
            return ds;
        }

        public float LayTongTien( int thang, int nam)
        {
            DataService ds = new DataService();
            SqlCommand cmd = new SqlCommand("SELECT SUM(ThanhTien) FROM HOA_DON WHERE MONTH(NgayLap)=@thang AND YEAR(NgayLap)= @nam");
            
            cmd.Parameters.Add("thang", SqlDbType.Int).Value = thang;
            cmd.Parameters.Add("nam", SqlDbType.Int).Value = nam;

            object obj = ds.ExecuteScalar(cmd);

            if (obj == null)
                return 0;
            else
                return Convert.ToSingle(obj);
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
