CREATE PROC Admin.InsertDefinitionsFromStagingTable
	@FileDefinition varchar(255)
	,@FileTypeCode varchar(10)
	,@TableName varchar(255)
	,@ReconSource varchar(255)
	,@ReconSourceTypeCode varchar(50) = 'BANK'
	as
BEGIN
/*
EXEC	 [Admin].[InsertDefinitionsFromStagingTable]
		@FileDefinition = N'Skye',
		@FileTypeCode = N'CSV',
		@TableName = N'SkyeImportDetails',
		@ReconSource = N'Skye',
		@ReconSourceTypeCode = N'BANK'
		*/
Declare @FileDefinitionID int, @SectionID int
declare @sectioncode varchar(255)

SET @sectioncode = @TableName
INSERT INTO Admin.ReconSource (Code, Name, ReconSourceTypeID)
SELECT  NAME, NAME
, (SELECT ID FROM Admin.ReconSourceType WHERE Code = @ReconSourceTypeCode)
FROM (SELECT @FileDefinition Name
WHERE NOT EXISTS (SELECT 1 FROM Admin.ReconSource WHERE Code = Name)
)  src


INSERT INTO import.FileDefinition(Code, Name, FileTypeID)
SELECT TABLE_NAME, TABLE_NAME
, (SELECT ID FROM Import.FileType WHERE Code = @FileTypeCode)
FROM (SELECT @FileDefinition as TABLE_NAME
WHERE NOT EXISTS (SELECT 1 FROM Import.FileDefinition WHERE Code = @FileDefinition )
)  src

SELECT @FileDefinitionID = ID from Import.FileDefinition where Code = @FileDefinition

INSERT INTO [Import].[FileSection]
           ([Code]
           ,[Name]
		   ,[FileDefinitionID] 
           ,[StagingTableSchema]
           ,[StagingTableName]
           )
  SELECT Code, Code, @FileDefinitionID, TableSchema, TableName
  FROM (
	SELECT @SectionCode as Code 
	,'Staging' TableSchema
	,@TableName TableName
	WHERE NOT EXISTS (SELECT 1 FROM Import.FileSection WHERE Code = @SectionCode)
	) src

SELECT @SectionID = ID from Import.FileSection where Code = @SectionCode


INSERT INTO [Import].[FileField]
           ([ColumnName]
           ,[FileSectionID]
		   ,[Position])
select 
COLUMN_NAME 
	, @SectionID
	,ROW_NUMBER() over (order by table_schema) - 1
from INFORMATION_SCHEMA.COLUMNS
where TABLE_SCHEMA = 'Staging'
AND TABLE_NAME = @TableName
and not column_name in  ('ID','sys_CreatedBy','sys_CreatedOn','sys_ModifiedBy','sys_ModifiedOn')
AND not exists (SELECT 1 from Import.FileField where TABLE_SCHEMA = 'Staging' AND TABLE_NAME = @TableName AND ColumnName =COLUMN_NAME)
END