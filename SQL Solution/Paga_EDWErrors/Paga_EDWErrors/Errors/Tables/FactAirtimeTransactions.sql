CREATE TABLE [Errors].[FactAirtimeTransactions] (
    [QueueID]                           INT             NOT NULL,
    [ErrorCode]                         INT             NOT NULL,
    [ErrorColumn]                       INT             NOT NULL,
    [PackageName]                       VARCHAR (255)   NOT NULL,
    [FactAirtimeTransactionsID]         INT             NULL,
    [CitySourceKey]                     VARCHAR (255)   NULL,
    [CreditAmount]                      DECIMAL (18, 2) NULL,
    [DateSourceKey]                     VARCHAR (255)   NULL,
    [DebitAmount]                       DECIMAL (18, 2) NULL,
    [DimPagaAccountID]                  INT             NULL,
    [FinancialAccountSourceKey]         VARCHAR (255)   NULL,
    [FinancialTransactionTypeSourceKey] VARCHAR (255)   NULL,
    [OrganizationUnitLevel5SourceKey]   VARCHAR (255)   NULL,
    [RunID]                             INT             NOT NULL,
    [TimeSourceKey]                     VARCHAR (255)   NULL,
    [DimCityID]                         INT             NULL,
    [DimDateID]                         INT             NULL,
    [DimFinancialAccountID]             INT             NULL,
    [DimFinancialTransactionTypeID]     INT             NULL,
    [DimOrganizationUnitLevel5ID]       INT             NULL,
    [DimTimeID]                         INT             NULL
);

