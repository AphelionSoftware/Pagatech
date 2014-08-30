    

CREATE VIEW [OLAP].[FactUserMonthlySnapshot]
AS

SELECT 
	[FactUserMonthlySnapshot].[FactUserMonthlySnapshotID] 
	,[FactUserMonthlySnapshot].[AgentCommissionAmount] 
	,[FactUserMonthlySnapshot].[ByMeForOther_SentTxCount] 
	,[FactUserMonthlySnapshot].[ForMeByMe_SentTxCount] 
	,[FactUserMonthlySnapshot].[ForMeByOther_SentTxCount] 
	,[FactUserMonthlySnapshot].[ProcessAmount] 
	,[FactUserMonthlySnapshot].[ProcessFee] 
	,[FactUserMonthlySnapshot].[ReceivedTxCount] 
	,[FactUserMonthlySnapshot].[DimAsOfDateID] 
	,[FactUserMonthlySnapshot].[DimChannelID] 
	,[FactUserMonthlySnapshot].[DimCityID] 
	,[FactUserMonthlySnapshot].[DimCreatedDateID] 
	,[FactUserMonthlySnapshot].[DimOrganizationID] 
	,[FactUserMonthlySnapshot].[DimPagaAccountID] 
	,[FactUserMonthlySnapshot].[DimProcessTypeID] 

FROM [Activity].[FactUserMonthlySnapshot] [FactUserMonthlySnapshot]



        
GO
EXECUTE sp_addextendedproperty @name = N'XMLATableType', @value = N'MeasureGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactUserMonthlySnapshot';

