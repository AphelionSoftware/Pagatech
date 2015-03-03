CREATE TABLE [Updates].[Finance_DimGLCode] (
    [SourceKey]            INT            NOT NULL,
    [Name]                 VARCHAR (255)  NOT NULL,
    [DimGLCodeSubGroupID]  INT            NOT NULL,
    [GLCode]               VARCHAR (255)  NULL,
    [TextDesciption]       VARCHAR (1000) NULL,
    [IsNormalDebit]        BIT            NULL,
    [SYS_CHANGE_VERSION]   BIGINT         DEFAULT ((0)) NOT NULL,
    [SYS_CHANGE_OPERATION] CHAR (1)       DEFAULT ('I') NOT NULL
);




GO
CREATE CLUSTERED INDEX [ix_Finance_DimGLCode_SourceKey]
    ON [Updates].[Finance_DimGLCode]([SourceKey] ASC, [SYS_CHANGE_VERSION] DESC);

