CREATE TABLE [Classification].[DimProcessTypeGroup] (
    [DimProcessTypeGroupID] INT           NOT NULL,
    [SourceKey]             VARCHAR (255) NOT NULL,
    [Name]                  VARCHAR (255) NOT NULL,
    [SourceKeyHash]         BIGINT        NOT NULL,
    [DeltaHash]             BIGINT        NOT NULL,
    [sys_ModifiedBy]        VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn]        DATETIME      DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]         VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]         DATETIME      DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [pk_DimProcessTypeGroupID] PRIMARY KEY CLUSTERED ([DimProcessTypeGroupID] ASC)
);






GO



GO
EXECUTE sp_addextendedproperty @name = N'BaseQuery', @value = N'SELECT
	ProcessTypeGroupID AS SourceKey, 
	 CONVERT(VARCHAR(255),Description) AS Name
FROM dbo.ProcessTypeGroup', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimProcessTypeGroup';




GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'dbo.ProcessTypeGroup', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimProcessTypeGroup';


GO
EXECUTE sp_addextendedproperty @name = N'KeyColumn', @value = N'ProcessTypeGroupID', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimProcessTypeGroup';

