CREATE TABLE [Updates].[Finance_DimGLCodeGroup] (
    [SourceKey]            INT           NOT NULL,
    [Name]                 VARCHAR (255) NOT NULL,
    [DimChartofAccountsID] INT           NOT NULL,
    [GLCodeRange]          VARCHAR (255) NULL,
    [SYS_CHANGE_VERSION]   BIGINT        DEFAULT ((0)) NOT NULL,
    [SYS_CHANGE_OPERATION] CHAR (1)      DEFAULT ('I') NOT NULL
);




GO
CREATE CLUSTERED INDEX [ix_Finance_DimGLCodeGroup_SourceKey]
    ON [Updates].[Finance_DimGLCodeGroup]([SourceKey] ASC, [SYS_CHANGE_VERSION] DESC);

