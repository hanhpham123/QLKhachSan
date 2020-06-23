using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using QUANLYKHACHSAN.Setting;

namespace QUANLYKHACHSAN.DataPlayer
{
    public class HoaDonData
    {
        DataService ds = new DataService();
        public DataTable LayDanhSachHoaDon()
        {
            SqlCommand cmd = new SqlCommand("select * from HOA_DON");
            ds.Load(cmd);
            return ds;
        }

        public DataTable LayMaHoaDon(String id)
        {
            SqlCommand cmd = new SqlCommand("select * from HOA_DON WHERE MaHoaDon = @id ");
            cmd.Parameters.Add("id", SqlDbType.VarChar, 3).Value = id;
            ds.Load(cmd);
            return ds;
        }

        public DataTable LayMaKhachHang(String id)
        {
             SqlCommand cmd=null;          
               cmd = new SqlCommand("SELECT  HOA_DON.MaHoaDon, HOA_DON.MaKhachHang, HOA_DON.NhanVienLap, HOA_DON.TongTien, HOA_DON.NgayLap as Exper1, "+
                   "CHI_TIET_HOA_DON.MaPhong, CHI_TIET_HOA_DON.TienPhong, CHI_TIET_HOA_DON.PhuThu, CHI_TIET_HOA_DON.TienDichVu, CHI_TIET_HOA_DON.GiamGiaKH, CHI_TIET_HOA_DON.SoNgay, CHI_TIET_HOA_DON.HinhThucThanhToan as Exper2,  "+
                   "FROM    HOA_DON INNER JOIN "+
                   "CHI_TIET_HOA_DON ON HOA_DON.MaHoaDon = CHI_TIET_HOA_DON.MaHoaDon INNER JOIN "+
                   " HOA_DON.MaKhachHang like '%'+@makh+'%'");
            //cmd = new SqlCommand("select * from HOA_DON WHERE MaKhachHang = @id ");
            cmd.Parameters.Add("makh", SqlDbType.VarChar, 3).Value = id;
            ds.Load(cmd);
            return ds;
        }

        public DataTable TimPhieuNhan(String manhanphong)
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM HOA_DON WHERE MaNhanPhong = @manhanphong ");
            cmd.Parameters.Add("manhanphong", SqlDbType.VarChar).Value = manhanphong;
            return ds;
        }

        public DataTable TimMaPhong(string map)
        {
            SqlCommand cmd = new SqlCommand("select * from CHI_TIET_HOA_DON WHERE MaPhong = @map ");
            cmd.Parameters.Add("map", SqlDbType.VarChar, 10).Value = map;
            ds.Load(cmd);
            return ds;
        }

        public DataTable TimMaSuDung(string masd)
        {
            SqlCommand cmd = new SqlCommand("select * from CHI_TIET_HOA_DON WHERE MaSuDungDVu = @masd ");
            cmd.Parameters.Add("masd", SqlDbType.VarChar, 10).Value = masd;
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
