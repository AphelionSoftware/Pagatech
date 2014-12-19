CREATE TABLE [Errors].[DimFinancialTransactionType] (
    [QueueID]              INT           NOT NULL,
    [SSISErrorCode]        INT           NOT NULL,
    [SSISErrorColumn]      INT           NOT NULL,
    [PackageName]          VARCHAR (255) NOT NULL,
    [ErrorType]            VARCHAR (255) NOT NULL,
    [DimFinancialTxTypeID] INT           NOT NULL,
    [FinancialTxCategory]  VARCHAR (255) NOT NULL,
    [Name]                 VARCHAR (255) NOT NULL,
    [SourceKey]            VARCHAR (255) NOT NULL,
    [DeltaHash]            BIGINT        NULL,
    [SourceKeyHash]        BIGINT        NULL
);

