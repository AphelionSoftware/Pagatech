﻿CREATE TABLE [Updates].[Location_DimGeoZone] (
    [SourceKey]            INT           NOT NULL,
    [Name]                 VARCHAR (255) NOT NULL,
    [Code]                 VARCHAR (50)  NOT NULL,
    [DimCountryID]         INT           NOT NULL,
    [SYS_CHANGE_VERSION]   BIGINT        DEFAULT ((0)) NOT NULL,
    [SYS_CHANGE_OPERATION] CHAR (1)      DEFAULT ('I') NOT NULL
);




GO
CREATE CLUSTERED INDEX [ix_Location_DimGeoZone_SourceKey]
    ON [Updates].[Location_DimGeoZone]([SourceKey] ASC, [SYS_CHANGE_VERSION] DESC);

