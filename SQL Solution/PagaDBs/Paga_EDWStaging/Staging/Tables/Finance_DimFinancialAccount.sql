CREATE TABLE [Staging].[Finance_DimFinancialAccount] (
    [SourceKey]                        VARCHAR (255)   NOT NULL,
    [Name]                             VARCHAR (255)   NOT NULL,
    [Code]                             VARCHAR (50)    NOT NULL,
    [FinancialHoldingAccountSourceKey] INT             NULL,
    [BankAccountSourceKey]             INT             NOT NULL,
    [CurrencySourceKey]                INT             NOT NULL,
    [AccountNumber]                    VARCHAR (20)    NULL,
    [RestrictedBalance]                DECIMAL (18, 2) NULL,
    [OpeningBalance]                   DECIMAL (18, 2) NULL,
    [TotalBalance]                     DECIMAL (18, 2) NULL
);



