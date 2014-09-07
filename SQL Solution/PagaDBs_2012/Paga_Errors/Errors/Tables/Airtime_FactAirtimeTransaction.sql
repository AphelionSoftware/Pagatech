CREATE TABLE [Errors].[Airtime_FactAirtimeTransaction] (
    [QueueID]                              INT             NOT NULL,
    [SSISErrorCode]                        INT             NOT NULL,
    [SSISErrorColumn]                      INT             NOT NULL,
    [PackageName]                          VARCHAR (255)   NOT NULL,
    [ErrorType]                            VARCHAR (255)   NOT NULL,
    [change_operation]                     CHAR (1)        NOT NULL,
    [CreditAmount]                         DECIMAL (18, 2) NULL,
    [DebitAmount]                          DECIMAL (18, 2) NULL,
    [DimCitySourceKey]                     VARCHAR (255)   NULL,
    [DimDateID]                            INT             NULL,
    [DimFinancialAccountSourceKey]         VARCHAR (255)   NULL,
    [DimFinancialTransactionTypeSourceKey] VARCHAR (255)   NULL,
    [DimPagaAccountSourceKey]              VARCHAR (255)   NULL,
    [DimTimeID]                            INT             NULL,
    [SourceKey]                            INT             NOT NULL
);



