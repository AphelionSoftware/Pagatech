CREATE TABLE [Errors].[DimPaymentUseCaseType] (
    [QueueID]                 INT           NOT NULL,
    [SSISErrorCode]           INT           NOT NULL,
    [SSISErrorColumn]         INT           NOT NULL,
    [PackageName]             VARCHAR (255) NOT NULL,
    [ErrorType]               VARCHAR (255) NOT NULL,
    [DimPaymentUseCaseTypeID] INT           NULL,
    [DeltaHash]               BIGINT        NULL,
    [Name]                    VARCHAR (255) NULL,
    [SourceKey]               VARCHAR (255) NOT NULL,
    [SourceKeyHash]           BIGINT        NULL
);

