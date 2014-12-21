CREATE TABLE [Staging].[Dim_Currency] (
    [DeltaHash]     BIGINT        NULL,
    [DimCurrencyID] INT           NULL,
    [Entity]        VARCHAR (255) NOT NULL,
    [Name]          VARCHAR (255) NOT NULL,
    [SourceKey]     VARCHAR (255) NOT NULL,
    [SourceKeyHash] BIGINT        NULL
);

