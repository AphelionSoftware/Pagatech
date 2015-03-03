CREATE TABLE [Updates].[Finance_DimCurrency] (
    [SourceKey]            VARCHAR (255) NOT NULL,
    [Name]                 VARCHAR (255) NOT NULL,
    [ISOCode]              CHAR (3)      NULL,
    [Symbol]               VARCHAR (3)   NULL,
    [SYS_CHANGE_VERSION]   BIGINT        DEFAULT ((0)) NOT NULL,
    [SYS_CHANGE_OPERATION] CHAR (1)      DEFAULT ('I') NOT NULL
);




GO
CREATE CLUSTERED INDEX [ix_Finance_DimCurrency_SourceKey]
    ON [Updates].[Finance_DimCurrency]([SourceKey] ASC, [SYS_CHANGE_VERSION] DESC);

