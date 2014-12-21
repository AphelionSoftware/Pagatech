CREATE TABLE [Errors].[Finance_DimFinancialAccount] (
    [QueueID]                          INT             NOT NULL,
    [SSISErrorCode]                    INT             NOT NULL,
    [SSISErrorColumn]                  INT             NOT NULL,
    [PackageName]                      VARCHAR (255)   NOT NULL,
    [ErrorType]                        VARCHAR (255)   NOT NULL,
    [AccountNumber]                    VARCHAR (20)    NULL,
    [BankAccountSourceKey]             INT             NOT NULL,
    [Code]                             VARCHAR (50)    NOT NULL,
    [CurrencySourceKey]                INT             NOT NULL,
    [FinancialHoldingAccountSourceKey] INT             NULL,
    [Name]                             VARCHAR (255)   NOT NULL,
    [OpeningBalance]                   DECIMAL (18, 2) NULL,
    [RestrictedBalance]                DECIMAL (18, 2) NULL,
    [TotalBalance]                     DECIMAL (18, 2) NULL
);

