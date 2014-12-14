CREATE TABLE [Errors].[Dim_Currency] (
    [QueueID]         INT           NOT NULL,
    [SSISErrorCode]   INT           NOT NULL,
    [SSISErrorColumn] INT           NOT NULL,
    [PackageName]     VARCHAR (255) NOT NULL,
    [ErrorType]       VARCHAR (255) NOT NULL,
    [CurrencyName]    VARCHAR (300) NOT NULL,
    [Entity]          VARCHAR (300) NOT NULL,
    [SourceKey]       VARCHAR (10)  NOT NULL,
    [DeltaHash]       BIGINT        NULL,
    [DimCurrencyID]   INT           NULL,
    [Name]            VARCHAR (255) NULL,
    [SourceKeyHash]   BIGINT        NULL
);

