    

CREATE VIEW [OLAP].[FactAirtimeStockMovement]
AS

SELECT 
	[FactAirtimeStockMovement].[FactAirtimeStockMovementID] 
	,[FactAirtimeStockMovement].[MovementAmount] 
	,[FactAirtimeStockMovement].[DimCityID] 
	,[FactAirtimeStockMovement].[DimDateID] 
	,[FactAirtimeStockMovement].[DimMobileOperatorID] 
	,[FactAirtimeStockMovement].[DimPagaAccountID] 

FROM [Airtime].[FactAirtimeStockMovement] [FactAirtimeStockMovement]



        
GO
EXECUTE sp_addextendedproperty @name = N'XMLATableType', @value = N'MeasureGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeStockMovement';

