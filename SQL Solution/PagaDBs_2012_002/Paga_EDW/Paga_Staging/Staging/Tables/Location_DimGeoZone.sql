CREATE TABLE [Staging].[Location_DimGeoZone] (
    [DimGeoZoneID]        INT           NULL,
    [Code]                VARCHAR (50)  NOT NULL,
    [DeltaHash]           BIGINT        NULL,
    [Name]                VARCHAR (255) NOT NULL,
    [SourceKey]           INT           NOT NULL,
    [SourceKeyHash]       BIGINT        NULL,
    [DimCountrySourceKey] INT           NOT NULL
);

