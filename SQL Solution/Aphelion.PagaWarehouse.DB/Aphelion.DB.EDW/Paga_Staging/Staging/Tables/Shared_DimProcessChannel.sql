CREATE TABLE [Staging].[Shared_DimProcessChannel] (
    [DeltaHash]            BIGINT         NULL,
    [DimChannelID]         INT            NULL,
    [Name]                 VARCHAR (255)  NOT NULL,
    [SourceKey]            VARCHAR (255)  NOT NULL,
    [SourceKeyHash]        BIGINT         NULL,
    [TextDesciption]       VARCHAR (1000) NULL,
    [SYS_CHANGE_OPERATION] CHAR (1)       DEFAULT ('I') NOT NULL,
    [SYS_CHANGE_VERSION]   BIGINT         DEFAULT ((0)) NOT NULL
);








GO
CREATE UNIQUE CLUSTERED INDEX [ix_Shared_DimProcessChannel]
    ON [Staging].[Shared_DimProcessChannel]([SYS_CHANGE_VERSION] ASC, [SYS_CHANGE_OPERATION] ASC, [SourceKey] ASC);



