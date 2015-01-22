CREATE TABLE [Staging].[Location_DimGeoZone] (
    [DimGeoZoneID]         INT           NULL,
    [Code]                 VARCHAR (50)  NOT NULL,
    [DeltaHash]            BIGINT        NULL,
    [Name]                 VARCHAR (255) NOT NULL,
    [SourceKey]            INT           NOT NULL,
    [SourceKeyHash]        BIGINT        NULL,
    [DimCountrySourceKey]  INT           NOT NULL,
    [SYS_CHANGE_OPERATION] CHAR (1)      DEFAULT ('I') NOT NULL,
    [SYS_CHANGE_VERSION]   BIGINT        DEFAULT ((0)) NOT NULL
);










GO
CREATE UNIQUE CLUSTERED INDEX [ix_Location_DimGeoZone]
    ON [Staging].[Location_DimGeoZone]([SourceKey] ASC, [SYS_CHANGE_VERSION] ASC, [SYS_CHANGE_OPERATION] ASC);





