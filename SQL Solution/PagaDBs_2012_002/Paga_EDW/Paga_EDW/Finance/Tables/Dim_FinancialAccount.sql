CREATE TABLE [Finance].[DimFinancialAccount] (
    [DimFinancialAccountID]        INT             IDENTITY (1, 1) NOT NULL,
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
    [SourceKeyHash]                BIGINT          NULL,
    [DeltaHash]                    BIGINT          NULL,
    [sys_ModifiedBy]               VARCHAR (255)   DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn]               DATETIME        DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]                VARCHAR (255)   DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]                DATETIME        DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [pk_DimFinancialAccountID] PRIMARY KEY CLUSTERED ([DimFinancialAccountID] ASC),
    CONSTRAINT [fk_DimFinancialAccount_DimBankAccountID] FOREIGN KEY ([DimBankAccountID]) REFERENCES [Finance].[DimBankAccount] ([DimBankAccountID]),
    CONSTRAINT [fk_DimFinancialAccount_DimCurrencyID] FOREIGN KEY ([DimCurrencyID]) REFERENCES [Finance].[DimCurrency] ([DimCurrencyID]),
    CONSTRAINT [fk_DimFinancialAccount_DimFinancialAccountTypeID] FOREIGN KEY ([DimFinancialAccountTypeID]) REFERENCES [Finance].[DimFinancialAccountType] ([DimFinancialAccountTypeID]),
    CONSTRAINT [fk_DimFinancialAccount_DimFinancialHoldingAccount] FOREIGN KEY ([DimFinancialHoldingAccountID]) REFERENCES [Finance].[DimFinancialHoldingAccount] ([DimFinancialHoldingAccountID]),
    CONSTRAINT [fk_DimFinancialAccount_DimPagaAccountID] FOREIGN KEY ([DimPagaAccountID]) REFERENCES [Shared].[DimPagaAccount] ([DimPagaAccountID])
);










GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimFinancialAccount_SourceKey]
    ON [Finance].[DimFinancialAccount]([SourceKey] ASC, [DimFinancialAccountID] ASC);




GO
EXECUTE sp_addextendedproperty @name = N'LoadGroup', @value = N'2500', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimFinancialAccount';




GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimFinancialAccount_DimPagaAccountId]
    ON [Finance].[DimFinancialAccount]([DimPagaAccountID] ASC, [DimFinancialAccountID] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'dbo.FinancialAccount', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimFinancialAccount';


GO
EXECUTE sp_addextendedproperty @name = N'PackageType', @value = N'1', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimFinancialAccount';


GO
EXECUTE sp_addextendedproperty @name = N'LoadOrder', @value = N'5', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimFinancialAccount';


GO
EXECUTE sp_addextendedproperty @name = N'KeyColumn', @value = N'FinancialAccountId', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimFinancialAccount';


GO
EXECUTE sp_addextendedproperty @name = N'BaseQuery', @value = N'WITH cte AS
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
		DimHoldingFinancialAccountSourceKey = fa.FinancialAccountId,
		fa.AccountHolderId,
		1 AS OrgLevel
	FROM dbo.FinancialAccount AS fa 
	WHERE 
		fa.HoldingFinancialAccountId IS NULL
	UNION ALL
	SELECT 
		SourceKey = fa1.FinancialAccountId,
		AccountNumber =  CONVERT(VARCHAR(20), fa1.AccountNumber),
		Name = CONVERT(VARCHAR(20), fa1.AccountNumber),
		fa1.OpeningBalance,
		fa1.RestrictedBalance,
		fa1.TotalBalance,
		DimBankAccountSourceKey =  COALESCE(fa1.BankAccountId, -1),
		DimCurrencySourceKey =  COALESCE(fa1.CurrencyId, ''UNKNOWN''),
		DimFinancialAccountTypeSourceKey = fa1.FinancialAccountTypeId,		
		DimHoldingFinancialAccountSourceKey = fa1.HoldingFinancialAccountId,
		fa1.accountholderid,
		st.OrgLevel + 1 AS OrgLevel
	FROM [dbo].FinancialAccount AS fa1
	INNER JOIN cte AS ST ON 
		fa1.HoldingFinancialAccountId = st.SourceKey
	WHERE fa1.HoldingFinancialAccountId IS NOT NULL
)


SELECT	
	SourceKey = COALESCE(base_query.SourceKey,change_log.change_log_SourceKey),
	change_operation = COALESCE(CONVERT(CHAR(1),change_log.change_operation),''I''),
	base_query.AccountNumber,
	base_query.Name,
	base_query.OpeningBalance,
	base_query.RestrictedBalance,
	base_query.TotalBalance,
	base_query.DimBankAccountSourceKey,
	base_query.DimCurrencySourceKey,
	base_query.DimFinancialAccountTypeSourceKey,
	base_query.DimHoldingFinancialAccountSourceKey,
	base_query.DimPagaAccountSourceKey
FROM 
(
	SELECT 
		SourceKey = cte.SourceKey,
		AccountNumber =  cte.AccountNumber,
		Name = cte.AccountNumber,
		cte.OpeningBalance,
		cte.RestrictedBalance,
		cte.TotalBalance,
		DimBankAccountSourceKey =  COALESCE(cte.dimBankAccountSourceKey,-1),
		DimCurrencySourceKey =  COALESCE(cte.DimCurrencySourceKey, ''UNKNOWN''),
		DimFinancialAccountTypeSourceKey = cte.DimFinancialAccountTypeSourceKey,
		DimPagaAccountSourceKey = COALESCE(paga_acct.PagaAccountId,-1),
		cte.DimHoldingFinancialAccountSourceKey
	FROM cte 
	OUTER APPLY
	(
		SELECT DISTINCT
			pa.PagaAccountId
		FROM dbo.pagaAccount AS pa  
		INNER JOIN dbo.PagaAccountNature AS pan ON
			pa.PagaAccountId = pan.PagaAccountId
		WHERE
			pa.AccountHolderId = cte.AccountHolderId
	) AS paga_acct
) AS base_query', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimFinancialAccount';






GO
EXECUTE sp_addextendedproperty @name = N'ExcludeFromFlattenedViews', @value = N'True', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'ExcludeFromFlattenedViews', @value = N'True', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimCurrencyID';


GO
EXECUTE sp_addextendedproperty @name = N'ExcludeFromFlattenedViews', @value = N'True', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialHoldingAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'ExcludeFromFlattenedViews', @value = N'True', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountID';

