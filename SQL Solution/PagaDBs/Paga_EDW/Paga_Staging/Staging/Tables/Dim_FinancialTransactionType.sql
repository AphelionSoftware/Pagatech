CREATE TABLE [Staging].[Dim_FinancialTransactionType] (
    [DeltaHash]            BIGINT        NULL,
    [DimFinancialTxTypeID] INT           NULL,
    [FinancialTxCategory]  VARCHAR (255) NOT NULL,
    [Name]                 VARCHAR (255) NULL,
    [SourceKey]            VARCHAR (255) NOT NULL,
    [SourceKeyHash]        BIGINT        NULL
);

