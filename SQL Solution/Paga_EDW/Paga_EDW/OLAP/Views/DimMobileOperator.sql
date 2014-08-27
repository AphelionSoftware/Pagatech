    

CREATE VIEW [OLAP].[DimMobileOperator]
WITH SCHEMABINDING
AS

SELECT 
	[DimMobileOperator].[DimMobileOperatorID] 
	,[DimMobileOperator].[Code] 
	,[DimMobileOperator].[DimOrganizationID] 
	,[DimMobileOperator].[IsActive] 
	,[DimMobileOperator].[Name] 
	,[DimMobileOperator].[SourceKey] 

FROM [Airtime].[DimMobileOperator] [DimMobileOperator]



        
GO
EXECUTE sp_addextendedproperty @name = N'XMLATableType', @value = N'MeasureGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator';

