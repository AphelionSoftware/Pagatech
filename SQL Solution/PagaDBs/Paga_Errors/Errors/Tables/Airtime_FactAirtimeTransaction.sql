CREATE TABLE [Errors].[Airtime_FactAirtimeTransaction] (
    [QueueID]                           INT             NOT NULL,
    [SSISErrorCode]                     INT             NOT NULL,
    [SSISErrorColumn]                   INT             NOT NULL,
    [PackageName]                       VARCHAR (255)   NOT NULL,
    [ErrorType]                         VARCHAR (255)   NOT NULL,
    [CitySourceKey]                     INT             NULL,
    [CreditAmount]                      DECIMAL (18, 2) NULL,
    [DebitAmount]                       DECIMAL (18, 2) NULL,
    [DimTimeID]                         INT             NULL,
    [FinancialAccountSourceKey]         INT             NULL,
    [FinancialTransactionTypeSourceKey] INT             NULL,
    [PagaAccountSourceKey]              INT             NULL
);

