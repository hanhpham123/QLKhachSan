using System;
using System.Collections.Generic;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using System.Windows.Forms;

namespace QUANLYKHACHSAN.Setting
{
    public class DataService:DataTable
    {       
        static SqlConnection m_Connection;
        SqlDataAdapter m_DataAdapter;
        SqlCommand m_Command;
       
        public static string strConn = @"Data Source=DESKTOP-CRL670A\SQLEXPRESS;Initial Catalog=QUANLYKHACHSANKIMANH;Integrated Security=True;";
        
        public DataService()
        {

        }
        public void Load(SqlCommand command)
        {
            m_DataAdapter = new SqlDataAdapter();
            m_Command = new SqlCommand();
            if (m_Connection == null || m_Connection.State == ConnectionState.Closed)
            {
                m_Connection = new SqlConnection(strConn);
                m_Connection.Open();
            }

            m_Command = command;
            m_Command.Connection = m_Connection;
            m_DataAdapter = new SqlDataAdapter(m_Command);
            this.Clear();
            m_DataAdapter.Fill(this);
        }

        public static bool OpenConnection()
        {
            try
            {
                if (m_Connection == null)
                    m_Connection = new SqlConnection(strConn);
                if (m_Connection.State == ConnectionState.Closed)
                    m_Connection.Open();
                return true;
            }
            catch
            {
                m_Connection.Close();
                return false;
            }
        }

        public void Update()
        {
            SqlCommandBuilder buider = new SqlCommandBuilder(m_DataAdapter);
            m_DataAdapter.Update(this);
            ////int result = 0;
            //SqlTransaction m_SqlTransaction = null;
            //try
            //{
            //    m_SqlTransaction = m_Connection.BeginTransaction();

            //    m_Command.Connection = m_Connection;
            //    m_Command.Transaction = m_SqlTransaction;

            //    m_DataAdapter = new SqlDataAdapter();
            //    m_DataAdapter.SelectCommand = m_Command;

            //    SqlCommandBuilder buider = new SqlCommandBuilder(m_DataAdapter);
            //    m_DataAdapter.Update(this);
            //    m_SqlTransaction.Commit();
            //}           
            //catch (Exception e)
            //{
            //    if (m_SqlTransaction != null)
            //        m_SqlTransaction.Rollback();
            //    throw;                
            //}
            ////return result;
        }
        public void UpdatePassWord(String tenDangNhap, String matKhauMoi)
        {
            m_Command = new SqlCommand();
            m_DataAdapter = new SqlDataAdapter();
            String sql = "UPDATE NGUOI_DUNG SET MatKhau=@matKhau WHERE TenDangNhap = @ten";
            SqlCommand cmd = new SqlCommand(sql);
            cmd.Parameters.Add("ten", SqlDbType.VarChar).Value = tenDangNhap;
            cmd.Parameters.Add("matKhau", SqlDbType.VarChar).Value = matKhauMoi;
            if (m_Connection == null || m_Connection.State == ConnectionState.Closed)
            {
                m_Connection = new SqlConnection(strConn);
                m_Connection.Open();
            }

            m_Command = cmd;
            m_Command.Connection = m_Connection;
            m_DataAdapter = new SqlDataAdapter(m_Command);
            //this.Clear();
            m_DataAdapter.Fill(this);
            SqlCommandBuilder buider = new SqlCommandBuilder(m_DataAdapter);
            m_DataAdapter.Update(this);

        }

        public int ExecuteNoneQuery()
        {
            int result = 0;
            SqlTransaction tr = null;
            // m_Dataset = new DataSet();
            try
            {
                tr = m_Connection.BeginTransaction();

                m_Command.Connection = m_Connection;
                m_Command.Transaction = tr;

                m_DataAdapter = new SqlDataAdapter();
                m_DataAdapter.SelectCommand = m_Command;

                SqlCommandBuilder builder = new SqlCommandBuilder(m_DataAdapter);

                result = m_DataAdapter.Update(this);
                //m_DataAdapter.Fill(m_Dataset);
                tr.Commit();

            }
            catch (Exception e)
            {
                if (tr != null) tr.Rollback();

            }
            return result;
        }        
        /// <summary>
        /// Thuc thi mot command
        /// </summary>
        /// <param name="command">OleDb hay Store Procedure</param>
        /// <returns></returns>
        public int ExecuteNoneQuery(SqlCommand cmd)
        {

            int result = 0;
            SqlTransaction tr = null;

            try
            {
                tr = m_Connection.BeginTransaction();

                cmd.Connection = m_Connection;

                cmd.Transaction = tr;

                result = cmd.ExecuteNonQuery();

                this.AcceptChanges();

                tr.Commit();

            }
            catch (Exception e)
            {
                if (tr != null) tr.Rollback();
                throw;
            }
            return result;

        }

        public object ExecuteScalar(SqlCommand cmd)
        {
            object result = null;
            SqlTransaction tr = null;

            //try
            //{
            tr = m_Connection.BeginTransaction();

            cmd.Connection = m_Connection;

            cmd.Transaction = tr;

            result = cmd.ExecuteScalar();

            this.AcceptChanges();

            tr.Commit();

            if (result == DBNull.Value)
            {
                result = null;
            }
            //}
            //catch
            //{
            //    if (tr != null) tr.Rollback();
            //    throw;
            //}
            return result;
        }      
    }
}
