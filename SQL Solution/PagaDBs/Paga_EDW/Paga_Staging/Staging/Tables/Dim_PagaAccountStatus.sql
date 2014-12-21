CREATE TABLE [Staging].[Dim_PagaAccountStatus] (
    [DeltaHash]              BIGINT        NULL,
    [DimPagaAccountStatusID] INT           NULL,
    [Name]                   VARCHAR (255) NULL,
    [SourceKey]              VARCHAR (255) NOT NULL,
    [SourceKeyHash]          BIGINT        NULL
);

