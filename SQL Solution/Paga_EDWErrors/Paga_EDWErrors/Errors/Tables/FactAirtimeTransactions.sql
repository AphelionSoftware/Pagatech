CREATE TABLE [Errors].[FactAirtimeTransactions] (
    [QueueID]                       INT             NOT NULL,
    [ErrorCode]                     INT             NOT NULL,
    [ErrorColumn]                   INT             NOT NULL,
    [PackageName]                   VARCHAR (255)   NOT NULL,
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

