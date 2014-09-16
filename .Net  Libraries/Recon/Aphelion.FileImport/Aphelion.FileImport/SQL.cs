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
        /// 0: Section Code
        /// Fields
        /// 0: ID
        /// 1: Code
        /// 2: Name
        /// 3: StagingTableSchema
        /// 4: StagingTableName
        /// 5: FileDefinitionID
        /// 6: StartRow
        /// 7: NumRow
        /// 8: StartColumn
        /// 9: NumColumns
        /// 10: Pivot data table
        /// 11: Has header
        /// </summary>
        public const string constGetSectionDetails = @"
SELECT [ID]
      ,[Code]
      ,[Name]
      ,[StagingTableSchema]
      ,[StagingTableName]
      ,[FileDefinitionID]
      ,[StartRow]
      ,[NumRows]
      ,ISNULL([StartColumn],0) [StartColumn]
      ,ISNULL([NumColumns], 0) [NumColumns]
      ,[Pivot]
      ,[HeaderRow]
      FROM [Import].[FileSection]
	  WHERE [Code] = '{0}' ";


        /// <summary>
        /// 0: Section Code
        /// Fields:
        /// 0: DB ColumnName
        /// 1: File Column Position
        /// </summary>
        public const string constGetFieldPositions = @"
SELECT [ColumnName]
      ,[Position]
      FROM [Import].[FileField] FF
	JOIN [Import].[FileSection] FS
	ON FF.FileSectionID = FS.ID
	WHERE FS.Code = '{0}'";
    }

}
