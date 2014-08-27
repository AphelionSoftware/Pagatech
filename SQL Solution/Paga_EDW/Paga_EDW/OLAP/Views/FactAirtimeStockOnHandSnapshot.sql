﻿    

CREATE VIEW [OLAP].[FactAirtimeStockOnHandSnapshot]
WITH SCHEMABINDING
AS

SELECT 
	[FactAirtimeStockOnHandSnapshot].[FactAirtimeStockOnHandSnapshotID] 
	,[FactAirtimeStockOnHandSnapshot].[AccountBalance] 
	,[FactAirtimeStockOnHandSnapshot].[DimCityID] 
	,[FactAirtimeStockOnHandSnapshot].[DimDateID] 
	,[FactAirtimeStockOnHandSnapshot].[DimMobileOperatorID] 
	,[FactAirtimeStockOnHandSnapshot].[DimOrganizationUnitLevel5ID] 
	,[FactAirtimeStockOnHandSnapshot].[DimPagaAccountID] 

FROM [Airtime].[FactAirtimeStockOnHandSnapshot] [FactAirtimeStockOnHandSnapshot]



        
GO
EXECUTE sp_addextendedproperty @name = N'XMLATableType', @value = N'MeasureGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeStockOnHandSnapshot';

