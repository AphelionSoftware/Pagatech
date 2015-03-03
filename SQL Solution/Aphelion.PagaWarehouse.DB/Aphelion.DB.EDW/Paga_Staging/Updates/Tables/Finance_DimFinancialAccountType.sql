CREATE TABLE [Updates].[Finance_DimFinancialAccountType] (
    [SourceKey]            VARCHAR (255)  NOT NULL,
    [Name]                 VARCHAR (255)  NOT NULL,
    [TextDesciption]       VARCHAR (1000) NULL,
    [DimGLCodeID]          INT            NOT NULL,
    [SYS_CHANGE_VERSION]   BIGINT         DEFAULT ((0)) NOT NULL,
    [SYS_CHANGE_OPERATION] CHAR (1)       DEFAULT ('I') NOT NULL
);




GO
CREATE CLUSTERED INDEX [ix_Finance_DimFinancialAccountType_SourceKey]
    ON [Updates].[Finance_DimFinancialAccountType]([SourceKey] ASC, [SYS_CHANGE_VERSION] DESC);

