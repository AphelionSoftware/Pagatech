    

CREATE VIEW [OLAP].[FactAirtimeStockOnHandSnapshot]
AS

SELECT 
	[FactAirtimeStockOnHandSnapshot].[FactAirtimeStockOnHandSnapshotID] 
	,[FactAirtimeStockOnHandSnapshot].[AccountBalance] 
	,[FactAirtimeStockOnHandSnapshot].[DimCityID] 
	,[FactAirtimeStockOnHandSnapshot].[DimDateID] 
	,[FactAirtimeStockOnHandSnapshot].[DimMobileOperatorID] 
	,[FactAirtimeStockOnHandSnapshot].[DimPagaAccountID] 

FROM [Airtime].[FactAirtimeStockOnHandSnapshot] [FactAirtimeStockOnHandSnapshot]



        