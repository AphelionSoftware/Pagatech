
	
CREATE VIEW [OLAP].[Finance_DimFinancialAccount] AS
	(
		SELECT 
			edw.DimFinancialAccountID,edw.SourceKey,edw.Name,fat.Name AS FinancialAccountType,edw.DimFinancialHoldingAccountID,edw.DimBankAccountID,edw.DimPagaAccountID,edw.DimCurrencyID,edw.AccountNumber,edw.RestrictedBalance,edw.OpeningBalance,edw.TotalBalance
		FROM Finance.DimFinancialAccount AS edw
		INNER JOIN Finance.DimFinancialAccountType as fat ON
			edw.DimFinancialAccountTypeID = fat.DimFinancialAccountTypeID
		WHERE edw.IsActive = 1
	);