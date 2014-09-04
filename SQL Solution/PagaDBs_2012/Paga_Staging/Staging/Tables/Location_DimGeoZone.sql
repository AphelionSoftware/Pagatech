﻿CREATE TABLE [Staging].[Location_DimGeoZone] (
    [SourceKey]        VARCHAR (255) NOT NULL,
    [Name]             VARCHAR (255) NOT NULL,
    [Code]             VARCHAR (50)  NOT NULL,
    [CountrySourceKey] VARCHAR (255) NOT NULL,
    [Symbol]           VARCHAR (3)   NULL,
    [change_operation] CHAR (1)      NULL
);





