using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Aphelion.Recon
{
    public static class SQL
    {
        /// <summary>
        /// 0: is Process Step code
        /// 1: is source or destination
        /// Fields
        /// 1 Is FieldTypeCode
        /// 2 is Staging table schema
        /// 3 is Staging table name
        /// 4 is Column name 
        /// </summary>
        public const string constSQLGetImportFields = @"
select FT.Code FieldTypeCode, FS.StagingTableSchema, FS.StagingTableName, FF.ColumnName from admin.ReconField RF
JOIN Admin.FieldType FT
ON RF.FieldTypeID = FT.ID
JOIN Import.FileField FF
ON RF.FileFieldID = FF.ID
JOIN Import.FileSection FS
on FF.FileSectionID = FS.ID

JOIN admin.ReconProcessStep RPS
ON RF.reconProcessStepID = RPS.ID
AND FS.id = RPS.{1}FileSectionID

WHERE RPS.Code = '{0}'";
    }
}
