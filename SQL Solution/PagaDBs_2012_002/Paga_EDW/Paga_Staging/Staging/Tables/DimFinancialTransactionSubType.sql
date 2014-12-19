CREATE TABLE [Staging].[DimFinancialTransactionSubType] (
    [DeltaHash]               BIGINT        NULL,
    [DimFinancialTxSubTypeID] INT           NULL,
    [Name]                    VARCHAR (255) NOT NULL,
    [SourceKey]               VARCHAR (255) NOT NULL,
    [SourceKeyHash]           BIGINT        NULL
);

