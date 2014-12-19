CREATE TABLE [Errors].[DimFinancialAccount] (
    [QueueID]                          INT             NOT NULL,
    [SSISErrorCode]                    INT             NOT NULL,
    [SSISErrorColumn]                  INT             NOT NULL,
    [PackageName]                      VARCHAR (255)   NOT NULL,
    [ErrorType]                        VARCHAR (255)   NOT NULL,
    [DimFinancialAccountID]            INT             NULL,
    [AccountNumber]                    VARCHAR (20)    NULL,
    [DeltaHash]                        BIGINT          NULL,
    [DimBankAccountID]                 INT             NOT NULL,
    [DimCurrencyID]                    INT             NOT NULL,
    [DimFinancialAccountTypeSourceKey] VARCHAR (255)   NOT NULL,
    [DimFinancialHoldingAccountID]     INT             NULL,
    [DimPagaAccountID]                 INT             NOT NULL,
    [Name]                             VARCHAR (255)   NOT NULL,
    [OpeningBalance]                   DECIMAL (18, 2) NULL,
    [RestrictedBalance]                DECIMAL (18, 2) NULL,
    [SourceKey]                        VARCHAR (255)   NOT NULL,
    [SourceKeyHash]                    BIGINT          NULL,
    [TotalBalance]                     DECIMAL (18, 2) NULL,
    [DimFinancialAccountTypeID]        INT             NULL
);



