SELECT 
	SourceKey ,
	base_query.name,
	base_query.DimOrganizationSourceKey,
	base_query.BankAccountLinkType
FROM 
(
	SELECT
           [BankAccountLinkType] = COALESCE([BankAccountLinkTypeId],'UNKNOWN'),
           [Name]= CONVERT(Varchar(50),[BankName]),
           [SourceKey]=[BankId],
           [DimOrganizationSourceKey]=[OrganizationId]
    FROM [dbo].[Bank]    
) as base_query
