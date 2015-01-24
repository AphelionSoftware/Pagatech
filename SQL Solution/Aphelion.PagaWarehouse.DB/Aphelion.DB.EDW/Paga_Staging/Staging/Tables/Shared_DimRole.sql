CREATE TABLE [Staging].[Shared_DimRole] (
    [Name]                 VARCHAR (255)  NOT NULL,
    [SourceKey]            INT            NOT NULL,
    [SystemDescription]    VARCHAR (255)  NOT NULL,
    [TextDesciption]       VARCHAR (1000) NULL,
    [SYS_CHANGE_VERSION]   BIGINT         DEFAULT ((0)) NOT NULL,
    [SYS_CHANGE_OPERATION] CHAR (1)       DEFAULT ('I') NOT NULL
);
















GO




