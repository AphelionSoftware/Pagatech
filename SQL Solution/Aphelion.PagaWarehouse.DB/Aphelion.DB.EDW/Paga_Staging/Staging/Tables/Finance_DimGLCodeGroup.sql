CREATE TABLE [Staging].[Finance_DimGLCodeGroup] (
    [DimGLCodeGroupID]            INT           NULL,
    [DeltaHash]                   BIGINT        NULL,
    [GLCodeRange]                 VARCHAR (255) NULL,
    [Name]                        VARCHAR (255) NOT NULL,
    [SourceKey]                   INT           NOT NULL,
    [SourceKeyHash]               BIGINT        NULL,
    [DimChartOfAccountsSourceKey] INT           NOT NULL,
    [SYS_CHANGE_OPERATION]        CHAR (1)      DEFAULT ('I') NOT NULL,
    [SYS_CHANGE_VERSION]          BIGINT        DEFAULT ((0)) NOT NULL
);










GO
CREATE UNIQUE CLUSTERED INDEX [ix_Finance_DimGLCodeGroup]
    ON [Staging].[Finance_DimGLCodeGroup]([SourceKey] ASC, [SYS_CHANGE_VERSION] ASC, [SYS_CHANGE_OPERATION] ASC);





