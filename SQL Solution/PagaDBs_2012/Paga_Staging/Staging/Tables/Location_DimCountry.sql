﻿CREATE TABLE [Staging].[Location_DimCountry] (
    [SourceKey] VARCHAR (255) NOT NULL,
    [Name]      VARCHAR (255) NOT NULL,
    [Code]      VARCHAR (50)  NOT NULL,
    [Country]   VARCHAR (255) NULL,
    [ISOCode]   CHAR (3)      NULL
);

