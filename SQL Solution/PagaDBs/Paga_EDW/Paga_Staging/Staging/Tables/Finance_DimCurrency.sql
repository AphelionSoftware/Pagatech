CREATE TABLE [Staging].[Finance_DimCurrency] (
    [DimCurrencyID] INT           NULL,
    [DeltaHash]     BIGINT        NULL,
    [ISOCode]       CHAR (3)      NULL,
    [Name]          VARCHAR (255) NOT NULL,
    [SourceKey]     VARCHAR (255) NOT NULL,
    [SourceKeyHash] BIGINT        NULL,
    [Symbol]        VARCHAR (3)   NULL
);

