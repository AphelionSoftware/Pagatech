﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Aphelion.FileImport;

namespace Aphelion.FileImport.WindowsTester
{
    public partial class Form1 : Form
    {
        private FileType ft = new FileType();
        private FileReader fr;
        private DataTable dtResults;
        private bool Parse = false;
        public Form1()
        {
            InitializeComponent();
        }

        private void btnImportToDT_Click(object sender, EventArgs e)
        {

            Parse = false;
            ImportFile();
        }

        private void ImportFile()
        {
            if (lstViewFileType.SelectedItems.Count == 0)
            {
                MessageBox.Show("Select a filetype.");
                return;
            }
            if (lstViewFileType.SelectedItems[0].Name == "CSV")
            {
                ft = FileType.CSV;
            }
            else if (lstViewFileType.SelectedItems[0].Name == "Excel 2003")
            {
                ft = FileType.Excel2003;
            }
            else if (lstViewFileType.SelectedItems[0].Name == "Excel 2007")
            {
                ft = FileType.Excel2007;
            }
            backgroundWorkerImportDT.RunWorkerAsync();
        }

        private void backgroundWorkerImportDT_DoWork(object sender, DoWorkEventArgs e)
        {
            fr = new FileReader(ft, this.txtFileName.Text,backgroundWorkerImportDT);
            fr.iStartRow = System.Convert.ToInt32(txtStartRow.Text);
            fr.ImportFile();
        }

        private void backgroundWorkerImportDT_ProgressChanged(object sender, ProgressChangedEventArgs e)
        {
            this.txtProgress.Text = e.UserState.ToString();
        }

        private void btnImport_Click(object sender, EventArgs e)
        {
            Parse = true;
            ImportFile();
            
        }

        private void backgroundWorkerParse_DoWork(object sender, DoWorkEventArgs e)
        {
            DataTableImport dti = new DataTableImport(this.txtConn.Text, this.txtSchema.Text, this.txtTable.Text);
            if (dtResults != null)
            {
                dti.dtSource = dtResults;
                dti.backWorker = backgroundWorkerParse;
                dti.BulkImport();
            }
        }

        private void backgroundWorkerParse_ProgressChanged(object sender, ProgressChangedEventArgs e)
        {
            this.txtProgress.Text = e.UserState.ToString();
        }

        private void backgroundWorkerImportDT_RunWorkerCompleted(object sender, RunWorkerCompletedEventArgs e)
        {
            this.dtResults = fr.dtResults;
            if (Parse)
            {
                backgroundWorkerParse.RunWorkerAsync();
            }
        }
    }
}
