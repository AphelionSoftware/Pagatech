CREATE TABLE [Staging].[Finance_DimGLCodeGroup] (
    [GLCodeRange]                 VARCHAR (255) NULL,
    [Name]                        VARCHAR (255) NOT NULL,
    [SourceKey]                   INT           NOT NULL,
    [DimChartOfAccountsSourceKey] INT           NOT NULL,
    [SYS_CHANGE_VERSION]          BIGINT        DEFAULT ((0)) NOT NULL,
    [SYS_CHANGE_OPERATION]        CHAR (1)      DEFAULT ('I') NOT NULL
);


















GO


