using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using QUANLYKHACHSAN.Setting;

namespace QUANLYKHACHSAN.DataPlayer
{
    public class DonViData
    {
        DataService ds = new DataService();
        public DataTable LayMaDonVi()
        {
            SqlCommand cmd = new SqlCommand("select * from DON_VI");
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
        //Download source code tại Sharecode.vn
        public bool Save()
        {
            return (ds.ExecuteNoneQuery() > 0);
        }
    }
}
