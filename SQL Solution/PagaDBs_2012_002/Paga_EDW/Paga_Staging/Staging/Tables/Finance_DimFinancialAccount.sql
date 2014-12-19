CREATE TABLE [Staging].[Finance_DimFinancialAccount] (
    [DimFinancialAccountID]            INT             NULL,
    [AccountNumber]                    VARCHAR (20)    NULL,
    [DeltaHash]                        BIGINT          NULL,
    [Name]                             VARCHAR (255)   NOT NULL,
    [OpeningBalance]                   DECIMAL (18, 2) NULL,
    [RestrictedBalance]                DECIMAL (18, 2) NULL,
    [SourceKey]                        INT             NOT NULL,
    [SourceKeyHash]                    BIGINT          NULL,
    [TotalBalance]                     DECIMAL (18, 2) NULL,
    [DimBankAccountID]                 INT             NOT NULL,
    [DimCurrencyID]                    INT             NOT NULL,
    [DimFinancialHoldingAccountID]     INT             NULL,
    [DimPagaAccountID]                 INT             NOT NULL,
    [DimFinancialAccountTypeSourceKey] VARCHAR (255)   NOT NULL
);

