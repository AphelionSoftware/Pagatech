CREATE TABLE [Staging].[Location_DimRegion] (
    [Name]                 VARCHAR (255) NOT NULL,
    [SourceKey]            INT           NOT NULL,
    [DimGeoZoneSourceKey]  INT           NOT NULL,
    [SYS_CHANGE_VERSION]   BIGINT        DEFAULT ((0)) NOT NULL,
    [SYS_CHANGE_OPERATION] CHAR (1)      DEFAULT ('I') NOT NULL
);




















GO
CREATE UNIQUE CLUSTERED INDEX [ix_Location_DimRegion]
    ON [Staging].[Location_DimRegion]([SourceKey] ASC, [SYS_CHANGE_VERSION] ASC, [SYS_CHANGE_OPERATION] ASC);

