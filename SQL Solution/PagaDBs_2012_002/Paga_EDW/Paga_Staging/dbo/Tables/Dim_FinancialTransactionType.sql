CREATE TABLE [dbo].[Dim_FinancialTransactionType] (
    [DimFinancialTxTypeID] INT           IDENTITY (1, 1) NOT NULL,
    [FinancialTxCategory]  VARCHAR (255) NOT NULL,
    [SourceKey]            VARCHAR (255) NOT NULL,
    [Name]                 VARCHAR (255) NOT NULL
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimFinancialTransactionType_SourceKey]
    ON [dbo].[Dim_FinancialTransactionType]([SourceKey] ASC);

