CREATE TABLE [Staging].[Location_DimLocalGovernmentArea] (
    [Code]                 VARCHAR (50)  NOT NULL,
    [Name]                 VARCHAR (255) NOT NULL,
    [SourceKey]            INT           NOT NULL,
    [DimRegionSourceKey]   INT           NOT NULL,
    [SYS_CHANGE_VERSION]   BIGINT        DEFAULT ((0)) NOT NULL,
    [SYS_CHANGE_OPERATION] CHAR (1)      DEFAULT ('I') NOT NULL
);














GO
CREATE UNIQUE CLUSTERED INDEX [ix_Location_DimLocalGovernmentArea]
    ON [Staging].[Location_DimLocalGovernmentArea]([SourceKey] ASC, [SYS_CHANGE_VERSION] ASC, [SYS_CHANGE_OPERATION] ASC);

