using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Aphelion.Recon
{
    public static class SQL
    {

        #region GetDefinitions
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

        /// <summary>
        /// 0: Imported File ID
        /// Fields:
        /// 0: Uploaded filename
        /// 1: FileDefinitionID
        /// 2: ReconsummaryID
        /// 3: File Extension
        /// 4: FileTypeCode
        /// 5: SectionCode
        /// 6: FileSectionID
        /// 7: Imported File ID
        /// </summary>
        public const string constGetFileDefinition = @"SELECT  
        RIF.[UploadedFileName]
      ,RIF.[FileDefinitionID]
      ,RIF.[ReconSummaryID]
	  ,FT.Extension
	  ,FT.Code FileTypeCode
	  ,FS.Code SectionCode
	  ,FS.ID FileSectionID
      , RIF.ID
  FROM [Recon].[ImportedFile]  (nolock) RIF
  INNER JOIN Import.FileDefinition FD
	ON RIF.FileDefinitionID = FD.ID
  INNER JOIN Import.FileType FT
	ON FD.FileTypeID = FT.ID
  INNER JOIN Import.FileSection FS
	ON RIF.FileDefinitionID = FS.FileDefinitionID
WHERE RIF.ID = '{0}'";


        #endregion
        #region Update Definitions
        /// <summary>
        /// 0: Schema
        /// 1: Table
        /// 2: Update ID
        /// NB: This update assumes no imports for same definition run in parallel!
        /// </summary>
        public const string constUpdateImportedFileID = @"
UPDATE [{0}].[{1}]
    SET ImportedFileID = {2}
    WHERE ImportedFileID IS NULL
";

        #endregion

    }
   
}
