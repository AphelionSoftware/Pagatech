CREATE TABLE [Staging].[Airtime_FactAirtimeTransaction] (
    [DimDateID]                         INT             NULL,
    [DimTimeID]                         INT             NULL,
    [FinancialTransactionTypeSourceKey] INT             NULL,
    [FinancialAccountSourceKey]         INT             NULL,
    [PagaAccountSourceKey]              INT             NULL,
    [CitySourceKey]                     INT             NULL,
    [DebitAmount]                       DECIMAL (18, 2) NULL,
    [CreditAmount]                      DECIMAL (18, 2) NULL
);

