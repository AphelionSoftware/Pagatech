    

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
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactUserMonthlySnapshot', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactUserMonthlySnapshot', @level2type = N'COLUMN', @level2name = N'DimProcessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactUserMonthlySnapshot', @level2type = N'COLUMN', @level2name = N'DimProcessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimProcessTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactUserMonthlySnapshot', @level2type = N'COLUMN', @level2name = N'DimProcessTypeID';


GO



GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactUserMonthlySnapshot', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactUserMonthlySnapshot', @level2type = N'COLUMN', @level2name = N'DimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactUserMonthlySnapshot', @level2type = N'COLUMN', @level2name = N'DimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimPagaAccountID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactUserMonthlySnapshot', @level2type = N'COLUMN', @level2name = N'DimPagaAccountID';


GO



GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactUserMonthlySnapshot', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactUserMonthlySnapshot', @level2type = N'COLUMN', @level2name = N'DimOrganizationID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactUserMonthlySnapshot', @level2type = N'COLUMN', @level2name = N'DimOrganizationID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactUserMonthlySnapshot', @level2type = N'COLUMN', @level2name = N'DimOrganizationID';


GO



GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactUserMonthlySnapshot', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactUserMonthlySnapshot', @level2type = N'COLUMN', @level2name = N'DimCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactUserMonthlySnapshot', @level2type = N'COLUMN', @level2name = N'DimCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimCreatedDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactUserMonthlySnapshot', @level2type = N'COLUMN', @level2name = N'DimCreatedDateID';


GO



GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactUserMonthlySnapshot', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactUserMonthlySnapshot', @level2type = N'COLUMN', @level2name = N'DimCityID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactUserMonthlySnapshot', @level2type = N'COLUMN', @level2name = N'DimCityID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimCityID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactUserMonthlySnapshot', @level2type = N'COLUMN', @level2name = N'DimCityID';


GO



GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactUserMonthlySnapshot', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactUserMonthlySnapshot', @level2type = N'COLUMN', @level2name = N'DimChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactUserMonthlySnapshot', @level2type = N'COLUMN', @level2name = N'DimChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimChannelID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactUserMonthlySnapshot', @level2type = N'COLUMN', @level2name = N'DimChannelID';


GO



GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactUserMonthlySnapshot', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactUserMonthlySnapshot', @level2type = N'COLUMN', @level2name = N'DimAsOfDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactUserMonthlySnapshot', @level2type = N'COLUMN', @level2name = N'DimAsOfDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimAsOfDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactUserMonthlySnapshot', @level2type = N'COLUMN', @level2name = N'DimAsOfDateID';


GO



GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactUserMonthlySnapshot', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactUserMonthlySnapshot', @level2type = N'COLUMN', @level2name = N'ReceivedTxCount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactUserMonthlySnapshot', @level2type = N'COLUMN', @level2name = N'ReceivedTxCount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ReceivedTxCount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactUserMonthlySnapshot', @level2type = N'COLUMN', @level2name = N'ReceivedTxCount';


GO



GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactUserMonthlySnapshot', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactUserMonthlySnapshot', @level2type = N'COLUMN', @level2name = N'ProcessFee';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactUserMonthlySnapshot', @level2type = N'COLUMN', @level2name = N'ProcessFee';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ProcessFee', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactUserMonthlySnapshot', @level2type = N'COLUMN', @level2name = N'ProcessFee';


GO



GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactUserMonthlySnapshot', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactUserMonthlySnapshot', @level2type = N'COLUMN', @level2name = N'ProcessAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactUserMonthlySnapshot', @level2type = N'COLUMN', @level2name = N'ProcessAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ProcessAmount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactUserMonthlySnapshot', @level2type = N'COLUMN', @level2name = N'ProcessAmount';


GO



GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactUserMonthlySnapshot', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactUserMonthlySnapshot', @level2type = N'COLUMN', @level2name = N'ForMeByOther_SentTxCount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactUserMonthlySnapshot', @level2type = N'COLUMN', @level2name = N'ForMeByOther_SentTxCount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ForMeByOther_SentTxCount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactUserMonthlySnapshot', @level2type = N'COLUMN', @level2name = N'ForMeByOther_SentTxCount';


GO



GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactUserMonthlySnapshot', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactUserMonthlySnapshot', @level2type = N'COLUMN', @level2name = N'ForMeByMe_SentTxCount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactUserMonthlySnapshot', @level2type = N'COLUMN', @level2name = N'ForMeByMe_SentTxCount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ForMeByMe_SentTxCount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactUserMonthlySnapshot', @level2type = N'COLUMN', @level2name = N'ForMeByMe_SentTxCount';


GO



GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactUserMonthlySnapshot', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactUserMonthlySnapshot', @level2type = N'COLUMN', @level2name = N'ByMeForOther_SentTxCount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactUserMonthlySnapshot', @level2type = N'COLUMN', @level2name = N'ByMeForOther_SentTxCount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ByMeForOther_SentTxCount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactUserMonthlySnapshot', @level2type = N'COLUMN', @level2name = N'ByMeForOther_SentTxCount';


GO



GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactUserMonthlySnapshot', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactUserMonthlySnapshot', @level2type = N'COLUMN', @level2name = N'AgentCommissionAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactUserMonthlySnapshot', @level2type = N'COLUMN', @level2name = N'AgentCommissionAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'AgentCommissionAmount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactUserMonthlySnapshot', @level2type = N'COLUMN', @level2name = N'AgentCommissionAmount';


GO



GO
EXECUTE sp_addextendedproperty @name = N'XMLATableType', @value = N'MeasureGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactUserMonthlySnapshot';

