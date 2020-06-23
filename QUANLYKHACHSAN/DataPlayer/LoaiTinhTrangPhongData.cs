using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Text;
using QUANLYKHACHSAN.Setting;

namespace QUANLYKHACHSAN.DataPlayer
{
    public class LoaiTinhTrangPhongData
    {
        DataService ds = new DataService();
        public DataTable LayDSTinhTrangPhong()
        {
            SqlCommand cmd = new SqlCommand("select * from LOAI_TINH_TRANG");
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
