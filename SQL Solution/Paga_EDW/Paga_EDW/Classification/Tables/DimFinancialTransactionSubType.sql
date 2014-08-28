CREATE TABLE [Classification].[DimFinancialTransactionSubType] (
    [DimFinancialTransactionSubTypeID] INT            NOT NULL,
    [SourceKey]                        VARCHAR (255)  NOT NULL,
    [Name]                             VARCHAR (255)  NOT NULL,
    [Code]                             VARCHAR (50)   NOT NULL,
    [Description]                      VARCHAR (1000) NULL,
    [SourceKeyHash]                    BIGINT         NOT NULL,
    [DeltaHash]                        BIGINT         NOT NULL,
    [sys_ModifiedBy]                   VARCHAR (255)  DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn]                   DATETIME       DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]                    VARCHAR (255)  DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]                    DATETIME       DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [pk_DimFinancialTransactionSubTypeID] PRIMARY KEY CLUSTERED ([DimFinancialTransactionSubTypeID] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimFinancialTransactionSubType_SourceKey]
    ON [Classification].[DimFinancialTransactionSubType]([SourceKey] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'DeltaHash', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimFinancialTransactionSubType', @level2type = N'COLUMN', @level2name = N'DeltaHash';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKeyHash', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimFinancialTransactionSubType', @level2type = N'COLUMN', @level2name = N'SourceKeyHash';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'Description', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimFinancialTransactionSubType', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimFinancialTransactionSubType', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimFinancialTransactionSubType', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimFinancialTransactionSubType', @level2type = N'COLUMN', @level2name = N'SourceKey';

