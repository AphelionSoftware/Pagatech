
CREATE VIEW [OLAP].[Classification_DimHasFinancialTransaction] AS
	(
		 
			SELECT  1 AS DimHasFinancialTransactionID, 'Yes' AS HasFinancialTransaction
			UNION ALL
			SELECT 0 AS DimHasFinancialTransactionID, 'No' AS HasFinancialTransaction

	);