CREATE TABLE [Staging].[Dim_IntegrationTransactionResult] (
    [DeltaHash]                BIGINT        NULL,
    [DimIntegrationTxResultID] INT           NULL,
    [Name]                     VARCHAR (255) NULL,
    [SourceKey]                VARCHAR (255) NOT NULL,
    [SourceKeyHash]            BIGINT        NULL
);

