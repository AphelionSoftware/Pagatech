CREATE TABLE [Staging].[Location_DimRegion] (
    [SourceKey]        VARCHAR (255) NOT NULL,
    [Name]             VARCHAR (255) NOT NULL,
    [Code]             VARCHAR (50)  NOT NULL,
    [GeoZoneSourceKey] VARCHAR (255) NOT NULL,
    [change_operation] CHAR (1)      NULL
);





