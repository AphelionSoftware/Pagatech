CREATE TABLE [Staging].[Location_DimRegion] (
    [DimRegionID]          INT           NULL,
    [DeltaHash]            BIGINT        NULL,
    [Name]                 VARCHAR (255) NOT NULL,
    [SourceKey]            INT           NOT NULL,
    [SourceKeyHash]        BIGINT        NULL,
    [DimGeoZoneSourceKey]  INT           NOT NULL,
    [SYS_CHANGE_OPERATION] CHAR (1)      DEFAULT ('I') NOT NULL
);



