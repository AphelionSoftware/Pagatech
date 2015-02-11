--IntegrationTransactionType	
SELECT 	
	ct.SYS_CHANGE_OPERATION, 
	SYS_CHANGE_VERSION = ct.as_of_change_version,
	SourceKey, 		
	Name= SourceKey, 		
	DescriptionText 		
FROM 		
( 		
	SELECT 			
		itt.IntegrationTransactionTypeId AS SourceKey,  			
		itt.IntegrationTransactionTypeId AS Name,
		CONVERT(VARCHAR(1000),itt.description) AS DescriptionText 		
	FROM dbo.IntegrationTransactionType AS itt 			
) as base_query
