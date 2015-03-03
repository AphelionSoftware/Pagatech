CREATE TABLE [Updates].[Classification_DimBusinessType] (
    [SourceKey]            VARCHAR (255) NOT NULL,
    [Name]                 VARCHAR (255) NOT NULL,
    [SYS_CHANGE_VERSION]   BIGINT        DEFAULT ((0)) NOT NULL,
    [SYS_CHANGE_OPERATION] CHAR (1)      DEFAULT ('I') NOT NULL
);




GO
CREATE CLUSTERED INDEX [ix_Classification_DimBusinessType_SourceKey]
    ON [Updates].[Classification_DimBusinessType]([SourceKey] ASC, [SYS_CHANGE_VERSION] DESC);

