	
	CREATE VIEW dbo.Organization AS
	(
			SELECT [OrganizationId], [CreatedDate], [Description], [Name], [PagaAccountId], [ReferenceNumber], [TAXIdNumber], [UpdatedDate], [VATCertificationNumber], [BusinessTypeId], [RcName], [WebsiteURL], [Code], [PublicId], [OrganizationVerificationStatusId], [OrganizationSubscriptionStatusId], [DisplayName] FROM paga.dbo.Organization	
	);
