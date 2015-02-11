--DimFinancialTransactionSubType 
SELECT  	ct.SYS_CHANGE_OPERATION, SYS_CHANGE_VERSION = ct.as_of_change_version, SourceKey, 	base_query.name FROM  ( 	SELECT 		FinancialTransactionSubTypeID AS SourceKey,  		CONVERT(VARCHAR(255),Description) AS Name 	FROM dbo.FinancialTransactionSubType ) as base_query
