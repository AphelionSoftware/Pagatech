    

CREATE VIEW [OLAP].[DimPagaAccountUserType]
WITH SCHEMABINDING
AS

SELECT 
	[DimPagaAccountUserType].[DimPagaAccountUserTypeID] 
	,[DimPagaAccountUserType].[Code] 
	,[DimPagaAccountUserType].[Description] 
	,[DimPagaAccountUserType].[Name] 
	,[DimPagaAccountUserType].[SourceKey] 

FROM [Classification].[DimPagaAccountUserType] [DimPagaAccountUserType]



        
GO
EXECUTE sp_addextendedproperty @name = N'XMLATableType', @value = N'MeasureGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccountUserType';

