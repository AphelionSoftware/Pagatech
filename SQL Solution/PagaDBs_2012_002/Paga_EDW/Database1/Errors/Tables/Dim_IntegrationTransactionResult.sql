CREATE TABLE [Errors].[DimIntegrationTransactionResult] (
    [QueueID]                  INT           NOT NULL,
    [SSISErrorCode]            INT           NOT NULL,
    [SSISErrorColumn]          INT           NOT NULL,
    [PackageName]              VARCHAR (255) NOT NULL,
    [ErrorType]                VARCHAR (255) NOT NULL,
    [DimIntegrationTxResultID] INT           NOT NULL,
    [SourceKey]                VARCHAR (50)  NULL,
    [DeltaHash]                BIGINT        NULL,
    [Name]                     VARCHAR (255) NULL,
    [SourceKeyHash]            BIGINT        NULL
);

