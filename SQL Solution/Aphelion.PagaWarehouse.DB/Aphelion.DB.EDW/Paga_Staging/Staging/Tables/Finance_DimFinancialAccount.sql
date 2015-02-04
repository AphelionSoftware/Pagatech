﻿CREATE TABLE [Staging].[Finance_DimFinancialAccount] (
    [AccountNumber]                       VARCHAR (20)    NULL,
    [Name]                                VARCHAR (255)   NOT NULL,
    [OpeningBalance]                      DECIMAL (18, 2) NULL,
    [RestrictedBalance]                   DECIMAL (18, 2) NULL,
    [SourceKey]                           INT             NOT NULL,
    [TotalBalance]                        DECIMAL (18, 2) NULL,
    [DimBankAccountSourceKey]             INT             NOT NULL,
    [DimCurrencySourceKey]                VARCHAR (255)   NOT NULL,
    [DimFinancialAccountTypeSourceKey]    VARCHAR (255)   NOT NULL,
    [DimFinancialHoldingAccountSourceKey] INT             NULL,
    [DimPagaAccountSourceKey]             INT             NOT NULL
);




















GO


