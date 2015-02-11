CREATE TABLE [Staging].[Classification_DimIntegrationTransactionResult] (
    [Name]                 VARCHAR (255) NULL,
    [SourceKey]            VARCHAR (255) NOT NULL,
    [SYS_CHANGE_VERSION]   BIGINT        DEFAULT ((0)) NOT NULL,
    [SYS_CHANGE_OPERATION] CHAR (1)      DEFAULT ('I') NOT NULL
);








GO
CREATE UNIQUE CLUSTERED INDEX [ix_Classification_DimIntegrationTransactionResult]
    ON [Staging].[Classification_DimIntegrationTransactionResult]([SourceKey] ASC, [SYS_CHANGE_VERSION] ASC, [SYS_CHANGE_OPERATION] ASC);

