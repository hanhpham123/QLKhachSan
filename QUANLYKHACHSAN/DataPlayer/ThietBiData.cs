using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Windows.Forms;
using System.Data.SqlClient;
using QUANLYKHACHSAN.Setting;

namespace QUANLYKHACHSAN.DataPlayer
{
    public class ThietBiData
    {
        DataService ds = new DataService();
        public DataTable LayMaThietBi()
        {
            SqlCommand cmd = new SqlCommand("select * from THIET_BI");
            ds.Load(cmd);
            return ds;
        }

        public DataTable TimMaLoaiPhong(string cmbmaloaiphong)
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM THIET_BI WHERE MaLoaiPhong = @maloaiphong");
            cmd.Parameters.Add("maloaiphong", SqlDbType.VarChar).Value = cmbmaloaiphong;

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
        //Download source code tai Sharecode.vn
        public bool Save()
        {
            return (ds.ExecuteNoneQuery() > 0);
        }
    }
}
