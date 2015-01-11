	
	CREATE VIEW dbo.LocalGovernmentArea AS
	(
			SELECT [LocalGovernmentAreaId], [CityId], [CountyId], [CreatedDate], [Name], [RegionId], [UpdatedDate], [LgaCode] FROM paga.dbo.LocalGovernmentArea	
	);
