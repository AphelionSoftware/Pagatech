﻿CREATE TABLE [Errors].[Finance_DimFinancialAccount] (
    [QueueID]                             INT             NOT NULL,
    [SSISErrorCode]                       INT             NOT NULL,
    [SSISErrorColumn]                     INT             NOT NULL,
    [PackageName]                         VARCHAR (255)   NOT NULL,
    [ErrorType]                           VARCHAR (255)   NOT NULL,
    [AccountNumber]                       VARCHAR (20)    NULL,
    [change_operation]                    CHAR (1)        NOT NULL,
    [DimBankAccountSourceKey]             VARCHAR (255)   NOT NULL,
    [DimCurrencySourceKey]                VARCHAR (255)   NOT NULL,
    [DimFinancialAccountTypeSourceKey]    VARCHAR (255)   NOT NULL,
    [DimFinancialHoldingAccountSourceKey] VARCHAR (255)   NULL,
    [DimPagaAccountSourceKey]             VARCHAR (255)   NOT NULL,
    [Name]                                VARCHAR (255)   NOT NULL,
    [OpeningBalance]                      DECIMAL (18, 2) NULL,
    [RestrictedBalance]                   DECIMAL (18, 2) NULL,
    [SourceKey]                           VARCHAR (255)   NOT NULL,
    [TotalBalance]                        DECIMAL (18, 2) NULL
);

