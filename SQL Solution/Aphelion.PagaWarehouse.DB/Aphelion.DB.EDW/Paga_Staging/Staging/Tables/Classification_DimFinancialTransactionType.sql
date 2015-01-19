CREATE TABLE [Staging].[Classification_DimFinancialTransactionType] (
    [DeltaHash]            BIGINT        NULL,
    [DimFinancialTxTypeID] INT           NULL,
    [FinancialTxCategory]  VARCHAR (255) NOT NULL,
    [Name]                 VARCHAR (255) NOT NULL,
    [SourceKey]            VARCHAR (255) NOT NULL,
    [SourceKeyHash]        BIGINT        NULL,
    [SYS_CHANGE_OPERATION] CHAR (1)      DEFAULT ('I') NOT NULL
);



