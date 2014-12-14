CREATE TABLE [Errors].[Dim_PagaAccount] (
    [QueueID]                     INT           NOT NULL,
    [SSISErrorCode]               INT           NOT NULL,
    [SSISErrorColumn]             INT           NOT NULL,
    [PackageName]                 VARCHAR (255) NOT NULL,
    [ErrorType]                   VARCHAR (255) NOT NULL,
    [BankingStatus_SourceKey]     VARCHAR (50)  NULL,
    [PagaAccountNumber]           VARCHAR (12)  NULL,
    [PagaAccountStatus_SourceKey] VARCHAR (50)  NULL,
    [SourceKey]                   INT           NOT NULL,
    [DeltaHash]                   BIGINT        NULL,
    [DimPagaAccountID]            INT           NULL,
    [SourceKeyHash]               BIGINT        NULL,
    [DimBankingStatusID]          INT           NULL,
    [DimPagaAccountStatusID]      INT           NULL
);

