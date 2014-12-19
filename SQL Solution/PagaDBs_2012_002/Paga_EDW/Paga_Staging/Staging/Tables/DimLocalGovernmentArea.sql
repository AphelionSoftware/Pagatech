CREATE TABLE [Staging].[DimLocalGovernmentArea] (
    [DimLocalGovernmentAreaID] INT           NULL,
    [Code]                     VARCHAR (50)  NOT NULL,
    [DeltaHash]                BIGINT        NULL,
    [Name]                     VARCHAR (255) NOT NULL,
    [SourceKey]                VARCHAR (255) NOT NULL,
    [SourceKeyHash]            BIGINT        NULL,
    [DimRegionSourceKey]       VARCHAR (255) NOT NULL
);

