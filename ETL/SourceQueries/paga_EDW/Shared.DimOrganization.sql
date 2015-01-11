SELECT 
	SourceKey = COALESCE(base_query.SourceKey,change_log.change_log_SourceKey),
	change_operation = COALESCE(CONVERT(CHAR(1),change_log.change_operation),'I'),
	DisplayName, 
	Name, 
	OrganizationCode, 
	RcName, 
	ReferenceNumber, 
	TaxIDNumber, 
	TextDesciption, 
	VATCertificationNumber, 
	WebsiteURL, 
	DimBusinessTypeSourceKey, 
	DimPagaAccountSourceKey, 
	DimOrganizationSubscriptionStatusSourceKey, 
	DimOrganizationVerificationStatusSourceKey,
	DimMerchantCategorySourceKey,
	DimProcessChannelSourceKey
	
FROM 
(
	SELECT 
		SourceKey = o.OrganizationId,
		DisplayName = CONVERT(VARCHAR(100),o.DisplayName), 
		Name = CONVERT(VARCHAR(255),o.Name), 
		OrganizationCode = o.Code, 
		o.RcName, 
		o.ReferenceNumber, 
		o.TaxIDNumber, 
		TextDesciption = CONVERT(VARCHAR(1000), o.Description),
		o.VATCertificationNumber, 
		o.WebsiteURL, 
		DimBusinessTypeSourceKey = COALESCE(o.BusinessTypeId, 'UNKNOWN'), 
		DimPagaAccountSourceKey = o.PagaAccountId, 
		DimOrganizationSubscriptionStatusSourceKey = o.OrganizationSubscriptionStatusId, 
		DimOrganizationVerificationStatusSourceKey = o.OrganizationVerificationStatusId,
		DimMerchantCategorySourceKey = CONVERT(VARCHAR(50), COALESCE(omc.MerchantCategoryId, 'UNKNOWN')),
		DimProcessChannelSourceKey = CONVERT(VARCHAR(50), COALESCE(ompc.ProcessChannelId, 'UNKNOWN'))
	FROM dbo.Organization AS o
	LEFT JOIN dbo.OrganizationMerchantCategory AS omc ON
		o.OrganizationId = omc.OrganizationId
	LEFT JOIN dbo.OrganizationMerchantProcessChannel AS ompc ON
		o.OrganizationId = ompc.OrganizationId
) AS base_query
