CREATE TABLE [Classification].[DimFinancialTransactionType] (
    [DimFinancialTransactionTypeID] INT            NOT NULL,
    [SourceKey]                     VARCHAR (255)  NOT NULL,
    [Name]                          VARCHAR (255)  NOT NULL,
    [Description]                   VARCHAR (1000) NULL,
    [SourceKeyHash]                 BIGINT         NOT NULL,
    [DeltaHash]                     BIGINT         NOT NULL,
    [sys_ModifiedBy]                VARCHAR (255)  DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn]                DATETIME       DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]                 VARCHAR (255)  DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]                 DATETIME       DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [pk_DimFinancialTransactionTypeID] PRIMARY KEY CLUSTERED ([DimFinancialTransactionTypeID] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimFinancialTransactionType_SourceKey]
    ON [Classification].[DimFinancialTransactionType]([SourceKey] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimFinancialTransactionType', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimFinancialTransactionType', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'Description', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimFinancialTransactionType', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKeyHash', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimFinancialTransactionType', @level2type = N'COLUMN', @level2name = N'SourceKeyHash';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'DeltaHash', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimFinancialTransactionType', @level2type = N'COLUMN', @level2name = N'DeltaHash';

