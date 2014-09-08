CREATE TABLE [Finance].[DimFinancialAccountLevel1] (
    [DimFinancialAccountLevel1] INT             NOT NULL,
    [SourceKey]                 VARCHAR (255)   NOT NULL,
    [Name]                      VARCHAR (255)   NOT NULL,
    [DimBankAccountID]          INT             NOT NULL,
    [DimPagaAccountID]          INT             NOT NULL,
    [DimCurrencyID]             INT             NOT NULL,
    [DimFinancialAccountTypeID] INT             NOT NULL,
    [AccountNumber]             VARCHAR (20)    NULL,
    [RestrictedBalance]         DECIMAL (18, 2) NULL,
    [OpeningBalance]            DECIMAL (18, 2) NULL,
    [TotalBalance]              DECIMAL (18, 2) NULL,
    [SourceKeyHash]             BIGINT          NOT NULL,
    [DeltaHash]                 BIGINT          NOT NULL,
    [sys_ModifiedBy]            VARCHAR (255)   DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn]            DATETIME        DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]             VARCHAR (255)   DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]             DATETIME        DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [pk_DimFinancialHoldingAccountID] PRIMARY KEY CLUSTERED ([DimFinancialAccountLevel1] ASC),
    CONSTRAINT [fk_DimFinancialHoldingAccount_DimBankAccountID] FOREIGN KEY ([DimBankAccountID]) REFERENCES [Finance].[DimBankAccount] ([DimBankAccountID]),
    CONSTRAINT [fk_DimFinancialHoldingAccount_DimCurrencyID] FOREIGN KEY ([DimCurrencyID]) REFERENCES [Finance].[DimCurrency] ([DimCurrencyID]),
    CONSTRAINT [fk_DimFinancialHoldingAccount_DimFinancialAccountTypeID] FOREIGN KEY ([DimFinancialAccountTypeID]) REFERENCES [Finance].[DimFinancialAccountType] ([DimFinancialAccountTypeID]),
    CONSTRAINT [fk_DimFinancialHoldingAccount_DimPagaAccountID] FOREIGN KEY ([DimPagaAccountID]) REFERENCES [Shared].[DimPagaAccount] ([DimPagaAccountID])
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimFinancialHoldingAccount_SourceKey]
    ON [Finance].[DimFinancialAccountLevel1]([SourceKey] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'dbo.FinancialAccount', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimFinancialAccountLevel1';


GO
EXECUTE sp_addextendedproperty @name = N'PackageType', @value = N'1', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimFinancialAccountLevel1';


GO
EXECUTE sp_addextendedproperty @name = N'KeyColumn', @value = N'FinancialAccountId', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimFinancialAccountLevel1';


GO
EXECUTE sp_addextendedproperty @name = N'BaseQuery', @value = N'SELECT 
	SourceKey = COALESCE(base_query.SourceKey,change_log.change_log_SourceKey),
	AccountNumber, 
	Name,
	DimBankAccountSourceKey, 
	DimPagaAccountSourceKey,
	DimCurrencySourceKey,
	DimFinancialAccountTypeSourceKey,
	base_query.OpeningBalance, 
	base_query.RestrictedBalance, 
	base_query.TotalBalance, 
	change_operation = COALESCE(CONVERT(CHAR(1),change_log.change_operation),''I'')
FROM 
(
	SELECT 
		SourceKey = fa.FinancialAccountId,
		AccountNumber =  CONVERT(VARCHAR(20), fa.AccountNumber),
		Name = CONVERT(VARCHAR(20), fa.AccountNumber),
		fa.OpeningBalance,
		fa.RestrictedBalance,
		fa.TotalBalance,
		DimBankAccountSourceKey =  COALESCE(fa.BankAccountId, -1),
		DimCurrencySourceKey =  COALESCE(fa.CurrencyId, ''UNKNOWN''),
		DimFinancialAccountTypeSourceKey = fa.FinancialAccountTypeId,
		DimPagaAccountSourceKey = COALESCE(paga_acct.PagaAccountId,-1)
	FROM dbo.FinancialAccount AS fa
	OUTER APPLY
	(
		SELECT DISTINCT
			pa.PagaAccountId
		FROM dbo.pagaAccount AS pa  
		INNER JOIN dbo.PagaAccountNature AS pan ON
			pa.PagaAccountId = pan.PagaAccountId
		WHERE
			pa.AccountHolderId = fa.AccountHolderId
	) AS paga_acct
	WHERE
		EXISTS
		(
			SELECT DISTINCT		
				HoldingFinancialAccountID
			FROM dbo.FinancialAccount AS ha
			WHERE fa.FinancialAccountId = ha.HoldingFinancialAccountId
		) 
		OR fa.HoldingFinancialAccountId IS NULL
		
) AS base_query', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimFinancialAccountLevel1';

