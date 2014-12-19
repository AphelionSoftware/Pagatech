CREATE TABLE [Finance].[DimFinancialHoldingAccount] (
    [DimFinancialHoldingAccountID] INT             IDENTITY (1, 1) NOT NULL,
    [SourceKey]                    VARCHAR (255)   NOT NULL,
    [Name]                         VARCHAR (255)   NOT NULL,
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
    CONSTRAINT [pk_DimFinancialHoldingAccountID] PRIMARY KEY CLUSTERED ([DimFinancialHoldingAccountID] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimFinancialHoldingAccount_SourceKey]
    ON [Finance].[DimFinancialHoldingAccount]([SourceKey] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'dbo.FinancialAccount', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimFinancialHoldingAccount';


GO
EXECUTE sp_addextendedproperty @name = N'PackageType', @value = N'1', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimFinancialHoldingAccount';


GO
EXECUTE sp_addextendedproperty @name = N'LoadOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimFinancialHoldingAccount';


GO
EXECUTE sp_addextendedproperty @name = N'LoadGroup', @value = N'2000', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimFinancialHoldingAccount';


GO
EXECUTE sp_addextendedproperty @name = N'KeyColumn', @value = N'FinancialAccountId', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimFinancialHoldingAccount';


GO
EXECUTE sp_addextendedproperty @name = N'BaseQuery', @value = N'SELECT 
	SourceKey = COALESCE(base_query.SourceKey,change_log.change_log_SourceKey),
	base_query.AccountNumber,
	base_query.Name,
	base_query.OpeningBalance,
	base_query.RestrictedBalance,
	base_query.TotalBalance
FROM
(
	SELECT 
		SourceKey = fa.FinancialAccountId,
		AccountNumber =  CONVERT(VARCHAR(20), fa.AccountNumber),
		Name = CONVERT(VARCHAR(20), fa.AccountNumber),
		fa.OpeningBalance,
		fa.RestrictedBalance,
		fa.TotalBalance
	FROM dbo.FinancialAccount AS fa 
	WHERE 
		fa.HoldingFinancialAccountId IS NULL
) AS base_query', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimFinancialHoldingAccount';

