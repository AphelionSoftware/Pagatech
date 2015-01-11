	
	CREATE VIEW dbo.City AS
	(
			SELECT [CityId], [CreatedDate], [Name], [PostalCode], [RegionId], [UpdatedDate], [LocalGovernmentAreaId] FROM paga.dbo.City	
	);
