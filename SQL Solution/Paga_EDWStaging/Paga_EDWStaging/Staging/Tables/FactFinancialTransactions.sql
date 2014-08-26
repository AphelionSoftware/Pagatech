CREATE TABLE [Staging].[FactFinancialTransactions] (
    [FactFinancialTransactionsID]   INT             NULL,
    [CreditAmount]                  DECIMAL (18, 2) NULL,
    [DebitAmount]                   DECIMAL (18, 2) NULL,
    [DimCityID]                     INT             NULL,
    [DimCreatedDateID]              INT             NULL,
    [DimCreatedTimeID]              INT             NULL,
    [DimEffectiveDateID]            INT             NULL,
    [DimEffectiveTimeID]            INT             NULL,
    [DimFinancialAccountID]         INT             NULL,
    [DimFinancialTransactionTypeID] INT             NULL,
    [DimOrganizationUnitLevel5ID]   INT             NULL,
    [DimPagaAccountID]              INT             NULL,
    [DimProcessTypeID]              INT             NULL,
    [DimTransactionDateID]          INT             NULL,
    [DimTransactionTimeID]          INT             NULL,
    [DimUserID]                     INT             NULL,
    [OriginalTransactionID]         INT             NULL,
    [RelatedTransactionID]          INT             NULL,
    [RunID]                         INT             NOT NULL
);



