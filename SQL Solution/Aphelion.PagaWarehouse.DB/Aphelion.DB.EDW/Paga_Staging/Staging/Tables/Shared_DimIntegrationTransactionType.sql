CREATE TABLE [Staging].[Shared_DimIntegrationTransactionType] (
    [DeltaHash]              BIGINT        NULL,
    [DimIntegrationTxTypeID] INT           NULL,
    [Name]                   VARCHAR (255) NULL,
    [SourceKey]              VARCHAR (255) NOT NULL,
    [SourceKeyHash]          BIGINT        NULL,
    [SYS_CHANGE_OPERATION]   CHAR (1)      DEFAULT ('I') NOT NULL,
    [SYS_CHANGE_VERSION]     BIGINT        DEFAULT ((0)) NOT NULL
);








GO
CREATE UNIQUE CLUSTERED INDEX [ix_Shared_DimIntegrationTransactionType]
    ON [Staging].[Shared_DimIntegrationTransactionType]([SYS_CHANGE_VERSION] ASC, [SYS_CHANGE_OPERATION] ASC, [SourceKey] ASC);



