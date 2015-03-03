CREATE TABLE [Updates].[Finance_DimFinancialAccount] (
    [SourceKey]                    INT             NOT NULL,
    [Name]                         VARCHAR (255)   NOT NULL,
    [DimFinancialHoldingAccountID] INT             NULL,
    [DimBankAccountID]             INT             NOT NULL,
    [DimPagaAccountID]             INT             NOT NULL,
    [DimCurrencyID]                INT             NOT NULL,
    [DimFinancialAccountTypeID]    INT             NOT NULL,
    [AccountNumber]                VARCHAR (20)    NULL,
    [RestrictedBalance]            DECIMAL (18, 2) NULL,
    [OpeningBalance]               DECIMAL (18, 2) NULL,
    [TotalBalance]                 DECIMAL (18, 2) NULL,
    [SYS_CHANGE_VERSION]           BIGINT          DEFAULT ((0)) NOT NULL,
    [SYS_CHANGE_OPERATION]         CHAR (1)        DEFAULT ('I') NOT NULL
);




GO
CREATE CLUSTERED INDEX [ix_Finance_DimFinancialAccount_SourceKey]
    ON [Updates].[Finance_DimFinancialAccount]([SourceKey] ASC, [SYS_CHANGE_VERSION] DESC);

