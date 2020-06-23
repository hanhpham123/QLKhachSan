using System;
using System.Data.SqlClient;
using System.Data;
using System.Windows.Forms;
using System.Collections.Generic;
using System.Text;
using QUANLYKHACHSAN.Setting;

namespace QUANLYKHACHSAN.DataPlayer
{
    public class BaoCaoDoanhThuData
    {
        DataService ds = new DataService();

        public DataTable LoadSchema()
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM CHI_TIET_BAO_CAO_DOANH_THU");
            ds.Load(cmd);
            return ds;
        }        

        public DataTable TruyVanTyLe(int thang, int nam)
        {
            SqlCommand cmd = new SqlCommand(" select p.MaLoaiPhong,lp.DonGia,count(MaPhong) as ma_phong, count(MaPhong)*DonGia  as tien " +
               " from PHONG p inner join " + "LOAI_PHONG lp on p.MaLoaiPhong=lp.MaLoaiPhong " +
               "group by lp.DonGia, p.MaLoaiPhong");
            cmd.Parameters.Add("thang", SqlDbType.Int).Value = thang;
            cmd.Parameters.Add("nam", SqlDbType.Int).Value = nam;

            ds.Load(cmd);
            return ds;
        } 

        public DataTable TruyVan(int thang, int nam)
        {
            SqlCommand cmd = new SqlCommand(" select Maphong, Sum(TienPhong*SoNgay+TienPhong*PhuThu-GiamGiaKH) as DoanhThu " +
               " from hoa_don hd inner join " + "chi_tiet_hoa_don ct on hd.mahoadon=ct.mahoadon " +
               " where month(hd.ngaylap) =@thang and year(hd.ngaylap)=@nam " + " group by Maphong");
            cmd.Parameters.Add("thang", SqlDbType.Int).Value = thang;
            cmd.Parameters.Add("nam", SqlDbType.Int).Value = nam;

            ds.Load(cmd);
            return ds;
        }       

        public void Clear(int thang, int nam)
        {
            SqlCommand cmd = new SqlCommand("DELETE FROM CHI_TIET_BAO_CAO_DOANH_THU WHERE Thang=@thang AND Nam=@nam");
            cmd.Parameters.Add("thang", SqlDbType.Int).Value = thang;
            cmd.Parameters.Add("nam", SqlDbType.Int).Value = nam;

            ds.ExecuteNoneQuery(cmd);
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

            return ds.ExecuteNoneQuery() > 0;
        }
    }
}
