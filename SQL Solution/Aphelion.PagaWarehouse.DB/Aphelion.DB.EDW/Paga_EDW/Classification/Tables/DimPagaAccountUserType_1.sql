CREATE TABLE [Classification].[DimPagaAccountUserType] (
    [DimPagaAccountUserTypeID] INT           IDENTITY (1, 1) NOT NULL,
    [SourceKey]                VARCHAR (255) NOT NULL,
    [Name]                     VARCHAR (255) NOT NULL,
    [sys_ModifiedBy]           VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn]           DATETIME      DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]            VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]            DATETIME      DEFAULT (getdate()) NOT NULL,
    [IsActive]                 BIT           DEFAULT ((1)) NOT NULL,
    CONSTRAINT [pk_DimPagaAccountUserTypeID] PRIMARY KEY CLUSTERED ([DimPagaAccountUserTypeID] ASC)
);










GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimPagaAccountUserType_SourceKey]
    ON [Classification].[DimPagaAccountUserType]([SourceKey] ASC);


GO



GO



GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimPagaAccountUserType', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimPagaAccountUserType', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'dbo.PagaAccountUserType', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimPagaAccountUserType';


GO
EXECUTE sp_addextendedproperty @name = N'PackageType', @value = N'1', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimPagaAccountUserType';


GO
EXECUTE sp_addextendedproperty @name = N'LoadOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimPagaAccountUserType';


GO
EXECUTE sp_addextendedproperty @name = N'LoadGroup', @value = N'2000', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimPagaAccountUserType';


GO
EXECUTE sp_addextendedproperty @name = N'KeyColumn', @value = N'PagaAccountUserTypeID', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimPagaAccountUserType';


GO
EXECUTE sp_addextendedproperty @name = N'BaseQuery', @value = N'SELECT  		ct.SYS_CHANGE_OPERATION, SYS_CHANGE_VERSION = ct.as_of_change_version,	SourceKey,  			base_query.name 		FROM  	 	(SELECT 	PagaAccountUserTypeID AS SourceKey,  	 CONVERT(VARCHAR(255),Description) AS Name FROM dbo.PagaAccountUserType) as base_query', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimPagaAccountUserType';





