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
        /// Fields:
        /// 0 is ID
        /// 1 is Name
        /// 2 is Code
        /// </summary>
        public const string constSQLGetItemStatuses = @"
select ID
		, Name
        , Code
FROM admin.ReconItemStatus RS
";      
        
        /// <summary>
        /// Fields:
        /// 0 is ID
        /// 1 is Name
        /// 2 is Code
        /// </summary>
        public const string constSQLGetStatuses = @"
select ID
		, Name
        , Code
FROM admin.ReconStatus RS
";
        /// <summary>
        /// Fields:
        /// 0 is ID
        /// 1 is Name
        /// 1 is Code
        /// </summary>
        public const string constSQLGetReconTypes = @"
select ID
		, Name
        , Code
FROM admin.ReconType
";

        /// <summary>
        /// 0 is Status code
        /// Fields:
        /// 0 is ID
        /// 1 is Name
        /// </summary>
        public const string constSQLGetStatus = @"
select ID
		, Name
FROM admin.ReconStatus RS
WHERE code = '{0}'
";
        /// <summary>
        /// 0 is Process step code
        /// Fields:
        /// 0 is ID
        /// 1 is Name
        /// 2 is ReconProcessID
        /// 3 is ReconStepID
        /// </summary>
        public const string constSQLGetProcessStep = @"
select ID
		, Name
		, ReconProcessID
		, ReconTypeID
FROM admin.ReconProcessStep RPS
WHERE code = '{0}'
";

        public const string constSQLGetReconDetail = @"
SELECT [RD].[ID]
      ,[RD].[ReconSummaryID]
      ,[RD].[ReconItemStatusID]
      ,[RD].[Value]
      ,[RD].[SourceKey]
      ,[RD].[MatchedReconDetailID]
      ,[RD].[FileDetailID]
  FROM [Recon].[ReconDetail] RD
  JOIN [Recon].[ReconSummary] RS
  ON RD.ReconSummaryID = RD.ID
  JOIN [Admin].[ReconProcessStep] RPS
    ON RS.ReconProcessStepID = RPS.ID
	  WHERE RPS.Code = '{0}'
	  AND [RS].[ReconDate] = {1}
";

        public const string constSQLGetReconSummary = @"
SELECT [RS].[ID]
      ,[RS].[ReconProcessStepID]
      ,[RS].[ReconStart]
      ,[RS].[ReconEnd]
      ,[RS].[ReconStatusID]
      ,[RS].[SourceCount]
      ,[RS].[DestCount]
      ,[RS].[SourceTotal]
      ,[RS].[DestTotal]
      ,[RS].[ReconDate]
      FROM [Recon].[ReconSummary] RS
	  
	  JOIN [Admin].[ReconProcessStep] RPS
	  ON RS.ReconProcessStepID = RPS.ID
	  WHERE RPS.Code = '{0}'
	  AND [RS].[ReconDate] = {1}
";

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
