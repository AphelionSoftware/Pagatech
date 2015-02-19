	
CREATE VIEW OLAP.Finance_DimFinancialAccount AS
	(
		SELECT 
			edw.DimFinancialAccountID,edw.SourceKey,edw.Name,edw.DimFinancialHoldingAccountID,edw.DimBankAccountID,edw.DimPagaAccountID,edw.DimCurrencyID,edw.DimFinancialAccountTypeID,edw.AccountNumber,edw.RestrictedBalance,edw.OpeningBalance,edw.TotalBalance
		FROM Finance.DimFinancialAccount AS edw
		WHERE edw.IsActive = 1
	);