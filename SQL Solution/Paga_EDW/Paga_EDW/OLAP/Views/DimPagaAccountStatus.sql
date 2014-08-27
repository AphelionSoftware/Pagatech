    

CREATE VIEW [OLAP].[DimPagaAccountStatus]
WITH SCHEMABINDING
AS

SELECT 
	[DimPagaAccountStatus].[DimPagaAccountStatusID] 
	,[DimPagaAccountStatus].[Code] 
	,[DimPagaAccountStatus].[Name] 
	,[DimPagaAccountStatus].[SourceKey] 

FROM [Classification].[DimPagaAccountStatus] [DimPagaAccountStatus]



        
GO
EXECUTE sp_addextendedproperty @name = N'XMLATableType', @value = N'MeasureGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccountStatus';

