  

CREATE VIEW [OLAP].[DimGLCode]
AS

SELECT 
	[DimGLCode_3289782493786267728].[DimGLCodeID] AS [GLCodeDimGLCodeID]
	,[DimGLCode_3289782493786267728].[DimGLCodeSubGroupID] AS [GLCodeDimGLCodeSubGroupID]
	,[DimGLCode_3289782493786267728].[GLCode] AS [GLCodeGLCode]
	,[DimGLCode_3289782493786267728].[IsNormalDebit] AS [GLCodeIsNormalDebit]
	,[DimGLCode_3289782493786267728].[Name] AS [GLCodeName]
	,[DimGLCode_3289782493786267728].[SourceKey] AS [GLCodeSourceKey]
	,[DimGLCode_3289782493786267728].[TextDesciption] AS [GLCodeTextDesciption]
	,[DimGLCodeSubGroup_506010276773670869].[DimGLCodeGroupID] AS [GLCodeSubGroupDimGLCodeGroupID]
	,[DimGLCodeSubGroup_506010276773670869].[DimGLCodeSubGroupID] AS [GLCodeSubGroupDimGLCodeSubGroupID]
	,[DimGLCodeSubGroup_506010276773670869].[GLCodeRange] AS [GLCodeSubGroupGLCodeRange]
	,[DimGLCodeSubGroup_506010276773670869].[Name] AS [GLCodeSubGroupName]
	,[DimGLCodeSubGroup_506010276773670869].[SourceKey] AS [GLCodeSubGroupSourceKey]
	,[DimGLCodeGroup_3475408479905953292].[DimChartofAccountsID] AS [GLCodeGroupDimChartofAccountsID]
	,[DimGLCodeGroup_3475408479905953292].[DimGLCodeGroupID] AS [GLCodeGroupDimGLCodeGroupID]
	,[DimGLCodeGroup_3475408479905953292].[GLCodeRange] AS [GLCodeGroupGLCodeRange]
	,[DimGLCodeGroup_3475408479905953292].[Name] AS [GLCodeGroupName]
	,[DimGLCodeGroup_3475408479905953292].[SourceKey] AS [GLCodeGroupSourceKey]
	,[DimChartOfAccounts_3218958817736596417].[DimChartOfAccountsID] AS [ChartOfAccountsDimChartOfAccountsID]
	,[DimChartOfAccounts_3218958817736596417].[GLCodeRange] AS [ChartOfAccountsGLCodeRange]
	,[DimChartOfAccounts_3218958817736596417].[Name] AS [ChartOfAccountsName]
	,[DimChartOfAccounts_3218958817736596417].[SourceKey] AS [ChartOfAccountsSourceKey]
FROM [Finance].[DimGLCode] AS [DimGLCode_3289782493786267728]

    JOIN [Finance].[DimGLCodeSubGroup] AS [DimGLCodeSubGroup_506010276773670869] 
    
    JOIN [Finance].[DimGLCodeGroup] AS [DimGLCodeGroup_3475408479905953292] 
    
    JOIN [Finance].[DimChartOfAccounts] AS [DimChartOfAccounts_3218958817736596417] 
    
        ON  [DimGLCodeGroup_3475408479905953292].[DimChartofAccountsID] = [DimChartOfAccounts_3218958817736596417].[DimChartOfAccountsID]

        ON  [DimGLCodeSubGroup_506010276773670869].[DimGLCodeGroupID] = [DimGLCodeGroup_3475408479905953292].[DimGLCodeGroupID]

        ON  [DimGLCode_3289782493786267728].[DimGLCodeSubGroupID] = [DimGLCodeSubGroup_506010276773670869].[DimGLCodeSubGroupID]
GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimChartOfAccounts', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'ChartOfAccountsSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'ChartOfAccountsSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'ChartOfAccountsSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'ChartOfAccountsSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimChartOfAccounts', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'ChartOfAccountsName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'ChartOfAccountsName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'ChartOfAccountsName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'ChartOfAccountsName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimChartOfAccounts', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'ChartOfAccountsGLCodeRange';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'ChartOfAccountsGLCodeRange';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'GLCodeRange', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'ChartOfAccountsGLCodeRange';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'ChartOfAccountsGLCodeRange';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimChartOfAccounts', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'ChartOfAccountsDimChartOfAccountsID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'ChartOfAccountsDimChartOfAccountsID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimChartOfAccountsID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'ChartOfAccountsDimChartOfAccountsID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'ChartOfAccountsDimChartOfAccountsID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimGLCodeGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'GLCodeGroupSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'GLCodeGroupSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'GLCodeGroupSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'GLCodeGroupSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'GLCodeGroupSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimGLCodeGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'GLCodeGroupName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'GLCodeGroupName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'GLCodeGroupName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'GLCodeGroupName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'GLCodeGroupName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimGLCodeGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'GLCodeGroupGLCodeRange';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'GLCodeGroupGLCodeRange';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'GLCodeRange', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'GLCodeGroupGLCodeRange';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'GLCodeGroupGLCodeRange';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimGLCodeGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'GLCodeGroupDimGLCodeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'GLCodeGroupDimGLCodeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimGLCodeGroupID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'GLCodeGroupDimGLCodeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'GLCodeGroupDimGLCodeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimGLCodeGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'GLCodeGroupDimChartofAccountsID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'GLCodeGroupDimChartofAccountsID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimChartofAccountsID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'GLCodeGroupDimChartofAccountsID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'GLCodeGroupDimChartofAccountsID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimGLCodeSubGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'GLCodeSubGroupSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'GLCodeSubGroupSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'GLCodeSubGroupSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'GLCodeSubGroupSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'GLCodeSubGroupSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimGLCodeSubGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'GLCodeSubGroupName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'GLCodeSubGroupName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'GLCodeSubGroupName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'GLCodeSubGroupName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'GLCodeSubGroupName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimGLCodeSubGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'GLCodeSubGroupGLCodeRange';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'GLCodeSubGroupGLCodeRange';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'GLCodeRange', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'GLCodeSubGroupGLCodeRange';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'GLCodeSubGroupGLCodeRange';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimGLCodeSubGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'GLCodeSubGroupDimGLCodeSubGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'GLCodeSubGroupDimGLCodeSubGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimGLCodeSubGroupID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'GLCodeSubGroupDimGLCodeSubGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'GLCodeSubGroupDimGLCodeSubGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimGLCodeSubGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'GLCodeSubGroupDimGLCodeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'GLCodeSubGroupDimGLCodeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimGLCodeGroupID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'GLCodeSubGroupDimGLCodeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'GLCodeSubGroupDimGLCodeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimGLCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'GLCodeTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'GLCodeTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'TextDesciption', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'GLCodeTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'GLCodeTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimGLCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'GLCodeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'GLCodeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'GLCodeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'GLCodeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'GLCodeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimGLCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'GLCodeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'GLCodeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'GLCodeName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'GLCodeName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'GLCodeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimGLCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'GLCodeIsNormalDebit';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'GLCodeIsNormalDebit';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsNormalDebit', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'GLCodeIsNormalDebit';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'GLCodeIsNormalDebit';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimGLCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'GLCodeGLCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'GLCodeGLCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'GLCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'GLCodeGLCode';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'GLCodeGLCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimGLCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'GLCodeDimGLCodeSubGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'GLCodeDimGLCodeSubGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimGLCodeSubGroupID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'GLCodeDimGLCodeSubGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'GLCodeDimGLCodeSubGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimGLCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'GLCodeDimGLCodeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'GLCodeDimGLCodeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimGLCodeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'GLCodeDimGLCodeID';

