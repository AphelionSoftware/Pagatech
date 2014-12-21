CREATE TABLE [Staging].[Dim_Gender] (
    [DeltaHash]     BIGINT        NULL,
    [DimGenderID]   INT           NULL,
    [Name]          VARCHAR (255) NULL,
    [SourceKey]     VARCHAR (255) NOT NULL,
    [SourceKeyHash] BIGINT        NULL
);

