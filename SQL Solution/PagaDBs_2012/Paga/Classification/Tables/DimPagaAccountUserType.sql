CREATE TABLE [Classification].[DimPagaAccountUserType] (
    [DimPagaAccountUserTypeID] INT           NOT NULL,
    [SourceKey]                VARCHAR (255) NOT NULL,
    [Name]                     VARCHAR (255) NOT NULL,
    [SourceKeyHash]            BIGINT        NOT NULL,
    [DeltaHash]                BIGINT        NOT NULL,
    [sys_ModifiedBy]           VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn]           DATETIME      DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]            VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]            DATETIME      DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [pk_DimPagaAccountUserTypeID] PRIMARY KEY CLUSTERED ([DimPagaAccountUserTypeID] ASC)
);






GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimPagaAccountUserType_SourceKey]
    ON [Classification].[DimPagaAccountUserType]([SourceKey] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimPagaAccountUserType', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimPagaAccountUserType', @level2type = N'COLUMN', @level2name = N'Name';


GO



GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKeyHash', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimPagaAccountUserType', @level2type = N'COLUMN', @level2name = N'SourceKeyHash';


GO



EXECUTE sp_addextendedproperty @name = N'BaseQuery', @value = N'SELECT
	PagaAccountUserTypeID AS SourceKey, 
	 CONVERT(VARCHAR(255),Description) AS Name
FROM dbo.PagaAccountUserType', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimPagaAccountUserType';




GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'DeltaHash', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimPagaAccountUserType', @level2type = N'COLUMN', @level2name = N'DeltaHash';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'dbo.PagaAccountUserType', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimPagaAccountUserType';


GO
EXECUTE sp_addextendedproperty @name = N'KeyColumn', @value = N'PagaAccountUserTypeID', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimPagaAccountUserType';

