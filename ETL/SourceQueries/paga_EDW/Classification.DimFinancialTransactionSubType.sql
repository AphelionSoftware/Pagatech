--DimFinancialTransactionSubType
SELECT 
	SourceKey,
	base_query.name
FROM 
(
	SELECT
		FinancialTransactionSubTypeID AS SourceKey, 
		CONVERT(VARCHAR(255),Description) AS Name
	FROM dbo.FinancialTransactionSubType
) as base_query
