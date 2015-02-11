CREATE TABLE [Staging].[Finance_DimGLCodeSubGroup] (
    [GLCodeRange]             VARCHAR (255) NULL,
    [Name]                    VARCHAR (255) NOT NULL,
    [SourceKey]               INT           NOT NULL,
    [DimGLCodeGroupSourceKey] INT           NOT NULL,
    [SYS_CHANGE_VERSION]      BIGINT        DEFAULT ((0)) NOT NULL,
    [SYS_CHANGE_OPERATION]    CHAR (1)      DEFAULT ('I') NOT NULL
);




















GO
CREATE UNIQUE CLUSTERED INDEX [ix_Finance_DimGLCodeSubGroup]
    ON [Staging].[Finance_DimGLCodeSubGroup]([SourceKey] ASC, [SYS_CHANGE_VERSION] ASC, [SYS_CHANGE_OPERATION] ASC);

