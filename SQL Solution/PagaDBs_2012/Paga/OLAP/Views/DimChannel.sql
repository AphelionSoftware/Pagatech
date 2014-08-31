  

CREATE VIEW [OLAP].[DimChannel]
AS

SELECT 
	[DimChannel_6003638032027261361].[Code] AS [DimChannelCode]
	,[DimChannel_6003638032027261361].[Description] AS [DimChannelDescription]
	,[DimChannel_6003638032027261361].[DimChannelID] AS [DimChannelID]
	,[DimChannel_6003638032027261361].[Name] AS [DimChannelName]
	,[DimChannel_6003638032027261361].[SourceKey] AS [DimChannelSourceKey]
FROM [Activity].[DimChannel] AS [DimChannel_6003638032027261361]
GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimChannel', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimChannel', @level2type = N'COLUMN', @level2name = N'DimChannelSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimChannel', @level2type = N'COLUMN', @level2name = N'DimChannelSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimChannel', @level2type = N'COLUMN', @level2name = N'DimChannelSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimChannel', @level2type = N'COLUMN', @level2name = N'DimChannelSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimChannel', @level2type = N'COLUMN', @level2name = N'DimChannelSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimChannel', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimChannel', @level2type = N'COLUMN', @level2name = N'DimChannelName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimChannel', @level2type = N'COLUMN', @level2name = N'DimChannelName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimChannel', @level2type = N'COLUMN', @level2name = N'DimChannelName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimChannel', @level2type = N'COLUMN', @level2name = N'DimChannelName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimChannel', @level2type = N'COLUMN', @level2name = N'DimChannelName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimChannel', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimChannel', @level2type = N'COLUMN', @level2name = N'DimChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimChannel', @level2type = N'COLUMN', @level2name = N'DimChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimChannelID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimChannel', @level2type = N'COLUMN', @level2name = N'DimChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimChannel', @level2type = N'COLUMN', @level2name = N'DimChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimChannel', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimChannel', @level2type = N'COLUMN', @level2name = N'DimChannelDescription';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimChannel', @level2type = N'COLUMN', @level2name = N'DimChannelDescription';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Description', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimChannel', @level2type = N'COLUMN', @level2name = N'DimChannelDescription';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimChannel', @level2type = N'COLUMN', @level2name = N'DimChannelDescription';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'Description', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimChannel', @level2type = N'COLUMN', @level2name = N'DimChannelDescription';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimChannel', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimChannel', @level2type = N'COLUMN', @level2name = N'DimChannelCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimChannel', @level2type = N'COLUMN', @level2name = N'DimChannelCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Code', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimChannel', @level2type = N'COLUMN', @level2name = N'DimChannelCode';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimChannel', @level2type = N'COLUMN', @level2name = N'DimChannelCode';

