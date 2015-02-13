CREATE TABLE [Staging].[Location_DimGeoZone] (
    [Code]                 VARCHAR (50)  NOT NULL,
    [Name]                 VARCHAR (255) NOT NULL,
    [SourceKey]            INT           NOT NULL,
    [DimCountrySourceKey]  INT           NOT NULL,
    [SYS_CHANGE_VERSION]   BIGINT        DEFAULT ((0)) NOT NULL,
    [SYS_CHANGE_OPERATION] CHAR (1)      DEFAULT ('I') NOT NULL,
    [paga_change_log_id]   INT           NULL,
    [row_id]               INT           IDENTITY (1, 1) NOT NULL
);






















GO
CREATE UNIQUE CLUSTERED INDEX [ix_Location_DimGeoZone]
    ON [Staging].[Location_DimGeoZone]([SourceKey] ASC, [SYS_CHANGE_VERSION] ASC, [SYS_CHANGE_OPERATION] ASC, [row_id] ASC);



