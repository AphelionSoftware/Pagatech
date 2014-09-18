using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.LightSwitch;
using Microsoft.LightSwitch.Security.Server;
namespace LightSwitchApplication
{
    public partial class ReconDataService
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
                    //For funny Sharepoint users.
                    strUser = strUser.Split('|')[2];
                }
                return strUser;
            }
        }

        partial void FieldTypes_Inserting(FieldType entity)
        {
            entity.sys_CreatedBy = this.UserName;
        }

        partial void FileDefinitions_Inserting(FileDefinition entity)
        {

        }

        partial void FileFields_Inserting(FileField entity)
        {

        }
    }
}
