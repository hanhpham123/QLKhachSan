using System;
using System.Collections.Generic;
using System.Text;
using System.Data.SqlClient;
using System.Data;

namespace QUANLYKHACHSAN.Setting
{
    public enum Controll
    {
        Normal,
        AddNew,
        Edit
    }

    public class ThamSo
    {
        public static void PreMonth(ref int thangtruoc, ref int namtruoc, int thang, int nam)
        {
            thangtruoc = thang - 1;
            namtruoc = nam;
            if (thangtruoc == 0)
            {
                thangtruoc = 12;
                namtruoc = nam - 1;
            }
        }

        public static bool LaSoNguyen(String so)
        {
            try
            {
                Convert.ToInt64(so);
                return true;
            }
            catch
            {
                return false;
            }
        }

        public static int LayPhieuDangKy()
        {
            DataService ds = new DataService();
            object obj = ds.ExecuteScalar(new SqlCommand("SELECT PhieuDangKy FROM THAM_SO"));
            return Convert.ToInt32(obj);
        }
        public static void GanPhieuDangKy(int id)
        {
            DataService ds = new DataService();
            ds.ExecuteNoneQuery(new SqlCommand("UPDATE THAM_SO SET PhieuDangKy = " + id));

        }

        public static long LayHoaDon()
        {
            DataService ds = new DataService();
            object obj = ds.ExecuteScalar(new SqlCommand("SELECT HoaDon FROM THAM_SO"));
            return Convert.ToInt32(obj);
        }
        public static void GanHoaDon(long id)
        {
            DataService ds = new DataService();
            ds.ExecuteNoneQuery(new SqlCommand("UPDATE THAM_SO SET HoaDon = " + id));

        }

        public static int LayPhieuNhan()
        {
            DataService ds = new DataService();
            object obj = ds.ExecuteScalar(new SqlCommand("SELECT PhieuNhan FROM THAM_SO"));
            return Convert.ToInt32(obj);
        }
        public static void GanPhieuNhan(int id)
        {
            DataService ds = new DataService();
            ds.ExecuteNoneQuery(new SqlCommand("UPDATE THAM_SO SET PhieuNhan = " + id));

        }

        public static long HoaDon
        {
            get 
            {
                DataService ds = new DataService();
                object obj = ds.ExecuteScalar(new SqlCommand("SELECT HoaDon FROM THAM_SO"));
                return Convert.ToInt32(obj);
            }
            set
            {
                DataService ds = new DataService();
                ds.ExecuteNoneQuery(new SqlCommand("UPDATE THAM_SO SET HoaDon = " + value));
            }
        }
       
    }
}
