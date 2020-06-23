using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Text;
using System.Windows.Forms;
using QUANLYKHACHSAN.Controller;
using QUANLYKHACHSAN.BusinessObject;
using QUANLYKHACHSAN.DataPlayer;

namespace QUANLYKHACHSAN.UserInterface
{
    public partial class DSPhong : Form
    {               
        public DSPhong()
        {
            InitializeComponent();
        }
        PhongInFo phong = new PhongInFo();

        protected void  OnPaint(PaintEventArgs e)
        //public override void On  pu l
        {
            PhongData data = new PhongData();
            Graphics gp = this.CreateGraphics();

            List<PhongInFo> phongdb = new List<PhongInFo>();
            List<PhongInFo> phongl1 = new List<PhongInFo>();
            List<PhongInFo> phongl2 = new List<PhongInFo>();

            
            //foreach (DataRow dr in data.LayMaPhong().Rows)
            //{
            //    PhongInFo phong = new PhongInFo();
            //    phong.MaLoaiPhong = (string)dr.ItemArray[1];
            //    phong.MaPhong = (string)dr.ItemArray[0];
            //    phong.TinhTrangPhong = (int)dr.ItemArray[2];
                
            //    switch (phong.MaLoaiPhong)
            //    {
            //        case "DB": phongdb.Add(phong); break;
            //        case "LI": phongl1.Add(phong); break;
            //        case "LII": phongl2.Add(phong); break;
            //    }
            //}
                       
            //ve
            int x = 10;
            int y = 60;

            for (int i = 0; i < phongdb.Count; i++)
            {
                if (x > 480)
                {
                    y = y + 40;
                    x = 10;
                }
                switch (phongdb[i].TinhTrangPhong)
                {
                    case 1:
                        {
                            StringFormat s = new StringFormat();
                            s.Alignment = StringAlignment.Center;
                            s.LineAlignment = StringAlignment.Center;
                            Rectangle r = new Rectangle((x) + 15, y, 50, 30);
                            gp.DrawRectangle(new Pen(Color.White), r);
                            gp.FillRectangle(new SolidBrush(Color.LightSeaGreen), r);
                            gp.DrawString(phongdb[i].MaPhong.ToString(), this.Font, new SolidBrush(Color.White), r, s);
                            break;
                        }
                    case 2:
                        {
                            StringFormat s = new StringFormat();
                            s.Alignment = StringAlignment.Center;
                            s.LineAlignment = StringAlignment.Center;
                            Rectangle r = new Rectangle((x) + 15, y, 50, 30);
                            gp.DrawRectangle(new Pen(Color.White), r);
                            gp.FillRectangle(new SolidBrush(Color.MediumVioletRed), r);
                            gp.DrawString(phongdb[i].MaPhong.ToString(), this.Font, new SolidBrush(Color.White), r, s);
                            break;
                        }
                    case 3:
                        {
                            StringFormat s = new StringFormat();
                            s.Alignment = StringAlignment.Center;
                            s.LineAlignment = StringAlignment.Center;
                            Rectangle r = new Rectangle((x) + 15, y, 50, 30);
                            gp.DrawRectangle(new Pen(Color.White), r);
                            gp.FillRectangle(new SolidBrush(Color.Red), r);
                            gp.DrawString(phongdb[i].MaPhong.ToString(), this.Font, new SolidBrush(Color.White), r, s);
                            break;
                        }
                }
                x = x + 70;
            }
            x = 10;
            y = y + 50;
            gp.DrawLine(new Pen(Color.Black, 3), new Point(25, y-10), new Point(x + 485, y-10));
            for (int i = 0; i < phongl1.Count; i++)
            {
                if (x>480)
                {
                    y = y + 40;
                    x = 10;
                }
                switch (phongl1[i].TinhTrangPhong)
                {
                    case 1:
                        {
                            StringFormat s = new StringFormat();
                            s.Alignment = StringAlignment.Center;
                            s.LineAlignment = StringAlignment.Center;
                            Rectangle r = new Rectangle((x) + 15, y, 50, 30);
                            gp.DrawRectangle(new Pen(Color.White), r);
                            gp.FillRectangle(new SolidBrush(Color.LightSeaGreen), r);
                            gp.DrawString(phongl1[i].MaPhong.ToString(), this.Font, new SolidBrush(Color.White), r, s);
                            break;
                        }
                    case 2:
                        {
                            StringFormat s = new StringFormat();
                            s.Alignment = StringAlignment.Center;
                            s.LineAlignment = StringAlignment.Center;
                            Rectangle r = new Rectangle((x) + 15, y, 50, 30);
                            gp.DrawRectangle(new Pen(Color.White), r);                    
                            gp.FillRectangle(new SolidBrush(Color.MediumVioletRed), r);
                            gp.DrawString(phongl1[i].MaPhong.ToString(), this.Font, new SolidBrush(Color.White), r, s);
                            break;
                        }
                    case 3:
                        {
                            StringFormat s = new StringFormat();
                            s.Alignment = StringAlignment.Center;
                            s.LineAlignment = StringAlignment.Center;
                            Rectangle r = new Rectangle((x) + 15, y, 50, 30);
                            gp.DrawRectangle(new Pen(Color.White), r);
                            gp.FillRectangle(new SolidBrush(Color.Red), r);
                            gp.DrawString(phongl1[i].MaPhong.ToString(), this.Font, new SolidBrush(Color.White), r, s);
                            break;
                        }
                }
                x = x + 70;
                
            }
            
            x = 10;
            y = y + 50;
            gp.DrawLine(new Pen(Color.Black, 3), new Point(25, y-10), new Point(x + 485, y-10));
            for (int i = 0; i < phongl2.Count; i++)
            {
                if (x > 480)
                {
                    x = 10;
                    y += 40;
                }
                switch (phongl2[i].TinhTrangPhong)
                {
                    case 1:
                        {
                            StringFormat s = new StringFormat();
                            s.Alignment = StringAlignment.Center;
                            s.LineAlignment = StringAlignment.Center;
                            Rectangle r = new Rectangle((x) + 15, y, 50, 30);
                            gp.DrawRectangle(new Pen(Color.White), r);
                            gp.FillRectangle(new SolidBrush(Color.LightSeaGreen), r);
                            gp.DrawString(phongl2[i].MaPhong.ToString(), this.Font, new SolidBrush(Color.White), r, s);
                            break;
                        }
                    case 2:
                        {
                            StringFormat s = new StringFormat();
                            s.Alignment = StringAlignment.Center;
                            s.LineAlignment = StringAlignment.Center;
                            Rectangle r = new Rectangle((x) + 15, y, 50, 30);
                            gp.DrawRectangle(new Pen(Color.White), r);
                            gp.FillRectangle(new SolidBrush(Color.MediumVioletRed), r);
                            gp.DrawString(phongl2[i].MaPhong.ToString(), this.Font, new SolidBrush(Color.White), r, s);
                            break;
                        }
                    case 3:
                        {
                            StringFormat s = new StringFormat();
                            s.Alignment = StringAlignment.Center;
                            s.LineAlignment = StringAlignment.Center;
                            Rectangle r = new Rectangle((x) + 15, y, 50, 30);
                            gp.DrawRectangle(new Pen(Color.White), r);
                            gp.FillRectangle(new SolidBrush(Color.Red), r);
                            gp.DrawString(phongl2[i].MaPhong.ToString(), this.Font, new SolidBrush(Color.White), r, s);
                            break;
                        }
                }
                x += 70;
                
            }
            gp.Dispose();
        }

