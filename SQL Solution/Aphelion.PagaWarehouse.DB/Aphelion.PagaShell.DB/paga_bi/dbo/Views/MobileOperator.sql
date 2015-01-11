	
	CREATE VIEW dbo.MobileOperator AS
	(
		SELECT [MobileOperatorId], [CreatedDate], [IsUsesPinless], [Name], [PINDiscountRate], [UpdatedDate], [Rank], [IsActive], [IsSupportsUSSD], [OrganizationId], [RouteName] FROM paga.dbo.MobileOperator
		
	);
