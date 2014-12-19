CREATE TABLE [Staging].[DimGender] (
    [DimGenderID]   INT           NULL,
    [DeltaHash]     BIGINT        NULL,
    [Name]          VARCHAR (255) NULL,
    [SourceKey]     VARCHAR (255) NOT NULL,
    [SourceKeyHash] BIGINT        NULL
);