        private void buttonX1_Click(object sender, EventArgs e)
        {
            PhieuDangKy pdk = new PhieuDangKy();
            pdk.ShowDialog();
        }

        private void buttonX2_Click(object sender, EventArgs e)
        {
            PhieuNhanPhong pn = new PhieuNhanPhong();
            pn.ShowDialog();  
        }

        private void buttonX3_Click(object sender, EventArgs e)
        {
            HoaDon hd = new HoaDon();
            hd.ShowDialog();
        }

         /*private void DSPhong_Load(object sender, EventArgs e)
        {
            PhongData data = new PhongData();
            listViewEx1.Items.Clear();
            foreach (DataRow dr in data.LayMaPhong().Rows)
            {
                PhongInFo phong = new PhongInFo();
                phong.MaLoaiPhong = (string)dr.ItemArray[1];
                phong.MaPhong = (string)dr.ItemArray[0];
                phong.TinhTrangPhong = (int)dr.ItemArray[2];
                ListViewItem item = new ListViewItem(phong.MaPhong);
                
                    if (phong.TinhTrangPhong == 1)
                    {
                        item.ImageIndex = 0;

                    }
                    else if (phong.TinhTrangPhong == 2)
                    {
                        item.ImageIndex = 1;
                    }
                    else
                    {
                        item.ImageIndex = 2;
                    }
              
                listViewEx1.Items.Add(item);
            }
           
        }*/

        private void traPhongToolStripMenuItem_Click(object sender, EventArgs e)
        {
            HoaDon hd = new HoaDon();
            hd.ShowDialog();
        }

        private void dangKyPhongToolStripMenuItem_Click(object sender, EventArgs e)
        {
            DanhSachKhachHangDangKyThuePhong ds = new DanhSachKhachHangDangKyThuePhong();
            ds.ShowDialog();
        }           
    }
}