


	
CREATE VIEW [OLAP].[Finance_DimFinancialAccount] AS
	(
		SELECT 
			edw.DimFinancialAccountID,
			edw.SourceKey,
			AccountName = 
			CASE 
				WHEN DATALENGTH(edw.Name) = 0 THEN 'No Name Available'
				ELSE edw.Name
			END,
			fat.SourceKey AS FinancialAccountType,
			fat.DimFinancialAccountTypeID,
			edw.DimFinancialHoldingAccountID,
			edw.DimBankAccountID,
			edw.DimPagaAccountID,
			edw.DimCurrencyID,
			edw.AccountNumber,
			edw.RestrictedBalance,
			edw.OpeningBalance,
			edw.TotalBalance,
			fat.DimGLCodeID
		FROM Finance.DimFinancialAccount AS edw
		INNER JOIN Finance.DimFinancialAccountType as fat ON
			edw.DimFinancialAccountTypeID = fat.DimFinancialAccountTypeID
		WHERE 
			edw.IsActive = 1
	);