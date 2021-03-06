namespace QUANLYKHACHSAN.UserInterface
{
    partial class TimPhieuThue
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.labelX2 = new DevComponents.DotNetBar.LabelX();
            this.labelX1 = new DevComponents.DotNetBar.LabelX();
            this.btnHuyBo = new DevComponents.DotNetBar.ButtonX();
            this.btnDongY = new DevComponents.DotNetBar.ButtonX();
            this.cmbMaPhieuThue = new System.Windows.Forms.ComboBox();
            this.SuspendLayout();
            // 
            // labelX2
            // 
            this.labelX2.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.labelX2.ForeColor = System.Drawing.Color.Navy;
            this.labelX2.Location = new System.Drawing.Point(12, 59);
            this.labelX2.Name = "labelX2";
            this.labelX2.Size = new System.Drawing.Size(75, 23);
            this.labelX2.TabIndex = 9;
            this.labelX2.Text = "Phiếu thuê";
            // 
            // labelX1
            // 
            this.labelX1.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.labelX1.ForeColor = System.Drawing.Color.Blue;
            this.labelX1.Location = new System.Drawing.Point(70, 8);
            this.labelX1.Name = "labelX1";
            this.labelX1.Size = new System.Drawing.Size(129, 23);
            this.labelX1.TabIndex = 8;
            this.labelX1.Text = "PHIẾU THUÊ";
            // 
            // btnHuyBo
            // 
            this.btnHuyBo.AccessibleRole = System.Windows.Forms.AccessibleRole.PushButton;
            this.btnHuyBo.ColorTable = DevComponents.DotNetBar.eButtonColor.OrangeWithBackground;
            this.btnHuyBo.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnHuyBo.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnHuyBo.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(0)))), ((int)(((byte)(192)))));
            this.btnHuyBo.Image = global::QUANLYKHACHSAN.Properties.Resources.stop;
            this.btnHuyBo.Location = new System.Drawing.Point(138, 107);
            this.btnHuyBo.Name = "btnHuyBo";
            this.btnHuyBo.Size = new System.Drawing.Size(81, 30);
            this.btnHuyBo.TabIndex = 6;
            this.btnHuyBo.Text = "Hủy bỏ";
            // 
            // btnDongY
            // 
            this.btnDongY.AccessibleRole = System.Windows.Forms.AccessibleRole.PushButton;
            this.btnDongY.ColorTable = DevComponents.DotNetBar.eButtonColor.OrangeWithBackground;
            this.btnDongY.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.btnDongY.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnDongY.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(0)))), ((int)(((byte)(192)))));
            this.btnDongY.Image = global::QUANLYKHACHSAN.Properties.Resources.Ok;
            this.btnDongY.Location = new System.Drawing.Point(32, 107);
            this.btnDongY.Name = "btnDongY";
            this.btnDongY.Size = new System.Drawing.Size(78, 30);
            this.btnDongY.TabIndex = 5;
            this.btnDongY.Text = "Đồng ý";
            // 
            // cmbMaPhieuThue
            // 
            this.cmbMaPhieuThue.FormattingEnabled = true;
            this.cmbMaPhieuThue.Location = new System.Drawing.Point(98, 59);
            this.cmbMaPhieuThue.Name = "cmbMaPhieuThue";
            this.cmbMaPhieuThue.Size = new System.Drawing.Size(121, 21);
            this.cmbMaPhieuThue.TabIndex = 10;
            // 
            // TimPhieuThue
            // 
            this.AcceptButton = this.btnDongY;
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.CancelButton = this.btnHuyBo;
            this.ClientSize = new System.Drawing.Size(252, 168);
            this.Controls.Add(this.cmbMaPhieuThue);
            this.Controls.Add(this.labelX2);
            this.Controls.Add(this.labelX1);
            this.Controls.Add(this.btnHuyBo);
            this.Controls.Add(this.btnDongY);
            this.Name = "TimPhieuThue";
            this.StartPosition = System.Windows.Forms.FormStartPosition.Manual;
            this.Text = "TimPhieuThue";
            this.Load += new System.EventHandler(this.TimPhieuThue_Load);
            this.ResumeLayout(false);

        }

        #endregion

        private DevComponents.DotNetBar.LabelX labelX2;
        private DevComponents.DotNetBar.LabelX labelX1;
        private DevComponents.DotNetBar.ButtonX btnHuyBo;
        private DevComponents.DotNetBar.ButtonX btnDongY;
        public System.Windows.Forms.ComboBox cmbMaPhieuThue;
    }
}