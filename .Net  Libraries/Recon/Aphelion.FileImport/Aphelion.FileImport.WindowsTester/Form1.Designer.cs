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
            System.Windows.Forms.ListViewItem listViewItem1 = new System.Windows.Forms.ListViewItem("CSV");
            System.Windows.Forms.ListViewItem listViewItem2 = new System.Windows.Forms.ListViewItem("Excel 2003");
            System.Windows.Forms.ListViewItem listViewItem3 = new System.Windows.Forms.ListViewItem("Excel 2007");
            this.btnImportToDT = new System.Windows.Forms.Button();
            this.txtProgress = new System.Windows.Forms.TextBox();
            this.backgroundWorkerImportDT = new System.ComponentModel.BackgroundWorker();
            this.lstViewFileType = new System.Windows.Forms.ListView();
            this.txtStartRow = new System.Windows.Forms.TextBox();
            this.btnImport = new System.Windows.Forms.Button();
            this.backgroundWorkerParse = new System.ComponentModel.BackgroundWorker();
            this.txtTable = new System.Windows.Forms.TextBox();
            this.txtSchema = new System.Windows.Forms.TextBox();
            this.btnImportStagingSection = new System.Windows.Forms.Button();
            this.backgroundWorkerSection = new System.ComponentModel.BackgroundWorker();
            this.txtSectionCode = new System.Windows.Forms.TextBox();
            this.txtConn = new System.Windows.Forms.TextBox();
            this.txtFileName = new System.Windows.Forms.TextBox();
            this.SuspendLayout();
            // 
            // btnImportToDT
            // 
            this.btnImportToDT.BackColor = System.Drawing.Color.LemonChiffon;
            this.btnImportToDT.FlatAppearance.BorderSize = 0;
            this.btnImportToDT.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnImportToDT.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnImportToDT.Location = new System.Drawing.Point(1464, 10);
            this.btnImportToDT.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.btnImportToDT.Name = "btnImportToDT";
            this.btnImportToDT.Size = new System.Drawing.Size(107, 65);
            this.btnImportToDT.TabIndex = 0;
            this.btnImportToDT.Text = "Import to data table";
            this.btnImportToDT.UseVisualStyleBackColor = false;
            this.btnImportToDT.Click += new System.EventHandler(this.btnImportToDT_Click);
            // 
            // txtProgress
            // 
            this.txtProgress.BackColor = System.Drawing.Color.White;
            this.txtProgress.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.txtProgress.Enabled = false;
            this.txtProgress.Location = new System.Drawing.Point(865, 150);
            this.txtProgress.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.txtProgress.Multiline = true;
            this.txtProgress.Name = "txtProgress";
            this.txtProgress.Size = new System.Drawing.Size(721, 377);
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
            listViewItem1,
            listViewItem2,
            listViewItem3});
            this.lstViewFileType.Location = new System.Drawing.Point(677, 48);
            this.lstViewFileType.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.lstViewFileType.MultiSelect = false;
            this.lstViewFileType.Name = "lstViewFileType";
            this.lstViewFileType.Size = new System.Drawing.Size(179, 58);
            this.lstViewFileType.TabIndex = 3;
            this.lstViewFileType.UseCompatibleStateImageBehavior = false;
            // 
            // txtStartRow
            // 
            this.txtStartRow.Location = new System.Drawing.Point(83, 50);
            this.txtStartRow.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.txtStartRow.Name = "txtStartRow";
            this.txtStartRow.Size = new System.Drawing.Size(72, 22);
            this.txtStartRow.TabIndex = 4;
            this.txtStartRow.Text = "14";
            // 
            // btnImport
            // 
            this.btnImport.BackColor = System.Drawing.SystemColors.InactiveCaption;
            this.btnImport.Enabled = false;
            this.btnImport.FlatAppearance.BorderSize = 0;
            this.btnImport.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnImport.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnImport.ForeColor = System.Drawing.SystemColors.InactiveCaptionText;
            this.btnImport.Location = new System.Drawing.Point(1349, 10);
            this.btnImport.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.btnImport.Name = "btnImport";
            this.btnImport.Size = new System.Drawing.Size(107, 65);
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
            this.txtTable.Enabled = false;
            this.txtTable.Location = new System.Drawing.Point(16, 182);
            this.txtTable.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.txtTable.Name = "txtTable";
            this.txtTable.Size = new System.Drawing.Size(504, 22);
            this.txtTable.TabIndex = 7;
            this.txtTable.Text = "SkyeImportDetails";
            // 
            // txtSchema
            // 
            this.txtSchema.Enabled = false;
            this.txtSchema.Location = new System.Drawing.Point(16, 150);
            this.txtSchema.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.txtSchema.Name = "txtSchema";
            this.txtSchema.Size = new System.Drawing.Size(504, 22);
            this.txtSchema.TabIndex = 8;
            this.txtSchema.Text = "Staging";
            // 
            // btnImportStagingSection
            // 
            this.btnImportStagingSection.BackColor = System.Drawing.Color.YellowGreen;
            this.btnImportStagingSection.FlatAppearance.BorderSize = 0;
            this.btnImportStagingSection.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnImportStagingSection.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnImportStagingSection.Location = new System.Drawing.Point(1222, 10);
            this.btnImportStagingSection.Margin = new System.Windows.Forms.Padding(4);
            this.btnImportStagingSection.Name = "btnImportStagingSection";
            this.btnImportStagingSection.Size = new System.Drawing.Size(107, 65);
            this.btnImportStagingSection.TabIndex = 10;
            this.btnImportStagingSection.Text = "Import to staging";
            this.btnImportStagingSection.UseVisualStyleBackColor = false;
            this.btnImportStagingSection.Click += new System.EventHandler(this.button1_Click);
            // 
            // backgroundWorkerSection
            // 
            this.backgroundWorkerSection.WorkerReportsProgress = true;
            this.backgroundWorkerSection.WorkerSupportsCancellation = true;
            this.backgroundWorkerSection.DoWork += new System.ComponentModel.DoWorkEventHandler(this.backgroundWorkerSection_DoWork);
            // 
            // txtSectionCode
            // 
            this.txtSectionCode.DataBindings.Add(new System.Windows.Forms.Binding("Text", global::Aphelion.FileImport.WindowsTester.Properties.Settings.Default, "txtSectionCode_Text", true, System.Windows.Forms.DataSourceUpdateMode.OnPropertyChanged));
            this.txtSectionCode.Location = new System.Drawing.Point(13, 212);
            this.txtSectionCode.Margin = new System.Windows.Forms.Padding(4);
            this.txtSectionCode.Name = "txtSectionCode";
            this.txtSectionCode.Size = new System.Drawing.Size(504, 22);
            this.txtSectionCode.TabIndex = 9;
            this.txtSectionCode.Text = global::Aphelion.FileImport.WindowsTester.Properties.Settings.Default.txtSectionCode_Text;
            // 
            // txtConn
            // 
            this.txtConn.DataBindings.Add(new System.Windows.Forms.Binding("Text", global::Aphelion.FileImport.WindowsTester.Properties.Settings.Default, "txtConn_Text", true, System.Windows.Forms.DataSourceUpdateMode.OnPropertyChanged));
            this.txtConn.Location = new System.Drawing.Point(16, 114);
            this.txtConn.Margin = new System.Windows.Forms.Padding(4);
            this.txtConn.Name = "txtConn";
            this.txtConn.Size = new System.Drawing.Size(840, 22);
            this.txtConn.TabIndex = 5;
            this.txtConn.Text = global::Aphelion.FileImport.WindowsTester.Properties.Settings.Default.txtConn_Text;
            // 
            // txtFileName
            // 
            this.txtFileName.DataBindings.Add(new System.Windows.Forms.Binding("Text", global::Aphelion.FileImport.WindowsTester.Properties.Settings.Default, "txtFileName_Text", true, System.Windows.Forms.DataSourceUpdateMode.OnPropertyChanged));
            this.txtFileName.Location = new System.Drawing.Point(16, 18);
            this.txtFileName.Margin = new System.Windows.Forms.Padding(4);
            this.txtFileName.Name = "txtFileName";
            this.txtFileName.Size = new System.Drawing.Size(1119, 22);
            this.txtFileName.TabIndex = 1;
            this.txtFileName.Text = global::Aphelion.FileImport.WindowsTester.Properties.Settings.Default.txtFileName_Text;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1593, 542);
            this.Controls.Add(this.btnImportStagingSection);
            this.Controls.Add(this.txtSectionCode);
            this.Controls.Add(this.txtSchema);
            this.Controls.Add(this.txtTable);
            this.Controls.Add(this.btnImport);
            this.Controls.Add(this.txtConn);
            this.Controls.Add(this.txtStartRow);
            this.Controls.Add(this.lstViewFileType);
            this.Controls.Add(this.txtProgress);
            this.Controls.Add(this.txtFileName);
            this.Controls.Add(this.btnImportToDT);
            this.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
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
        private System.Windows.Forms.TextBox txtSectionCode;
        private System.Windows.Forms.Button btnImportStagingSection;
        private System.ComponentModel.BackgroundWorker backgroundWorkerSection;
    }
}

