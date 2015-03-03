CREATE TABLE [Updates].[Classification_DimProcessType] (
    [SourceKey]            VARCHAR (255)  NOT NULL,
    [Name]                 VARCHAR (255)  NOT NULL,
    [DescriptionText]      VARCHAR (1000) NULL,
    [SYS_CHANGE_VERSION]   BIGINT         DEFAULT ((0)) NOT NULL,
    [SYS_CHANGE_OPERATION] CHAR (1)       DEFAULT ('I') NOT NULL
);




GO
CREATE CLUSTERED INDEX [ix_Classification_DimProcessType_SourceKey]
    ON [Updates].[Classification_DimProcessType]([SourceKey] ASC, [SYS_CHANGE_VERSION] DESC);

