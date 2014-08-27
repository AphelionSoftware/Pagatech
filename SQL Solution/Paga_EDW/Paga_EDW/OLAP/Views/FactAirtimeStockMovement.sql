    

CREATE VIEW [OLAP].[FactAirtimeStockMovement]
WITH SCHEMABINDING
AS

SELECT 
	[FactAirtimeStockMovement].[FactAirtimeStockMovementID] 
	,[FactAirtimeStockMovement].[DimCityID] 
	,[FactAirtimeStockMovement].[DimDateID] 
	,[FactAirtimeStockMovement].[DimMobileOperatorID] 
	,[FactAirtimeStockMovement].[DimOrganizationUnitLevel5ID] 
	,[FactAirtimeStockMovement].[DimPagaAccountID] 
	,[FactAirtimeStockMovement].[MovementAmount] 

FROM [Airtime].[FactAirtimeStockMovement] [FactAirtimeStockMovement]



        
GO
EXECUTE sp_addextendedproperty @name = N'XMLATableType', @value = N'MeasureGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeStockMovement';

