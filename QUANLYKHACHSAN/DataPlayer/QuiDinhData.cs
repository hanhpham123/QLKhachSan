using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using QUANLYKHACHSAN.Setting;

namespace QUANLYKHACHSAN.DataPlayer
{
    public class QuiDinhData
    {
        DataService ds = new DataService();
        public DataTable LayQuiDinh()
        {
            SqlCommand cmd = new SqlCommand("select * from QUI_DINH");
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
