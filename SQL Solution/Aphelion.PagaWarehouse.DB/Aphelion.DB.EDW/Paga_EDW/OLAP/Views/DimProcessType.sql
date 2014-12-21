  

CREATE VIEW [OLAP].[DimProcessType]
AS

SELECT 
	[DimProcessType_8039570567428785353].[DescriptionText] AS [ProcessTypeDescriptionText]
	,[DimProcessType_8039570567428785353].[DimProcessTypeGroupID] AS [ProcessTypeDimProcessTypeGroupID]
	,[DimProcessType_8039570567428785353].[DimProcessTypeID] AS [ProcessTypeDimProcessTypeID]
	,[DimProcessType_8039570567428785353].[Name] AS [ProcessTypeName]
	,[DimProcessType_8039570567428785353].[SourceKey] AS [ProcessTypeSourceKey]
	,[DimProcessTypeGroup_1707194256712326932].[DimProcessTypeGroupID] AS [ProcessTypeGroupDimProcessTypeGroupID]
	,[DimProcessTypeGroup_1707194256712326932].[Name] AS [ProcessTypeGroupName]
	,[DimProcessTypeGroup_1707194256712326932].[SourceKey] AS [ProcessTypeGroupSourceKey]
FROM [Classification].[DimProcessType] AS [DimProcessType_8039570567428785353]

    JOIN [Classification].[DimProcessTypeGroup] AS [DimProcessTypeGroup_1707194256712326932] 
    
        ON  [DimProcessType_8039570567428785353].[DimProcessTypeGroupID] = [DimProcessTypeGroup_1707194256712326932].[DimProcessTypeGroupID]
GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimProcessTypeGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessType', @level2type = N'COLUMN', @level2name = N'ProcessTypeGroupSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Classification', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessType', @level2type = N'COLUMN', @level2name = N'ProcessTypeGroupSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessType', @level2type = N'COLUMN', @level2name = N'ProcessTypeGroupSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessType', @level2type = N'COLUMN', @level2name = N'ProcessTypeGroupSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimProcessTypeGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessType', @level2type = N'COLUMN', @level2name = N'ProcessTypeGroupName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Classification', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessType', @level2type = N'COLUMN', @level2name = N'ProcessTypeGroupName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessType', @level2type = N'COLUMN', @level2name = N'ProcessTypeGroupName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessType', @level2type = N'COLUMN', @level2name = N'ProcessTypeGroupName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimProcessTypeGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessType', @level2type = N'COLUMN', @level2name = N'ProcessTypeGroupDimProcessTypeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Classification', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessType', @level2type = N'COLUMN', @level2name = N'ProcessTypeGroupDimProcessTypeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimProcessTypeGroupID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessType', @level2type = N'COLUMN', @level2name = N'ProcessTypeGroupDimProcessTypeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessType', @level2type = N'COLUMN', @level2name = N'ProcessTypeGroupDimProcessTypeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimProcessType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessType', @level2type = N'COLUMN', @level2name = N'ProcessTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Classification', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessType', @level2type = N'COLUMN', @level2name = N'ProcessTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessType', @level2type = N'COLUMN', @level2name = N'ProcessTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessType', @level2type = N'COLUMN', @level2name = N'ProcessTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimProcessType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessType', @level2type = N'COLUMN', @level2name = N'ProcessTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Classification', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessType', @level2type = N'COLUMN', @level2name = N'ProcessTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessType', @level2type = N'COLUMN', @level2name = N'ProcessTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessType', @level2type = N'COLUMN', @level2name = N'ProcessTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimProcessType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessType', @level2type = N'COLUMN', @level2name = N'ProcessTypeDimProcessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Classification', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessType', @level2type = N'COLUMN', @level2name = N'ProcessTypeDimProcessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimProcessTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessType', @level2type = N'COLUMN', @level2name = N'ProcessTypeDimProcessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessType', @level2type = N'COLUMN', @level2name = N'ProcessTypeDimProcessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimProcessType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessType', @level2type = N'COLUMN', @level2name = N'ProcessTypeDimProcessTypeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Classification', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessType', @level2type = N'COLUMN', @level2name = N'ProcessTypeDimProcessTypeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimProcessTypeGroupID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessType', @level2type = N'COLUMN', @level2name = N'ProcessTypeDimProcessTypeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessType', @level2type = N'COLUMN', @level2name = N'ProcessTypeDimProcessTypeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimProcessType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessType', @level2type = N'COLUMN', @level2name = N'ProcessTypeDescriptionText';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Classification', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessType', @level2type = N'COLUMN', @level2name = N'ProcessTypeDescriptionText';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DescriptionText', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessType', @level2type = N'COLUMN', @level2name = N'ProcessTypeDescriptionText';

