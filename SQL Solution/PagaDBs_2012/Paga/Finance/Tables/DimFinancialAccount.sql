CREATE TABLE [Finance].[DimFinancialAccount] (
    [DimFinancialAccountID]        INT             NOT NULL,
    [SourceKey]                    VARCHAR (255)   NOT NULL,
    [Name]                         VARCHAR (255)   NOT NULL,
    [DimFinancialHoldingAccountID] INT             NULL,
    [DimBankAccountID]             INT             NOT NULL,
    [DimCurrencyID]                INT             NOT NULL,
    [AccountNumber]                VARCHAR (20)    NULL,
    [RestrictedBalance]            DECIMAL (18, 2) NULL,
    [OpeningBalance]               DECIMAL (18, 2) NULL,
    [TotalBalance]                 DECIMAL (18, 2) NULL,
    [SourceKeyHash]                BIGINT          NOT NULL,
    [DeltaHash]                    BIGINT          NOT NULL,
    [sys_ModifiedBy]               VARCHAR (255)   DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn]               DATETIME        DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]                VARCHAR (255)   DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]                DATETIME        DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [pk_DimFinancialAccountID] PRIMARY KEY CLUSTERED ([DimFinancialAccountID] ASC),
    CONSTRAINT [fk_DimFinancialAccount_DimBankAccountID] FOREIGN KEY ([DimBankAccountID]) REFERENCES [Finance].[DimBankAccount] ([DimBankAccountID]),
    CONSTRAINT [fk_DimFinancialAccount_DimCurrencyID] FOREIGN KEY ([DimCurrencyID]) REFERENCES [Finance].[DimCurrency] ([DimCurrencyID]),
    CONSTRAINT [fk_DimFinancialAccount_DimFinancialHoldingAccountID] FOREIGN KEY ([DimFinancialHoldingAccountID]) REFERENCES [Finance].[DimFinancialHoldingAccount] ([DimFinancialHoldingAccountID])
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimFinancialAccount_SourceKey]
    ON [Finance].[DimFinancialAccount]([SourceKey] ASC);

