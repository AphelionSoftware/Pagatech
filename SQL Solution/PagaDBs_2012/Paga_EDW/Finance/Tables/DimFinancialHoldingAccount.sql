CREATE TABLE [Finance].[DimFinancialHoldingAccount] (
    [DimFinancialHoldingAccountID] INT             NOT NULL,
    [SourceKey]                    VARCHAR (255)   NOT NULL,
    [Name]                         VARCHAR (255)   NOT NULL,
    [DimBankAccountID]             INT             NOT NULL,
	[DimPagaAccountID]			   INT			   NOT NULL,
    [DimCurrencyID]                INT             NOT NULL,
    [DimFinancialAccountTypeID]    INT             NOT NULL,
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
    CONSTRAINT [pk_DimFinancialHoldingAccountID] PRIMARY KEY CLUSTERED ([DimFinancialHoldingAccountID] ASC),
    CONSTRAINT [fk_DimFinancialHoldingAccount_DimBankAccountID] FOREIGN KEY ([DimBankAccountID]) REFERENCES [Finance].[DimBankAccount] ([DimBankAccountID]),
    CONSTRAINT [fk_DimFinancialHoldingAccount_DimCurrencyID] FOREIGN KEY ([DimCurrencyID]) REFERENCES [Finance].[DimCurrency] ([DimCurrencyID]),
    CONSTRAINT [fk_DimFinancialHoldingAccount_DimFinancialAccountTypeID] FOREIGN KEY ([DimFinancialAccountTypeID]) REFERENCES [Finance].[DimFinancialAccountType] ([DimFinancialAccountTypeID]),
	CONSTRAINT [fk_DimFinancialHoldingAccount_DimPagaAccountID] FOREIGN KEY (DimPagaAccountID) REFERENCES [Shared].[DimPagaAccount] ([DimPagaAccountID])
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimFinancialHoldingAccount_SourceKey]
    ON [Finance].[DimFinancialHoldingAccount]([SourceKey] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'BaseQuery', @value = N'SELECT 
	SourceKey = COALESCE(base_query.SourceKey,change_log.change_log_SourceKey),
	AccountNumber = CONVERT(VARCHAR(50),base_query.AccountNumber), 
	Name = CONVERT(VARCHAR(255), base_query.Name), 
	base_query.DimFinancialAccountTypeSourceKey,
	base_query.DimBankAccountSourceKey, 
	base_query.DimCurrencySourceKey, 
	base_query.OpeningBalance, 
	base_query.RestrictedBalance, 
	base_query.TotalBalance, 
	change_operation = COALESCE(CONVERT(CHAR(1),change_log.change_operation),''I'')
FROM 
(
	SELECT 
		SourceKey = fa.FinancialAccountId,
		fa.AccountNumber,
		Name = fa.AccountNumber,
		fa.OpeningBalance,
		fa.RestrictedBalance,
		fa.TotalBalance,
		DimBankAccountSourceKey = fa.BankAccountId,
		DimCurrencySourceKey = fa.CurrencyId,
		DimFinancialAccountTypeSourceKey = fa.FinancialAccountTypeId
	FROM dbo.FinancialAccount AS fa
	WHERE 
		fa.HoldingFinancialAccountId IS NOT NULL
) AS base_query', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimFinancialHoldingAccount';


GO
EXECUTE sp_addextendedproperty @name = N'KeyColumn', @value = N'FinancialAccountId', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimFinancialHoldingAccount';


GO
EXECUTE sp_addextendedproperty @name = N'PackageType', @value = N'1', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimFinancialHoldingAccount';


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'dbo.FinancialAccount', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimFinancialHoldingAccount';

