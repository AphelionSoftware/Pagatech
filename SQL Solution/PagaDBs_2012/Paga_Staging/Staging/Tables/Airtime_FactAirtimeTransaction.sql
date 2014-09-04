CREATE TABLE [Staging].[Airtime_FactAirtimeTransaction] (
    [DimDateID]                         INT             NULL,
    [DimTimeID]                         INT             NULL,
    [FinancialTransactionTypeSourceKey] VARCHAR (255)   NULL,
    [FinancialAccountSourceKey]         VARCHAR (255)   NULL,
    [PagaAccountSourceKey]              VARCHAR (255)   NULL,
    [CitySourceKey]                     VARCHAR (255)   NULL,
    [DebitAmount]                       DECIMAL (18, 2) NULL,
    [CreditAmount]                      DECIMAL (18, 2) NULL
);



