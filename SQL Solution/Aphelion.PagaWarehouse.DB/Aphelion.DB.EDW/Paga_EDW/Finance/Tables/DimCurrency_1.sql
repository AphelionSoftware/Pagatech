CREATE TABLE [Finance].[DimCurrency] (
    [DimCurrencyID]  INT           IDENTITY (1, 1) NOT NULL,
    [SourceKey]      VARCHAR (255) NOT NULL,
    [Name]           VARCHAR (255) NOT NULL,
    [ISOCode]        CHAR (3)      NULL,
    [Symbol]         VARCHAR (3)   NULL,
    [SourceKeyHash]  BIGINT        NULL,
    [DeltaHash]      BIGINT        NULL,
    [sys_ModifiedBy] VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn] DATETIME      DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]  VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]  DATETIME      DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [pk_DimCurrencyID] PRIMARY KEY CLUSTERED ([DimCurrencyID] ASC)
);




GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimCurrency_SourceKey]
    ON [Finance].[DimCurrency]([SourceKey] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'DeltaHash', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimCurrency', @level2type = N'COLUMN', @level2name = N'DeltaHash';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKeyHash', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimCurrency', @level2type = N'COLUMN', @level2name = N'SourceKeyHash';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimCurrency', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimCurrency', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'dbo.Currency', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimCurrency';


GO
EXECUTE sp_addextendedproperty @name = N'PackageType', @value = N'1', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimCurrency';


GO
EXECUTE sp_addextendedproperty @name = N'LoadOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimCurrency';


GO
EXECUTE sp_addextendedproperty @name = N'LoadGroup', @value = N'2000', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimCurrency';


GO
EXECUTE sp_addextendedproperty @name = N'KeyColumn', @value = N'CurrencyId', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimCurrency';


GO
EXECUTE sp_addextendedproperty @name = N'BaseQuery', @value = N'SELECT  	SourceKey , 	Name = CONVERT(VARCHAR(255),base_query.name) FROM  ( 	SELECT 		SourceKey = CurrencyId, 		Name = [Description] 	FROM dbo.Currency ) AS base_query', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimCurrency';



