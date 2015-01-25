CREATE TABLE [Staging].[Finance_DimFinancialAccountType] (
    [Name]                 VARCHAR (255)  NOT NULL,
    [SourceKey]            VARCHAR (255)  NOT NULL,
    [TextDesciption]       VARCHAR (1000) NULL,
    [DimGLCodeSourceKey]   INT            NOT NULL,
    [SYS_CHANGE_VERSION]   BIGINT         DEFAULT ((0)) NOT NULL,
    [SYS_CHANGE_OPERATION] CHAR (1)       DEFAULT ('I') NOT NULL
);
















GO
CREATE UNIQUE CLUSTERED INDEX [ix_Finance_DimFinancialAccountType]
    ON [Staging].[Finance_DimFinancialAccountType]([SourceKey] ASC, [DimGLCodeSourceKey] ASC, [SYS_CHANGE_VERSION] ASC, [SYS_CHANGE_OPERATION] ASC);



