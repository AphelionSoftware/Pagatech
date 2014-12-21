using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.LightSwitch;
using Microsoft.LightSwitch.Security.Server;
using System.IO;
using System.IO;
using Aphelion.Recon;

using System.Configuration;

namespace LightSwitchApplication
{
    public partial class PagaReconDataService
    {

        private string strUser = "";
        public string UserName
        {
            get
            {
                if (strUser == "")
                {
                    switch (Application.User.Name)
                    {
                        case "TestUser":
                            strUser = Environment.UserName;
                            break;
                        case "":
                            strUser = Environment.UserName;
                            break;
                        case null:
                            strUser = Environment.UserName;
                            break;


                        default:
                            strUser = Application.User.Name;
                            break;
                    }

                    if (strUser == "" || strUser == null)
                    {
                        strUser = Application.User.PersonId;
                    }

                }

                if (strUser.Contains("|"))
                {
                    strUser = strUser.Split('|')[2];
                }
                return strUser;
            }
        }


        private int ImportFileID = 0;

        #region Filepath
        private string _Filepath;
        private string Filepath
        {
            get
            {
                if (_Filepath == "" || _Filepath == null)
                {

                        _Filepath = (from GlobalSetting gs in DataWorkspace.PagaReconData.GlobalSettings
                                           where gs.Code.ToUpper() == "FILEPATH"
                                           select System.Convert.ToString(gs.Value)).First();
                 
                    
                }
                return (string)_Filepath;
            }

        }
        #endregion

        partial void ImportedFiles_Inserting(ImportedFile entity)
        {
            string filePath = string.Format(@"{0}\{1}", this.Filepath, entity.FileName).Replace("\\\\", "\\");
            using (Stream FileStream =
                new MemoryStream(entity.FileContents))
            {
                FileInfo fi = new FileInfo(filePath);

                // If file exists - delete it
                if (fi.Exists)
                {
  
                        fi.Delete();
              
                }

                using (FileStream fs = File.Create(filePath))
                {
                    // Save the file
                    SaveFile(FileStream, fs);
                    fs.Close();
                }
                entity.UploadedFileName = filePath;
                entity.sys_CreatedBy = this.UserName;
                entity.sys_ModifiedBy = this.UserName;
                entity.sys_CreatedOn = System.DateTime.Now; 
                entity.sys_ModifiedOn = System.DateTime.Now;
            }


        }
        #region SaveFile
        private void SaveFile(Stream stream, FileStream fs)
        {
            byte[] buffer = new byte[4096];
            int bytesRead;
            while ((bytesRead = stream.Read(buffer, 0, buffer.Length)) != 0)
            {
                fs.Write(buffer, 0, bytesRead);
            }
        }
        #endregion

        partial void ImportedFiles_Inserted(ImportedFile entity)
        {

            string sConn = ConfigurationManager.ConnectionStrings["PagaReconData"].ConnectionString;
            //ImportSection impSec = new ImportSection(sConn, id);
            //ImportFileSections impFS = new ImportFileSections(sConn, entity.ID);
            this.ImportFileID = entity.ID;
        }

        partial void SaveChanges_Executed()
        {
            if (this.ImportFileID > 0)
            {
                string sConn = ConfigurationManager.ConnectionStrings["PagaReconData"].ConnectionString;
                //ImportSection impSec = new ImportSection(sConn, id);
                ImportFileSections impFS = new ImportFileSections(sConn, this.ImportFileID);
            }
            this.ImportFileID = 0;
        }
    }
}
