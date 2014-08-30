CREATE TABLE [Staging].[Location_DimGeoZone] (
    [Name]             VARCHAR (255) NOT NULL,
    [Code]             VARCHAR (50)  NOT NULL,
    [CountrySourceKey] INT           NOT NULL,
    [Symbol]           VARCHAR (3)   NULL
);

