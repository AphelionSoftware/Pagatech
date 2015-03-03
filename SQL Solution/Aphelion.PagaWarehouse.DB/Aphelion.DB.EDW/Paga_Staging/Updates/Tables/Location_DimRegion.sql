CREATE TABLE [Updates].[Location_DimRegion] (
    [SourceKey]            INT           NOT NULL,
    [Name]                 VARCHAR (255) NOT NULL,
    [DimGeoZoneID]         INT           NOT NULL,
    [SYS_CHANGE_VERSION]   BIGINT        DEFAULT ((0)) NOT NULL,
    [SYS_CHANGE_OPERATION] CHAR (1)      DEFAULT ('I') NOT NULL
);




GO
CREATE CLUSTERED INDEX [ix_Location_DimRegion_SourceKey]
    ON [Updates].[Location_DimRegion]([SourceKey] ASC, [SYS_CHANGE_VERSION] DESC);

