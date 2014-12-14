CREATE TABLE [Errors].[Dim_FinancialAccountType] (
    [QueueID]                   INT           NOT NULL,
    [SSISErrorCode]             INT           NOT NULL,
    [SSISErrorColumn]           INT           NOT NULL,
    [PackageName]               VARCHAR (255) NOT NULL,
    [ErrorType]                 VARCHAR (255) NOT NULL,
    [SourceKey]                 VARCHAR (100) NULL,
    [DeltaHash]                 BIGINT        NULL,
    [DimFinancialAccountTypeID] INT           NULL,
    [Name]                      VARCHAR (255) NULL,
    [SourceKeyHash]             BIGINT        NULL
);

