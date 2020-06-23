using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Windows.Forms;
using System.Data.SqlClient;
using QUANLYKHACHSAN.Setting;

namespace QUANLYKHACHSAN.DataPlayer
{
    public class LoaiPhongData
    {
        DataService ds = new DataService();
        public DataTable LayMaLoaiPhong()
        {
            SqlCommand cmd = new SqlCommand("select * from LOAI_PHONG");
            ds.Load(cmd);
            return ds;  
        }

        public DataTable LayMaLoaiPhongml(string maloai)
        {
            SqlCommand cmd = new SqlCommand("select * from LOAI_PHONG WHERE MaLoaiPhong='" + maloai + "'");
              
            //cmd.Parameters.Add("id", SqlDbType.VarChar,3).Value = maloai;
            ds.Load(cmd);
            return ds;
        }

        public DataTable LayTienPhong()
        {
            SqlCommand cmd = new SqlCommand("select * from LOAI_PHONG WHERE DonGia");
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
