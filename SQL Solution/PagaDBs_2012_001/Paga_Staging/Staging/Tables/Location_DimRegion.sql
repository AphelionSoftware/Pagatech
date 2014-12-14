CREATE TABLE [Staging].[Location_DimRegion] (
    [Name]                VARCHAR (255) NOT NULL,
    [SourceKey]           VARCHAR (255) NOT NULL,
    [DimGeoZoneSourceKey] VARCHAR (255) NOT NULL,
    [change_operation]    CHAR (1)      DEFAULT ((1)) NOT NULL
);









