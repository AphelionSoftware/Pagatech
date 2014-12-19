    

CREATE VIEW [OLAP].[FactProcessEvent]
AS

SELECT 
	[FactProcessEvent].[FactProcessEventID] 
	,[FactProcessEvent].[DimCompletedDateID] 
	,[FactProcessEvent].[DimCompletedTimeID] 
	,[FactProcessEvent].[DimForUserID] 
	,[FactProcessEvent].[DimInitiatingUserID] 
	,[FactProcessEvent].[DimOriginalProcessChannelID] 
	,[FactProcessEvent].[DimProcessChannelID] 
	,[FactProcessEvent].[DimProcessStatusID] 
	,[FactProcessEvent].[DimProcessTypeID] 
	,[FactProcessEvent].[DimToUserID] 
	,[FactProcessEvent].[DimUserID] 
	,[FactProcessEvent].[HasFinancialTransaction] 
	,[FactProcessEvent].[Name] 
	,[FactProcessEvent].[ProcessAmount] 
	,[FactProcessEvent].[ProcessFee] 
	,[FactProcessEvent].[SourceKey] 

FROM [Shared].[FactProcessEvent] [FactProcessEvent]
GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'ProcessFee';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'ProcessFee';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ProcessFee', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'ProcessFee';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'ProcessAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'ProcessAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ProcessAmount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'ProcessAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'HasFinancialTransaction';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'HasFinancialTransaction';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'HasFinancialTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'HasFinancialTransaction';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'DimUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'DimUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimUserID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'DimUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'DimToUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'DimToUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimToUserID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'DimToUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'DimProcessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'DimProcessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimProcessTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'DimProcessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'DimProcessStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'DimProcessStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimProcessStatusID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'DimProcessStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'DimProcessChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'DimProcessChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimProcessChannelID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'DimProcessChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'DimOriginalProcessChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'DimOriginalProcessChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOriginalProcessChannelID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'DimOriginalProcessChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'DimInitiatingUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'DimInitiatingUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimInitiatingUserID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'DimInitiatingUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'DimForUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'DimForUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimForUserID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'DimForUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'DimCompletedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'DimCompletedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimCompletedTimeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'DimCompletedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'DimCompletedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'DimCompletedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimCompletedDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent', @level2type = N'COLUMN', @level2name = N'DimCompletedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'XMLATableType', @value = N'MeasureGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessEvent';

