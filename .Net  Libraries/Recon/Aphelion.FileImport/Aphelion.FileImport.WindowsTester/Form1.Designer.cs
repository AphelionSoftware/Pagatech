namespace Aphelion.FileImport.WindowsTester
{
    partial class Form1
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
            System.Windows.Forms.ListViewItem listViewItem4 = new System.Windows.Forms.ListViewItem("CSV");
            System.Windows.Forms.ListViewItem listViewItem5 = new System.Windows.Forms.ListViewItem("Excel 2003");
            System.Windows.Forms.ListViewItem listViewItem6 = new System.Windows.Forms.ListViewItem("Excel 2007");
            this.btnImportToDT = new System.Windows.Forms.Button();
            this.txtFileName = new System.Windows.Forms.TextBox();
            this.txtProgress = new System.Windows.Forms.TextBox();
            this.backgroundWorkerImportDT = new System.ComponentModel.BackgroundWorker();
            this.lstViewFileType = new System.Windows.Forms.ListView();
            this.txtStartRow = new System.Windows.Forms.TextBox();
            this.txtConn = new System.Windows.Forms.TextBox();
            this.btnImport = new System.Windows.Forms.Button();
            this.backgroundWorkerParse = new System.ComponentModel.BackgroundWorker();
            this.txtTable = new System.Windows.Forms.TextBox();
            this.txtSchema = new System.Windows.Forms.TextBox();
            this.SuspendLayout();
            // 
            // btnImportToDT
            // 
            this.btnImportToDT.BackColor = System.Drawing.Color.LemonChiffon;
            this.btnImportToDT.FlatAppearance.BorderSize = 0;
            this.btnImportToDT.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnImportToDT.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnImportToDT.Location = new System.Drawing.Point(1098, 8);
            this.btnImportToDT.Name = "btnImportToDT";
            this.btnImportToDT.Size = new System.Drawing.Size(80, 53);
            this.btnImportToDT.TabIndex = 0;
            this.btnImportToDT.Text = "Import to data table";
            this.btnImportToDT.UseVisualStyleBackColor = false;
            this.btnImportToDT.Click += new System.EventHandler(this.btnImportToDT_Click);
            // 
            // txtFileName
            // 
            this.txtFileName.Location = new System.Drawing.Point(12, 15);
            this.txtFileName.Name = "txtFileName";
            this.txtFileName.Size = new System.Drawing.Size(840, 20);
            this.txtFileName.TabIndex = 1;
            this.txtFileName.Text = "D:\\Dropbox (PW South Africa)\\Clients\\BIServices_Nigeria\\Pagatech\\R02_Recon\\Recon " +
    "Processes\\Bank Recon\\RawBankDownloads\\Skye_116738_1408443339269.CSV";
            // 
            // txtProgress
            // 
            this.txtProgress.BackColor = System.Drawing.Color.White;
            this.txtProgress.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.txtProgress.Enabled = false;
            this.txtProgress.Location = new System.Drawing.Point(649, 122);
            this.txtProgress.Multiline = true;
            this.txtProgress.Name = "txtProgress";
            this.txtProgress.Size = new System.Drawing.Size(541, 306);
            this.txtProgress.TabIndex = 2;
            // 
            // backgroundWorkerImportDT
            // 
            this.backgroundWorkerImportDT.WorkerReportsProgress = true;
            this.backgroundWorkerImportDT.WorkerSupportsCancellation = true;
            this.backgroundWorkerImportDT.DoWork += new System.ComponentModel.DoWorkEventHandler(this.backgroundWorkerImportDT_DoWork);
            this.backgroundWorkerImportDT.ProgressChanged += new System.ComponentModel.ProgressChangedEventHandler(this.backgroundWorkerImportDT_ProgressChanged);
            this.backgroundWorkerImportDT.RunWorkerCompleted += new System.ComponentModel.RunWorkerCompletedEventHandler(this.backgroundWorkerImportDT_RunWorkerCompleted);
            // 
            // lstViewFileType
            // 
            this.lstViewFileType.Items.AddRange(new System.Windows.Forms.ListViewItem[] {
            listViewItem4,
            listViewItem5,
            listViewItem6});
            this.lstViewFileType.Location = new System.Drawing.Point(508, 39);
            this.lstViewFileType.MultiSelect = false;
            this.lstViewFileType.Name = "lstViewFileType";
            this.lstViewFileType.Size = new System.Drawing.Size(135, 48);
            this.lstViewFileType.TabIndex = 3;
            this.lstViewFileType.UseCompatibleStateImageBehavior = false;
            // 
            // txtStartRow
            // 
            this.txtStartRow.Location = new System.Drawing.Point(62, 41);
            this.txtStartRow.Name = "txtStartRow";
            this.txtStartRow.Size = new System.Drawing.Size(55, 20);
            this.txtStartRow.TabIndex = 4;
            this.txtStartRow.Text = "14";
            // 
            // txtConn
            // 
            this.txtConn.Location = new System.Drawing.Point(12, 93);
            this.txtConn.Name = "txtConn";
            this.txtConn.Size = new System.Drawing.Size(631, 20);
            this.txtConn.TabIndex = 5;
            this.txtConn.Text = "Data Source=.\\sql2012;Initial Catalog=PagaRecon;Integrated Security=True";
            // 
            // btnImport
            // 
            this.btnImport.BackColor = System.Drawing.Color.YellowGreen;
            this.btnImport.FlatAppearance.BorderSize = 0;
            this.btnImport.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnImport.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnImport.Location = new System.Drawing.Point(1012, 8);
            this.btnImport.Name = "btnImport";
            this.btnImport.Size = new System.Drawing.Size(80, 53);
            this.btnImport.TabIndex = 6;
            this.btnImport.Text = "Import to staging";
            this.btnImport.UseVisualStyleBackColor = false;
            this.btnImport.Click += new System.EventHandler(this.btnImport_Click);
            // 
            // backgroundWorkerParse
            // 
            this.backgroundWorkerParse.WorkerReportsProgress = true;
            this.backgroundWorkerParse.WorkerSupportsCancellation = true;
            this.backgroundWorkerParse.DoWork += new System.ComponentModel.DoWorkEventHandler(this.backgroundWorkerParse_DoWork);
            this.backgroundWorkerParse.ProgressChanged += new System.ComponentModel.ProgressChangedEventHandler(this.backgroundWorkerParse_ProgressChanged);
            // 
            // txtTable
            // 
            this.txtTable.Location = new System.Drawing.Point(12, 148);
            this.txtTable.Name = "txtTable";
            this.txtTable.Size = new System.Drawing.Size(379, 20);
            this.txtTable.TabIndex = 7;
            this.txtTable.Text = "SkyeImportDetails";
            // 
            // txtSchema
            // 
            this.txtSchema.Location = new System.Drawing.Point(12, 122);
            this.txtSchema.Name = "txtSchema";
            this.txtSchema.Size = new System.Drawing.Size(379, 20);
            this.txtSchema.TabIndex = 8;
            this.txtSchema.Text = "Staging";
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1195, 440);
            this.Controls.Add(this.txtSchema);
            this.Controls.Add(this.txtTable);
            this.Controls.Add(this.btnImport);
            this.Controls.Add(this.txtConn);
            this.Controls.Add(this.txtStartRow);
            this.Controls.Add(this.lstViewFileType);
            this.Controls.Add(this.txtProgress);
            this.Controls.Add(this.txtFileName);
            this.Controls.Add(this.btnImportToDT);
            this.Name = "Form1";
            this.Text = "Form1";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btnImportToDT;
        private System.Windows.Forms.TextBox txtFileName;
        private System.Windows.Forms.TextBox txtProgress;
        private System.ComponentModel.BackgroundWorker backgroundWorkerImportDT;
        private System.Windows.Forms.ListView lstViewFileType;
        private System.Windows.Forms.TextBox txtStartRow;
        private System.Windows.Forms.TextBox txtConn;
        private System.Windows.Forms.Button btnImport;
        private System.ComponentModel.BackgroundWorker backgroundWorkerParse;
        private System.Windows.Forms.TextBox txtTable;
        private System.Windows.Forms.TextBox txtSchema;
    }
}

