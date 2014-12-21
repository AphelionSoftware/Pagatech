CREATE TABLE [Errors].[Finance_DimFinancialAccount] (
    [QueueID]                             INT             NOT NULL,
    [SSISErrorCode]                       INT             NOT NULL,
    [SSISErrorColumn]                     INT             NOT NULL,
    [PackageName]                         VARCHAR (255)   NOT NULL,
    [ErrorType]                           VARCHAR (255)   NOT NULL,
    [AccountNumber]                       VARCHAR (20)    NULL,
    [DeltaHash]                           BIGINT          NULL,
    [DimBankAccountSourceKey]             INT             NOT NULL,
    [DimCurrencySourceKey]                VARCHAR (255)   NOT NULL,
    [DimFinancialAccountID]               INT             NULL,
    [DimFinancialAccountTypeSourceKey]    VARCHAR (255)   NOT NULL,
    [DimFinancialHoldingAccountSourceKey] INT             NULL,
    [DimPagaAccountSourceKey]             INT             NOT NULL,
    [Name]                                VARCHAR (255)   NOT NULL,
    [OpeningBalance]                      DECIMAL (18, 2) NULL,
    [RestrictedBalance]                   DECIMAL (18, 2) NULL,
    [SourceKey]                           INT             NOT NULL,
    [SourceKeyHash]                       BIGINT          NULL,
    [TotalBalance]                        DECIMAL (18, 2) NULL
);



