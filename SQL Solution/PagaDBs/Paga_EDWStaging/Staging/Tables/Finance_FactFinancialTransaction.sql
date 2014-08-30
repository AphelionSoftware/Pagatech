CREATE TABLE [Staging].[Finance_FactFinancialTransaction] (
    [DimCreatedTimeID]                  INT             NULL,
    [FinancialTransactionTypeSourceKey] INT             NULL,
    [FinancialAccountSourceKey]         INT             NULL,
    [PagaAccountSourceKey]              INT             NULL,
    [UserSourceKey]                     INT             NULL,
    [ProcessTypeSourceKey]              INT             NULL,
    [DimEffectiveDateID]                INT             NULL,
    [DimEffectiveTimeID]                INT             NULL,
    [DimTransactionDateID]              INT             NULL,
    [DimTransactionTimeID]              INT             NULL,
    [CitySourceKey]                     INT             NULL,
    [OriginalTransactionID]             INT             NULL,
    [RelatedTransactionID]              INT             NULL,
    [DebitAmount]                       DECIMAL (18, 2) NULL,
    [CreditAmount]                      DECIMAL (18, 2) NULL
);

