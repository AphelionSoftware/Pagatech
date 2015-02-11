--IntegrationTransactionResult	
SELECT 	
	ct.SYS_CHANGE_OPERATION, 
	SYS_CHANGE_VERSION = ct.as_of_change_version,	
	SourceKey, 		
	Name= SourceKey, 		
	DescriptionText 		
FROM 		
( 		
	SELECT 			
		itr.IntegrationTransactionResultId AS SourceKey,  			
		itr.IntegrationTransactionResultId AS Name,
		CONVERT(VARCHAR(1000),itr.description) AS DescriptionText 		
	FROM dbo.IntegrationTransactionResult AS itr 			
) as base_query
