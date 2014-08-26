CREATE TABLE [Staging].[DimGeoZone] (
    [DimGeoZoneID]  INT           NULL,
    [Code]          VARCHAR (50)  NOT NULL,
    [DeltaHash]     BIGINT        NOT NULL,
    [DimCountryID]  INT           NOT NULL,
    [Name]          VARCHAR (255) NOT NULL,
    [SourceKey]     VARCHAR (255) NOT NULL,
    [SourceKeyHash] BIGINT        NOT NULL,
    [Symbol]        VARCHAR (3)   NULL
);



