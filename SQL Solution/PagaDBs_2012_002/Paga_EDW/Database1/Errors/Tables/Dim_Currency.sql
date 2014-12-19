CREATE TABLE [Errors].[DimCurrency] (
    [QueueID]         INT           NOT NULL,
    [SSISErrorCode]   INT           NOT NULL,
    [SSISErrorColumn] INT           NOT NULL,
    [PackageName]     VARCHAR (255) NOT NULL,
    [ErrorType]       VARCHAR (255) NOT NULL,
    [DimCurrencyID]   INT           NULL,
    [DeltaHash]       BIGINT        NULL,
    [ISOCode]         CHAR (3)      NULL,
    [Name]            VARCHAR (255) NOT NULL,
    [SourceKey]       VARCHAR (255) NOT NULL,
    [SourceKeyHash]   BIGINT        NULL,
    [Symbol]          VARCHAR (3)   NULL
);



