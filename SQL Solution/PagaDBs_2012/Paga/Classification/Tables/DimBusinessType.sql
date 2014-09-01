CREATE TABLE [Classification].[DimBusinessType] (
    [DimBusinessTypeID] INT           NOT NULL,
    [SourceKey]         VARCHAR (255) NOT NULL,
    [Name]              VARCHAR (255) NOT NULL,
    [SourceKeyHash]     BIGINT        NOT NULL,
    [DeltaHash]         BIGINT        NOT NULL,
    [sys_ModifiedBy]    VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn]    DATETIME      DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]     VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]     DATETIME      DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [pk_DimBusinessTypeID] PRIMARY KEY CLUSTERED ([DimBusinessTypeID] ASC)
);






GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimBusinessType_SourceKey]
    ON [Classification].[DimBusinessType]([SourceKey] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimBusinessType', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimBusinessType', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKeyHash', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimBusinessType', @level2type = N'COLUMN', @level2name = N'SourceKeyHash';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'DeltaHash', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimBusinessType', @level2type = N'COLUMN', @level2name = N'DeltaHash';


GO
EXECUTE sp_addextendedproperty @name = N'CT_Filter', @value = N'AND change_log.BusinessTypeID = base_query.BusinessTypeID', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimBusinessType';


GO
EXECUTE sp_addextendedproperty @name = N'BaseQuery', @value = N'SELECT
	BusinessTypeId AS SourceKey, 
	BusinessTypeId AS Name
FROM dbo.BusinessType', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimBusinessType';



