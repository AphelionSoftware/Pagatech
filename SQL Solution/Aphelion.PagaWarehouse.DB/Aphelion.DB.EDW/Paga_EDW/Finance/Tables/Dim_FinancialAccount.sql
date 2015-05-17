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
    [sys_ModifiedBy]               VARCHAR (255)   DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn]               DATETIME        DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]                VARCHAR (255)   DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]                DATETIME        DEFAULT (getdate()) NOT NULL,
    [IsActive]                     BIT             DEFAULT ((1)) NOT NULL,
    [SYS_CHANGE_VERSION]           BIGINT          DEFAULT ((0)) NOT NULL,
    [SYS_CHANGE_OPERATION]         CHAR (1)        DEFAULT ('I') NOT NULL,
    [DimGLCodeID]                  INT             DEFAULT ((-1)) NOT NULL,
    CONSTRAINT [pk_DimFinancialAccountID] PRIMARY KEY CLUSTERED ([DimFinancialAccountID] ASC),
    CONSTRAINT [fk_DimFinancialAccount_DimBankAccountID] FOREIGN KEY ([DimBankAccountID]) REFERENCES [Finance].[DimBankAccount] ([DimBankAccountID]),
    CONSTRAINT [fk_DimFinancialAccount_DimCurrencyID] FOREIGN KEY ([DimCurrencyID]) REFERENCES [Finance].[DimCurrency] ([DimCurrencyID]),
    CONSTRAINT [fk_DimFinancialAccount_DimFinancialAccountTypeID] FOREIGN KEY ([DimFinancialAccountTypeID]) REFERENCES [Classification].[DimFinancialAccountType] ([DimFinancialAccountTypeID]),
    CONSTRAINT [fk_DimFinancialAccount_DimFinancialHoldingAccount] FOREIGN KEY ([DimFinancialHoldingAccountID]) REFERENCES [Finance].[DimFinancialHoldingAccount] ([DimFinancialHoldingAccountID]),
    CONSTRAINT [fk_DimFinancialAccount_DimGLCodeID] FOREIGN KEY ([DimGLCodeID]) REFERENCES [Finance].[DimGLCode] ([DimGLCodeID]),
    CONSTRAINT [fk_DimFinancialAccount_DimPagaAccountID] FOREIGN KEY ([DimPagaAccountID]) REFERENCES [Shared].[DimPagaAccount] ([DimPagaAccountID])
);




















































GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimFinancialAccount_SourceKey]
    ON [Finance].[DimFinancialAccount]([SourceKey] ASC);






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
EXECUTE sp_addextendedproperty @name = N'LoadOrder', @value = N'6', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimFinancialAccount';




GO
EXECUTE sp_addextendedproperty @name = N'KeyColumn', @value = N'FinancialAccountId', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimFinancialAccount';


GO
EXECUTE sp_addextendedproperty @name = N'BaseQuery', @value = N'WITH cte AS 
(  	
	SELECT
		SourceKey = fa.FinancialAccountId, 		
		AccountNumber =  CONVERT(VARCHAR(20), fa.AccountNumber), 		
		fa.OpeningBalance, 		
		fa.RestrictedBalance, 		
		fa.TotalBalance, 		
		DimBankAccountSourceKey =  COALESCE(fa.BankAccountId, -1), 		
		DimCurrencySourceKey =  COALESCE(fa.CurrencyId, ''UNKNOWN''), 		
		DimFinancialAccountTypeSourceKey = fa.FinancialAccountTypeId, 		
		DimHoldingFinancialAccountSourceKey = fa.FinancialAccountId, 		
		fa.PagaAccountId,
		fa.AccountCodeId, 		
		1 AS OrgLevel 	
	FROM dbo.FinancialAccount AS fa  	
	WHERE  		
		fa.HoldingFinancialAccountId IS NULL 	
	UNION ALL 	
	SELECT  		
		SourceKey = fa1.FinancialAccountId, 		
		AccountNumber =  CONVERT(VARCHAR(20), fa1.AccountNumber), 		
		fa1.OpeningBalance, 		
		fa1.RestrictedBalance, 		
		fa1.TotalBalance, 		
		DimBankAccountSourceKey =  COALESCE(fa1.BankAccountId, -1), 		
		DimCurrencySourceKey =  COALESCE(fa1.CurrencyId, ''UNKNOWN''), 		
		DimFinancialAccountTypeSourceKey = fa1.FinancialAccountTypeId,		 		
		DimHoldingFinancialAccountSourceKey = fa1.HoldingFinancialAccountId, 		
		fa1.PagaAccountId, 
		fa1.AccountCodeId,		
		st.OrgLevel + 1 AS OrgLevel 	
	FROM [dbo].FinancialAccount AS fa1 	
	INNER JOIN cte AS ST ON  		
		fa1.HoldingFinancialAccountId = st.SourceKey 	
	WHERE fa1.HoldingFinancialAccountId IS NOT NULL 
)  
SELECT	
	ct.SYS_CHANGE_OPERATION, paga_change_log_id = ct.row_id, 
	SYS_CHANGE_VERSION = ct.as_of_change_version, 
	SourceKey, 	
	base_query.AccountNumber, 	
	Name = base_query.AccountNumber, 	
	base_query.OpeningBalance, 	
	base_query.RestrictedBalance, 	
	base_query.TotalBalance, 	
	base_query.DimBankAccountSourceKey, 	
	base_query.DimCurrencySourceKey, 	
	base_query.DimFinancialAccountTypeSourceKey, 	
	base_query.DimHoldingFinancialAccountSourceKey, 	
	base_query.DimPagaAccountSourceKey,
	base_query.DimGLCodeSourceKey 
