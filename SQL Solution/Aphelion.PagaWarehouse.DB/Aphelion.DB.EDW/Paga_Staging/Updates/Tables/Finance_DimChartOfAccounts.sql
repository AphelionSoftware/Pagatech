CREATE TABLE [Updates].[Finance_DimChartOfAccounts] (
    [SourceKey]            INT           NOT NULL,
    [Name]                 VARCHAR (255) NOT NULL,
    [GLCodeRange]          VARCHAR (255) NULL,
    [SYS_CHANGE_VERSION]   BIGINT        DEFAULT ((0)) NOT NULL,
    [SYS_CHANGE_OPERATION] CHAR (1)      DEFAULT ('I') NOT NULL
);




GO
CREATE CLUSTERED INDEX [ix_Finance_DimChartOfAccounts_SourceKey]
    ON [Updates].[Finance_DimChartOfAccounts]([SourceKey] ASC, [SYS_CHANGE_VERSION] DESC);

