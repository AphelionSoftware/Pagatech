    

CREATE VIEW [OLAP].[DimCurrency]
WITH SCHEMABINDING
AS

SELECT 
	[DimCurrency].[DimCurrencyID] 
	,[DimCurrency].[Code] 
	,[DimCurrency].[Name] 
	,[DimCurrency].[SourceKey] 

FROM [Finance].[DimCurrency] [DimCurrency]



        
GO
EXECUTE sp_addextendedproperty @name = N'XMLATableType', @value = N'MeasureGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCurrency';

