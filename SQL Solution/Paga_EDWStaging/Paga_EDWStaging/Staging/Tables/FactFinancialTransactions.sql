CREATE TABLE [Staging].[FactFinancialTransactions] (
    [FactFinancialTransactionsID]       INT             NULL,
    [CreditAmount]                      DECIMAL (18, 2) NULL,
    [DebitAmount]                       DECIMAL (18, 2) NULL,
    [DimPagaAccountID]                  INT             NULL,
    [OriginalTransactionID]             INT             NULL,
    [RelatedTransactionID]              INT             NULL,
    [RunID]                             INT             NOT NULL,
    [CitySourceKey]                     VARCHAR (255)   NULL,
    [CreatedDateSourceKey]              VARCHAR (255)   NULL,
    [CreatedTimeSourceKey]              VARCHAR (255)   NULL,
    [EffectiveDateSourceKey]            VARCHAR (255)   NULL,
    [EffectiveTimeSourceKey]            VARCHAR (255)   NULL,
    [FinancialAccountSourceKey]         VARCHAR (255)   NULL,
    [FinancialTransactionTypeSourceKey] VARCHAR (255)   NULL,
    [OrganizationUnitLevel5SourceKey]   VARCHAR (255)   NULL,
    [ProcessTypeSourceKey]              VARCHAR (255)   NULL,
    [TransactionDateSourceKey]          VARCHAR (255)   NULL,
    [TransactionTimeSourceKey]          VARCHAR (255)   NULL,
    [UserSourceKey]                     VARCHAR (255)   NULL
);

