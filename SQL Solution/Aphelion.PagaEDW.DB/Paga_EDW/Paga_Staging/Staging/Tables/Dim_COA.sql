CREATE TABLE [Staging].[Dim_COA] (
    [DeltaHash]     BIGINT        NULL,
    [DimCOAID]      INT           NULL,
    [Name]          VARCHAR (255) NULL,
    [SourceKey]     INT           NOT NULL,
    [SourceKeyHash] BIGINT        NULL
);

