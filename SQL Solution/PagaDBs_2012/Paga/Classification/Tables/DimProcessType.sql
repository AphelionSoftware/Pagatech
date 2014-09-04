CREATE TABLE [Classification].[DimProcessType] (
    [DimProcessTypeID]      INT            NOT NULL,
    [SourceKey]             VARCHAR (255)  NOT NULL,
    [Name]                  VARCHAR (255)  NOT NULL,
    [DimProcessTypeGroupID] INT            NOT NULL,
    [DescriptionText]       VARCHAR (1000) NULL,
    [SourceKeyHash]         BIGINT         NOT NULL,
    [DeltaHash]             BIGINT         NOT NULL,
    [sys_ModifiedBy]        VARCHAR (255)  DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn]        DATETIME       DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]         VARCHAR (255)  DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]         DATETIME       DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [pk_DimProcessTypeID] PRIMARY KEY CLUSTERED ([DimProcessTypeID] ASC),
    CONSTRAINT [fk_DimProcessType_DimProcessTypeGroup] FOREIGN KEY ([DimProcessTypeGroupID]) REFERENCES [Classification].[DimProcessTypeGroup] ([DimProcessTypeGroupID])
);










GO



GO
EXECUTE sp_addextendedproperty @name = N'BaseQuery', @value = N'SELECT 
		COALESCE(base_query.SourceKey,change_log.change_log_SourceKey) AS SourceKey,
		base_query.name,
		change_log.change_operation
	FROM 
	(SELECT
	SourceKey,
	Name= SourceKey,
	ProcessTypeGroupSourceKey = COALESCE(ProcessTypeGroupSourceKey,''UNKNOWN''),
	DescriptionText,
	ProcessTypeID = SourceKey
FROM
(
	SELECT
		pt.ProcessTypeID AS SourceKey, 
		CONVERT(VARCHAR(255),pt.Description) AS Name,
		CONVERT(VARCHAR(255), ptg.ProcessTypeGroupId) AS ProcessTypeGroupSourceKey,
		CONVERT(VARCHAR(1000),pt.description) AS DescriptionText
	FROM dbo.ProcessType AS pt
	LEFT JOIN dbo.ProcessTypeProcessTypeGroup AS ptg ON
		pt.ProcessTypeID = ptg.ProcessTypeID
) AS bq) as base_query', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimProcessType';








GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'dbo.ProcessType', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimProcessType';


GO
EXECUTE sp_addextendedproperty @name = N'KeyColumn', @value = N'ProcessTypeID', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimProcessType';

