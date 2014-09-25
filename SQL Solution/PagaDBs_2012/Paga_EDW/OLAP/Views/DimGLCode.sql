  

CREATE VIEW [OLAP].[DimGLCode]
AS

SELECT 
	[DimGLCode_3289782493786267728].[DimGLCodeID] AS [DimGLCodeID]
	,[DimGLCode_3289782493786267728].[DimGLCodeSubGroupID] AS [DimGLCodeSubGroupID]
	,[DimGLCode_3289782493786267728].[GLCode] AS [DimGLCodeGLCode]
	,[DimGLCode_3289782493786267728].[IsNormalDebit] AS [DimGLCodeIsNormalDebit]
	,[DimGLCode_3289782493786267728].[Name] AS [DimGLCodeName]
	,[DimGLCode_3289782493786267728].[SourceKey] AS [DimGLCodeSourceKey]
	,[DimGLCode_3289782493786267728].[TextDesciption] AS [DimGLCodeTextDesciption]
	,[DimGLCodeSubGroup_506010276773670869].[DimGLCodeGroupID] AS [DimGLCodeSubGroupDimGLCodeGroupID]
	,[DimGLCodeSubGroup_506010276773670869].[GLCodeRange] AS [DimGLCodeSubGroupGLCodeRange]
	,[DimGLCodeSubGroup_506010276773670869].[Name] AS [DimGLCodeSubGroupName]
	,[DimGLCodeSubGroup_506010276773670869].[SourceKey] AS [DimGLCodeSubGroupSourceKey]
	,[DimGLCodeGroup_3475408479905953292].[DimChartofAccountsID] AS [DimGLCodeGroupDimChartofAccountsID]
	,[DimGLCodeGroup_3475408479905953292].[GLCodeRange] AS [DimGLCodeGroupGLCodeRange]
	,[DimGLCodeGroup_3475408479905953292].[Name] AS [DimGLCodeGroupName]
	,[DimGLCodeGroup_3475408479905953292].[SourceKey] AS [DimGLCodeGroupSourceKey]
	,[DimChartOfAccounts_3218958817736596417].[DimChartOfAccountsID] AS [DimChartOfAccountsID]
	,[DimChartOfAccounts_3218958817736596417].[GLCodeRange] AS [DimChartOfAccountsGLCodeRange]
	,[DimChartOfAccounts_3218958817736596417].[Name] AS [DimChartOfAccountsName]
	,[DimChartOfAccounts_3218958817736596417].[SourceKey] AS [DimChartOfAccountsSourceKey]
FROM [Finance].[DimGLCode] AS [DimGLCode_3289782493786267728]

    JOIN [Finance].[DimGLCodeSubGroup] AS [DimGLCodeSubGroup_506010276773670869] 
    
    JOIN [Finance].[DimGLCodeGroup] AS [DimGLCodeGroup_3475408479905953292] 
    
    JOIN [Finance].[DimChartOfAccounts] AS [DimChartOfAccounts_3218958817736596417] 
    
        ON  [DimGLCodeGroup_3475408479905953292].[DimChartofAccountsID] = [DimChartOfAccounts_3218958817736596417].[DimChartOfAccountsID]

        ON  [DimGLCodeSubGroup_506010276773670869].[DimGLCodeGroupID] = [DimGLCodeGroup_3475408479905953292].[DimGLCodeGroupID]

        ON  [DimGLCode_3289782493786267728].[DimGLCodeSubGroupID] = [DimGLCodeSubGroup_506010276773670869].[DimGLCodeSubGroupID]
GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimChartOfAccounts', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimChartOfAccountsSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimChartOfAccountsSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimChartOfAccountsSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimChartOfAccountsSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimChartOfAccounts', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimChartOfAccountsName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimChartOfAccountsName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimChartOfAccountsName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimChartOfAccountsName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimChartOfAccounts', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimChartOfAccountsGLCodeRange';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimChartOfAccountsGLCodeRange';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'GLCodeRange', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimChartOfAccountsGLCodeRange';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimChartOfAccountsGLCodeRange';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimChartOfAccounts', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimChartOfAccountsID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimChartOfAccountsID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimChartOfAccountsID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimChartOfAccountsID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimChartOfAccountsID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimGLCodeGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimGLCodeGroupSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimGLCodeGroupSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimGLCodeGroupSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimGLCodeGroupSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimGLCodeGroupSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimGLCodeGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimGLCodeGroupName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimGLCodeGroupName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimGLCodeGroupName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimGLCodeGroupName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimGLCodeGroupName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimGLCodeGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimGLCodeGroupGLCodeRange';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimGLCodeGroupGLCodeRange';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'GLCodeRange', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimGLCodeGroupGLCodeRange';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimGLCodeGroupGLCodeRange';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'GLCodeRange', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimGLCodeGroupGLCodeRange';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimGLCodeGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimGLCodeGroupDimChartofAccountsID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimGLCodeGroupDimChartofAccountsID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimChartofAccountsID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimGLCodeGroupDimChartofAccountsID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimGLCodeGroupDimChartofAccountsID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimGLHeadingID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimGLCodeGroupDimChartofAccountsID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimGLCodeSubGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimGLCodeSubGroupSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimGLCodeSubGroupSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimGLCodeSubGroupSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimGLCodeSubGroupSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimGLCodeSubGroupSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimGLCodeSubGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimGLCodeSubGroupName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimGLCodeSubGroupName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimGLCodeSubGroupName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimGLCodeSubGroupName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimGLCodeSubGroupName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimGLCodeSubGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimGLCodeSubGroupGLCodeRange';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimGLCodeSubGroupGLCodeRange';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'GLCodeRange', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimGLCodeSubGroupGLCodeRange';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimGLCodeSubGroupGLCodeRange';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'GLCodeRange', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimGLCodeSubGroupGLCodeRange';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimGLCodeSubGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimGLCodeSubGroupDimGLCodeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimGLCodeSubGroupDimGLCodeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimGLCodeGroupID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimGLCodeSubGroupDimGLCodeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimGLCodeSubGroupDimGLCodeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimGLCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimGLCodeTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimGLCodeTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'TextDesciption', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimGLCodeTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimGLCodeTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'Description', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimGLCodeTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimGLCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimGLCodeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimGLCodeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimGLCodeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimGLCodeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimGLCodeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimGLCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimGLCodeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimGLCodeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimGLCodeName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimGLCodeName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimGLCodeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimGLCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimGLCodeIsNormalDebit';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimGLCodeIsNormalDebit';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsNormalDebit', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimGLCodeIsNormalDebit';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimGLCodeIsNormalDebit';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'IsNormalDebit', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimGLCodeIsNormalDebit';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimGLCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimGLCodeGLCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimGLCodeGLCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'GLCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimGLCodeGLCode';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimGLCodeGLCode';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'GLCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimGLCodeGLCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimGLCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimGLCodeSubGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimGLCodeSubGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimGLCodeSubGroupID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimGLCodeSubGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimGLCodeSubGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimGLCodeGroupID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimGLCodeSubGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimGLCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimGLCodeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimGLCodeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimGLCodeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGLCode', @level2type = N'COLUMN', @level2name = N'DimGLCodeID';

