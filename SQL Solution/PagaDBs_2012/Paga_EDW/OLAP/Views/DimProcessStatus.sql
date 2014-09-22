  

CREATE VIEW [OLAP].[DimProcessStatus]
AS

SELECT 
	[DimProcessStatus_5496531415009931415].[DimProcessStatusID] AS [ProcessStatusDimProcessStatusID]
	,[DimProcessStatus_5496531415009931415].[Name] AS [ProcessStatusName]
	,[DimProcessStatus_5496531415009931415].[SourceKey] AS [ProcessStatusSourceKey]
FROM [Classification].[DimProcessStatus] AS [DimProcessStatus_5496531415009931415]
GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimProcessStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessStatus', @level2type = N'COLUMN', @level2name = N'ProcessStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Classification', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessStatus', @level2type = N'COLUMN', @level2name = N'ProcessStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessStatus', @level2type = N'COLUMN', @level2name = N'ProcessStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessStatus', @level2type = N'COLUMN', @level2name = N'ProcessStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessStatus', @level2type = N'COLUMN', @level2name = N'ProcessStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimProcessStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessStatus', @level2type = N'COLUMN', @level2name = N'ProcessStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Classification', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessStatus', @level2type = N'COLUMN', @level2name = N'ProcessStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessStatus', @level2type = N'COLUMN', @level2name = N'ProcessStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessStatus', @level2type = N'COLUMN', @level2name = N'ProcessStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessStatus', @level2type = N'COLUMN', @level2name = N'ProcessStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimProcessStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessStatus', @level2type = N'COLUMN', @level2name = N'ProcessStatusDimProcessStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Classification', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessStatus', @level2type = N'COLUMN', @level2name = N'ProcessStatusDimProcessStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimProcessStatusID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessStatus', @level2type = N'COLUMN', @level2name = N'ProcessStatusDimProcessStatusID';

