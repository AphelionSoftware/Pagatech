CREATE TABLE [Staging].[DimFinancialTransactionType] (
    [DeltaHash]            BIGINT        NULL,
    [DimFinancialTxTypeID] INT           NULL,
    [FinancialTxCategory]  VARCHAR (255) NOT NULL,
    [Name]                 VARCHAR (255) NOT NULL,
    [SourceKey]            VARCHAR (255) NOT NULL,
    [SourceKeyHash]        BIGINT        NULL
);

