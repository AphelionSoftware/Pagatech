    

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



        