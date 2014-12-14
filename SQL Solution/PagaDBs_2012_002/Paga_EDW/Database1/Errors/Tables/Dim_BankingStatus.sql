CREATE TABLE [Errors].[Dim_BankingStatus] (
    [QueueID]                 INT           NOT NULL,
    [SSISErrorCode]           INT           NOT NULL,
    [SSISErrorColumn]         INT           NOT NULL,
    [PackageName]             VARCHAR (255) NOT NULL,
    [ErrorType]               VARCHAR (255) NOT NULL,
    [BankingStatus_SourceKey] VARCHAR (50)  NULL,
    [DeltaHash]               BIGINT        NULL,
    [DimBankingStatusID]      INT           NULL,
    [Name]                    VARCHAR (255) NULL,
    [SourceKey]               VARCHAR (255) NULL,
    [SourceKeyHash]           BIGINT        NULL
);

