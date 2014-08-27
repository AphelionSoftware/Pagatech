CREATE TABLE [Staging].[FactAirtimeTransactions] (
    [FactAirtimeTransactionsID]     INT             NULL,
    [CreditAmount]                  DECIMAL (18, 2) NULL,
    [DebitAmount]                   DECIMAL (18, 2) NULL,
    [DimCityID]                     INT             NULL,
    [DimDateID]                     INT             NULL,
    [DimFinancialAccountID]         INT             NULL,
    [DimFinancialTransactionTypeID] INT             NULL,
    [DimOrganizationUnitLevel5ID]   INT             NULL,
    [DimPagaAccountID]              INT             NULL,
    [DimTimeID]                     INT             NULL
);

