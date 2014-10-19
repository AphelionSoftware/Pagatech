using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.LightSwitch;
using Microsoft.LightSwitch.Security.Server;
using System.IO;
using System.IO;
namespace LightSwitchApplication
{
    public partial class PagaReconDataService
    {
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
    }
}
