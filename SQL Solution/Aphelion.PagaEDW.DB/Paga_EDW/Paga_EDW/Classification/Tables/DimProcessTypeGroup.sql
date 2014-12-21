CREATE TABLE [Classification].[DimProcessTypeGroup] (
    [DimProcessTypeGroupID] INT           IDENTITY (1, 1) NOT NULL,
    [SourceKey]             VARCHAR (255) NOT NULL,
    [Name]                  VARCHAR (255) NOT NULL,
    [SourceKeyHash]         BIGINT        NULL,
    [DeltaHash]             BIGINT        NULL,
    [sys_ModifiedBy]        VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn]        DATETIME      DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]         VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]         DATETIME      DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [pk_DimProcessTypeGroupID] PRIMARY KEY CLUSTERED ([DimProcessTypeGroupID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'dbo.ProcessTypeGroup', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimProcessTypeGroup';


GO
EXECUTE sp_addextendedproperty @name = N'PackageType', @value = N'1', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimProcessTypeGroup';


GO
EXECUTE sp_addextendedproperty @name = N'LoadOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimProcessTypeGroup';


GO
EXECUTE sp_addextendedproperty @name = N'LoadGroup', @value = N'2000', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimProcessTypeGroup';


GO
EXECUTE sp_addextendedproperty @name = N'KeyColumn', @value = N'ProcessTypeGroupID', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimProcessTypeGroup';


GO
EXECUTE sp_addextendedproperty @name = N'BaseQuery', @value = N'SELECT 
			SourceKey = COALESCE(base_query.SourceKey,change_log.change_log_SourceKey),
			base_query.name,
			change_operation = COALESCE(CONVERT(CHAR(1),change_log.change_operation),''I'')
		FROM 
		(SELECT
	ProcessTypeGroupID AS SourceKey, 
	 CONVERT(VARCHAR(255),Description) AS Name
FROM dbo.ProcessTypeGroup) as base_query', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimProcessTypeGroup';

