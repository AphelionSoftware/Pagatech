CREATE TABLE [Staging].[FactAirtimeTransactions] (
    [FactAirtimeTransactionsID]         INT             NULL,
    [CreditAmount]                      DECIMAL (18, 2) NULL,
    [DebitAmount]                       DECIMAL (18, 2) NULL,
    [DimPagaAccountID]                  INT             NULL,
    [RunID]                             INT             NOT NULL,
    [CitySourceKey]                     VARCHAR (255)   NULL,
    [DateSourceKey]                     VARCHAR (255)   NULL,
    [FinancialAccountSourceKey]         VARCHAR (255)   NULL,
    [FinancialTransactionTypeSourceKey] VARCHAR (255)   NULL,
    [OrganizationUnitLevel5SourceKey]   VARCHAR (255)   NULL,
    [TimeSourceKey]                     VARCHAR (255)   NULL
);