FROM  
( 	
	SELECT  		
		SourceKey = cte.SourceKey, 		
		AccountNumber =  CASE 
							WHEN datalength(cte.AccountNumber) = 0 THEN ''UNKNOWN''
							ELSE cte.AccountNumber
						END, 		
		cte.OpeningBalance, 		
		cte.RestrictedBalance, 		
		cte.TotalBalance, 		
		DimBankAccountSourceKey =  COALESCE(cte.dimBankAccountSourceKey,-1), 		
		DimCurrencySourceKey =  COALESCE(cte.DimCurrencySourceKey, ''UNKNOWN''), 		
		DimFinancialAccountTypeSourceKey = cte.DimFinancialAccountTypeSourceKey, 		
		DimPagaAccountSourceKey = COALESCE(cte.PagaAccountId,-1), 
		DimGLCodeSourceKey = COALESCE(cte.AccountCodeId,-1), 			
		cte.DimHoldingFinancialAccountSourceKey 	
		FROM cte  	
) AS base_query ', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimFinancialAccount';
































GO
EXECUTE sp_addextendedproperty @name = N'ExcludeFromFlattenedViews', @value = N'True', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'ExcludeFromFlattenedViews', @value = N'True', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimCurrencyID';


GO
EXECUTE sp_addextendedproperty @name = N'ExcludeFromFlattenedViews', @value = N'True', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialHoldingAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'ExcludeFromFlattenedViews', @value = N'True', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'UpdateQuery', @value = 'MERGE  Paga_EDW.[Finance].[DimFinancialAccount] AS Target
			USING 
			(
				SELECT
						x.*
				FROM
				(
					SELECT
						ROW_NUMBER() OVER (PARTITION BY stg.SourceKey ORDER BY stg.SYS_CHANGE_VERSION DESC) AS rn,
						stg.*
					FROM Paga_Staging.Updates.Finance_DimFinancialAccount AS stg
				) as x
				WHERE x.rn = 1

			) AS Source ON 
				Target.sourcekey = Source.sourcekey


			WHEN MATCHED  
			THEN
				UPDATE SET 
				Target.SourceKey = Source.SourceKey,Target.Name = Source.Name,Target.DimFinancialHoldingAccountID = Source.DimFinancialHoldingAccountID,Target.DimBankAccountID = Source.DimBankAccountID,Target.DimPagaAccountID = Source.DimPagaAccountID,Target.DimCurrencyID = Source.DimCurrencyID,Target.DimFinancialAccountTypeID = Source.DimFinancialAccountTypeID,Target.AccountNumber = Source.AccountNumber,Target.RestrictedBalance = Source.RestrictedBalance,Target.OpeningBalance = Source.OpeningBalance,Target.TotalBalance = Source.TotalBalance,Target.SYS_CHANGE_VERSION = Source.SYS_CHANGE_VERSION,Target.SYS_CHANGE_OPERATION = Source.SYS_CHANGE_OPERATION,Target.DimGLCodeID = Source.DimGLCodeID
			WHEN NOT MATCHED BY TARGET
			THEN
				INSERT 
				(
					SourceKey,Name,DimFinancialHoldingAccountID,DimBankAccountID,DimPagaAccountID,DimCurrencyID,DimFinancialAccountTypeID,AccountNumber,RestrictedBalance,OpeningBalance,TotalBalance,SYS_CHANGE_VERSION,SYS_CHANGE_OPERATION,DimGLCodeID
				)
			VALUES 
			(
				Source.SourceKey,Source.Name,Source.DimFinancialHoldingAccountID,Source.DimBankAccountID,Source.DimPagaAccountID,Source.DimCurrencyID,Source.DimFinancialAccountTypeID,Source.AccountNumber,Source.RestrictedBalance,Source.OpeningBalance,Source.TotalBalance,Source.SYS_CHANGE_VERSION,Source.SYS_CHANGE_OPERATION,Source.DimGLCodeID
			);', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'DimFinancialAccount';








GO
CREATE NONCLUSTERED INDEX [ix_DimFinancialAccount_DimBankAccountID]
    ON [Finance].[DimFinancialAccount]([DimBankAccountID] ASC);


GO
CREATE NONCLUSTERED INDEX [ix_DimFinancialAccount_ChangeVersion]
    ON [Finance].[DimFinancialAccount]([SYS_CHANGE_VERSION] ASC);


GO
CREATE NONCLUSTERED INDEX [ix_DimFinancialAccount_DimFinancialAccountTypeID]
    ON [Finance].[DimFinancialAccount]([DimFinancialAccountTypeID] ASC)
    INCLUDE([DimFinancialAccountID]);

