﻿CREATE TABLE [Finance].[DimFinancialAccountLevel2] (
    [DimFinancialAccountLevel2ID] INT             NOT NULL,
    [SourceKey]                   VARCHAR (255)   NOT NULL,
    [Name]                        VARCHAR (255)   NOT NULL,
    [DimFinancialAccountLevel1ID] INT             NULL,
    [DimBankAccountID]            INT             NOT NULL,
    [DimPagaAccountID]            INT             NOT NULL,
    [DimCurrencyID]               INT             NOT NULL,
    [DimFinancialAccountTypeID]   INT             NOT NULL,
    [AccountNumber]               VARCHAR (20)    NULL,
    [RestrictedBalance]           DECIMAL (18, 2) NULL,
    [OpeningBalance]              DECIMAL (18, 2) NULL,
    [TotalBalance]                DECIMAL (18, 2) NULL,
    [SourceKeyHash]               BIGINT          NOT NULL,
    [DeltaHash]                   BIGINT          NOT NULL,
    [sys_ModifiedBy]              VARCHAR (255)   DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn]              DATETIME        DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]               VARCHAR (255)   DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]               DATETIME        DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [pk_DimFinancialAccountID] PRIMARY KEY CLUSTERED ([DimFinancialAccountLevel2ID] ASC),
    CONSTRAINT [fk_DimFinancialAccount_DimBankAccountID] FOREIGN KEY ([DimBankAccountID]) REFERENCES [Finance].[DimBankAccount] ([DimBankAccountID]),
    CONSTRAINT [fk_DimFinancialAccount_DimCurrencyID] FOREIGN KEY ([DimCurrencyID]) REFERENCES [Finance].[DimCurrency] ([DimCurrencyID]),
    CONSTRAINT [fk_DimFinancialAccount_DimFinancialAccountLevel1] FOREIGN KEY ([DimFinancialAccountLevel1ID]) REFERENCES [Finance].[DimFinancialAccountLevel1] ([DimFinancialAccountLevel1]),
    CONSTRAINT [fk_DimFinancialAccount_DimFinancialAccountTypeID] FOREIGN KEY ([DimFinancialAccountTypeID]) REFERENCES [Finance].[DimFinancialAccountType] ([DimFinancialAccountTypeID]),
    CONSTRAINT [fk_DimFinancialAccount_DimPagaAccountID] FOREIGN KEY ([DimPagaAccountID]) REFERENCES [Shared].[DimPagaAccount] ([DimPagaAccountID])
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimFinancialAccount_SourceKey]
    ON [Finance].[DimFinancialAccountLevel2]([SourceKey] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'dbo.FinancialAccount', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimFinancialAccountLevel2';


GO
EXECUTE sp_addextendedproperty @name = N'PackageType', @value = N'1', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimFinancialAccountLevel2';


GO
EXECUTE sp_addextendedproperty @name = N'KeyColumn', @value = N'FinancialAccountId', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimFinancialAccountLevel2';


GO
EXECUTE sp_addextendedproperty @name = N'BaseQuery', @value = N'SELECT 
	SourceKey = COALESCE(base_query.SourceKey,change_log.change_log_SourceKey),
	AccountNumber, 
	Name,
	DimBankAccountSourceKey, 
	DimPagaAccountSourceKey,
	DimCurrencySourceKey,
	DimFinancialAccountTypeSourceKey,
	DimFinancialAccountLevel1SourceKey,
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
		DimPagaAccountSourceKey = COALESCE(paga_acct.PagaAccountId,-1),
		DimFinancialAccountLevel1SourceKey = fa.HoldingFinancialAccountId
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
		fa.HoldingFinancialAccountId IS NOT NULL
		
) AS base_query', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimFinancialAccountLevel2';

