CREATE TABLE [Staging].[Finance_DimFinancialAccount] (
    [AccountNumber]                       VARCHAR (20)    NULL,
    [Name]                                VARCHAR (255)   NOT NULL,
    [OpeningBalance]                      DECIMAL (18, 2) NULL,
    [RestrictedBalance]                   DECIMAL (18, 2) NULL,
    [SourceKey]                           VARCHAR (255)   NOT NULL,
    [TotalBalance]                        DECIMAL (18, 2) NULL,
    [DimBankAccountSourceKey]             VARCHAR (255)   NOT NULL,
    [DimCurrencySourceKey]                VARCHAR (255)   NOT NULL,
    [DimFinancialHoldingAccountSourceKey] VARCHAR (255)   NULL,
    [change_operation]                    CHAR (1)        DEFAULT ((1)) NOT NULL
);









