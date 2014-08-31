CREATE TABLE [Errors].[Finance_FactFinancialTransaction] (
    [QueueID]                           INT             NOT NULL,
    [SSISErrorCode]                     INT             NOT NULL,
    [SSISErrorColumn]                   INT             NOT NULL,
    [PackageName]                       VARCHAR (255)   NOT NULL,
    [ErrorType]                         VARCHAR (255)   NOT NULL,
    [CitySourceKey]                     INT             NULL,
    [CreditAmount]                      DECIMAL (18, 2) NULL,
    [DebitAmount]                       DECIMAL (18, 2) NULL,
    [DimCreatedTimeID]                  INT             NULL,
    [DimEffectiveDateID]                INT             NULL,
    [DimEffectiveTimeID]                INT             NULL,
    [DimTransactionDateID]              INT             NULL,
    [DimTransactionTimeID]              INT             NULL,
    [FinancialAccountSourceKey]         INT             NULL,
    [FinancialTransactionTypeSourceKey] INT             NULL,
    [OriginalTransactionID]             INT             NULL,
    [PagaAccountSourceKey]              INT             NULL,
    [ProcessTypeSourceKey]              INT             NULL,
    [RelatedTransactionID]              INT             NULL,
    [UserSourceKey]                     INT             NULL
);

