CREATE TABLE [Staging].[DimFinancialAccount] (
    [DimFinancialAccountID]        INT             NULL,
    [AccountNumber]                VARCHAR (20)    NULL,
    [Code]                         VARCHAR (50)    NOT NULL,
    [DeltaHash]                    BIGINT          NOT NULL,
    [DimAccountHolderUserID]       INT             NOT NULL,
    [DimBankAccountID]             INT             NOT NULL,
    [DimCOALevel4ID]               INT             NOT NULL,
    [DimCurrencyID]                INT             NOT NULL,
    [DimFinancialAccountTypeID]    INT             NOT NULL,
    [DimHoldingFinancialAccountID] INT             NOT NULL,
    [Name]                         VARCHAR (255)   NOT NULL,
    [OpeningBalance]               DECIMAL (18, 2) NULL,
    [RestrictedBalance]            DECIMAL (18, 2) NULL,
    [SourceKey]                    VARCHAR (255)   NOT NULL,
    [SourceKeyHash]                BIGINT          NOT NULL,
    [TotalBalance]                 DECIMAL (18, 2) NULL
);

