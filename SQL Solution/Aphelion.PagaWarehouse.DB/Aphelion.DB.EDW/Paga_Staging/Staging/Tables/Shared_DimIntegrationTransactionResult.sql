CREATE TABLE [Staging].[Shared_DimIntegrationTransactionResult] (
    [DeltaHash]                BIGINT        NULL,
    [DimIntegrationTxResultID] INT           NULL,
    [Name]                     VARCHAR (255) NULL,
    [SourceKey]                VARCHAR (255) NOT NULL,
    [SourceKeyHash]            BIGINT        NULL,
    [SYS_CHANGE_OPERATION]     CHAR (1)      DEFAULT ('I') NOT NULL,
    [SYS_CHANGE_VERSION]       BIGINT        DEFAULT ((0)) NOT NULL
);








GO
CREATE UNIQUE CLUSTERED INDEX [ix_Shared_DimIntegrationTransactionResult]
    ON [Staging].[Shared_DimIntegrationTransactionResult]([SYS_CHANGE_VERSION] ASC, [SYS_CHANGE_OPERATION] ASC, [SourceKey] ASC);



