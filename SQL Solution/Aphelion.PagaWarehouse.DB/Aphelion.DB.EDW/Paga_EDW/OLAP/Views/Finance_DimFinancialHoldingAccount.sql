	
CREATE VIEW OLAP.Finance_DimFinancialHoldingAccount AS
	(
		SELECT 
			edw.DimFinancialHoldingAccountID,edw.SourceKey,edw.Name,edw.AccountNumber,edw.RestrictedBalance,edw.OpeningBalance,edw.TotalBalance
		FROM Finance.DimFinancialHoldingAccount AS edw
		WHERE edw.IsActive = 1
	);