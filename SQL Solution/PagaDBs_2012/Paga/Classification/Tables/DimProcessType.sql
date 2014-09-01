CREATE TABLE [Classification].[DimProcessType] (
    [DimProcessTypeID]      INT           NOT NULL,
    [SourceKey]             VARCHAR (255) NOT NULL,
    [Name]                  VARCHAR (255) NOT NULL,
    [DimProcessTypeGroupID] INT           NOT NULL,
    [SourceKeyHash]         BIGINT        NOT NULL,
    [DeltaHash]             BIGINT        NOT NULL,
    [sys_ModifiedBy]        VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn]        DATETIME      DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]         VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]         DATETIME      DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [pk_DimProcessTypeID] PRIMARY KEY CLUSTERED ([DimProcessTypeID] ASC),
    CONSTRAINT [fk_DimProcessType_DimProcessTypeGroup] FOREIGN KEY ([DimProcessTypeGroupID]) REFERENCES [Classification].[DimProcessTypeGroup] ([DimProcessTypeGroupID])
);




GO
EXECUTE sp_addextendedproperty @name = N'CT_Filter', @value = N'AND change_log.ProcessTypeID = base_query.ProcessTypeID', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimProcessType';


GO
EXECUTE sp_addextendedproperty @name = N'BaseQuery', @value = N'SELECT
	ProcessTypeID AS SourceKey, 
	Description AS Name
FROM dbo.ProcessType', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimProcessType';

