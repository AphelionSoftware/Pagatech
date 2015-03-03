
MERGE  Paga_EDW.Finance.DimFinancialAccount AS Target
USING 
(
	SELECT
		*
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
		Target.Name = Source.Name,Target.DimFinancialHoldingAccountID = Source.DimFinancialHoldingAccountID,Target.DimBankAccountID = Source.DimBankAccountID,Target.DimPagaAccountID = Source.DimPagaAccountID,Target.DimCurrencyID = Source.DimCurrencyID,Target.DimFinancialAccountTypeID = Source.DimFinancialAccountTypeID,Target.AccountNumber = Source.AccountNumber,Target.RestrictedBalance = Source.RestrictedBalance,Target.OpeningBalance = Source.OpeningBalance,Target.TotalBalance = Source.TotalBalance,Target.SYS_CHANGE_VERSION = Source.SYS_CHANGE_VERSION,Target.SYS_CHANGE_OPERATION = Source.SYS_CHANGE_OPERATION
	
WHEN NOT MATCHED BY TARGET
THEN
	INSERT 
	(
		[SourceKey],
		Name,DimFinancialHoldingAccountID,DimBankAccountID,DimPagaAccountID,DimCurrencyID,DimFinancialAccountTypeID,AccountNumber,RestrictedBalance,OpeningBalance,TotalBalance,SYS_CHANGE_VERSION,SYS_CHANGE_OPERATION
	)
	VALUES 
	(
		Source.[SourceKey],
		Source.Name,Source.DimFinancialHoldingAccountID,Source.DimBankAccountID,Source.DimPagaAccountID,Source.DimCurrencyID,Source.DimFinancialAccountTypeID,Source.AccountNumber,Source.RestrictedBalance,Source.OpeningBalance,Source.TotalBalance,Source.SYS_CHANGE_VERSION,Source.SYS_CHANGE_OPERATION
	);