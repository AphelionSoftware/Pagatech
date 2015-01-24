CREATE TABLE [Staging].[Classification_DimProcessChannel] (
    [Name]                 VARCHAR (255)  NOT NULL,
    [SourceKey]            VARCHAR (255)  NOT NULL,
    [TextDesciption]       VARCHAR (1000) NULL,
    [SYS_CHANGE_VERSION]   BIGINT         DEFAULT ((0)) NOT NULL,
    [SYS_CHANGE_OPERATION] CHAR (1)       DEFAULT ('I') NOT NULL
);




GO
CREATE UNIQUE CLUSTERED INDEX [ix_Classification_DimProcessChannel]
    ON [Staging].[Classification_DimProcessChannel]([SourceKey] ASC, [SYS_CHANGE_VERSION] ASC, [SYS_CHANGE_OPERATION] ASC);

