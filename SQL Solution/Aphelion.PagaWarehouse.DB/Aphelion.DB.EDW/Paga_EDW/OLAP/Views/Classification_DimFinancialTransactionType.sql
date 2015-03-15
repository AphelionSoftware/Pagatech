
	
CREATE VIEW [OLAP].[Classification_DimFinancialTransactionType] AS
	(
		SELECT 
			edw.DimFinancialTxTypeID,
			edw.SourceKey,
			edw.Name,
			edw.FinancialTxCategory,
			FinancialTxPrefix =
			CASE 
				WHEN CHARINDEX('_',SourceKey,1) = 0 THEN SourceKey
				ELSE LEFT(SourceKey, CHARINDEX('_',SourceKey,0)-1)
			END
		FROM Classification.DimFinancialTransactionType AS edw
		WHERE edw.IsActive = 1
	);