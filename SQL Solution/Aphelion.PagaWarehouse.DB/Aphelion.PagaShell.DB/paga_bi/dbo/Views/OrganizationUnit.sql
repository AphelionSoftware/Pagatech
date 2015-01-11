	
	CREATE VIEW dbo.OrganizationUnit AS
	(
			SELECT [OrganizationUnitId], [CreatedDate], [Name], [OrganizationId], [OrganizationUnitTypeId], [ParentOrganizationUnitId], [UpdatedDate], [IdentificationNumber] FROM paga.dbo.OrganizationUnit	
	);
