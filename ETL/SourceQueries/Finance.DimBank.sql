SELECT 
	SourceKey = COALESCE(base_query.SourceKey,change_log.change_log_SourceKey),
	base_query.name,
	base_query.DimOrganizationSourceKey,
	base_query.BankAccountLinkType,
	change_operation = COALESCE(CONVERT(CHAR(1),change_log.change_operation),'I')
FROM 
(
	SELECT
           [BankAccountLinkType] = COALESCE([BankAccountLinkTypeId],'UNKNOWN'),
           [Name]= CONVERT(Varchar(50),[BankName]),
           [SourceKey]=[BankId],
           [DimOrganizationSourceKey]=[OrganizationId]
    FROM [dbo].[Bank]    
) as base_query
