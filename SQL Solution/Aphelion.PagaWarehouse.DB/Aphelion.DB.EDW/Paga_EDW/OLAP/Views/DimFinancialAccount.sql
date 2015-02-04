  

CREATE VIEW [OLAP].[DimFinancialAccount]
AS

SELECT 
	[DimFinancialAccount_5479953088314597640].[AccountNumber] AS [FinancialAccountAccountNumber]
	,[DimFinancialAccount_5479953088314597640].[DimBankAccountID] AS [FinancialAccountDimBankAccountID]
	,[DimFinancialAccount_5479953088314597640].[DimCurrencyID] AS [FinancialAccountDimCurrencyID]
	,[DimFinancialAccount_5479953088314597640].[DimFinancialAccountID] AS [FinancialAccountDimFinancialAccountID]
	,[DimFinancialAccount_5479953088314597640].[DimFinancialAccountTypeID] AS [FinancialAccountDimFinancialAccountTypeID]
	,[DimFinancialAccount_5479953088314597640].[DimFinancialHoldingAccountID] AS [FinancialAccountDimFinancialHoldingAccountID]
	,[DimFinancialAccount_5479953088314597640].[DimPagaAccountID] AS [FinancialAccountDimPagaAccountID]
	,[DimFinancialAccount_5479953088314597640].[Name] AS [FinancialAccountName]
	,[DimFinancialAccount_5479953088314597640].[OpeningBalance] AS [FinancialAccountOpeningBalance]
	,[DimFinancialAccount_5479953088314597640].[RestrictedBalance] AS [FinancialAccountRestrictedBalance]
	,[DimFinancialAccount_5479953088314597640].[SourceKey] AS [FinancialAccountSourceKey]
	,[DimFinancialAccount_5479953088314597640].[TotalBalance] AS [FinancialAccountTotalBalance]
	,[DimFinancialAccountType_3881567826262423435].[DimFinancialAccountTypeID] AS [FinancialAccountTypeDimFinancialAccountTypeID]
	,[DimFinancialAccountType_3881567826262423435].[DimGLCodeID] AS [FinancialAccountTypeDimGLCodeID]
	,[DimFinancialAccountType_3881567826262423435].[Name] AS [FinancialAccountTypeName]
	,[DimFinancialAccountType_3881567826262423435].[SourceKey] AS [FinancialAccountTypeSourceKey]
	,[DimFinancialAccountType_3881567826262423435].[TextDesciption] AS [FinancialAccountTypeTextDesciption]
	,[DimGLCode_6297516543257002500].[DimGLCodeID] AS [GLCodeDimGLCodeID]
	,[DimGLCode_6297516543257002500].[DimGLCodeSubGroupID] AS [GLCodeDimGLCodeSubGroupID]
	,[DimGLCode_6297516543257002500].[GLCode] AS [GLCodeGLCode]
	,[DimGLCode_6297516543257002500].[IsNormalDebit] AS [GLCodeIsNormalDebit]
	,[DimGLCode_6297516543257002500].[Name] AS [GLCodeName]
	,[DimGLCode_6297516543257002500].[SourceKey] AS [GLCodeSourceKey]
	,[DimGLCode_6297516543257002500].[TextDesciption] AS [GLCodeTextDesciption]
	,[DimGLCodeSubGroup_6796418661287905673].[DimGLCodeGroupID] AS [GLCodeSubGroupDimGLCodeGroupID]
	,[DimGLCodeSubGroup_6796418661287905673].[DimGLCodeSubGroupID] AS [GLCodeSubGroupDimGLCodeSubGroupID]
	,[DimGLCodeSubGroup_6796418661287905673].[GLCodeRange] AS [GLCodeSubGroupGLCodeRange]
	,[DimGLCodeSubGroup_6796418661287905673].[Name] AS [GLCodeSubGroupName]
	,[DimGLCodeSubGroup_6796418661287905673].[SourceKey] AS [GLCodeSubGroupSourceKey]
	,[DimGLCodeGroup_451899396352653528].[DimChartofAccountsID] AS [GLCodeGroupDimChartofAccountsID]
	,[DimGLCodeGroup_451899396352653528].[DimGLCodeGroupID] AS [GLCodeGroupDimGLCodeGroupID]
	,[DimGLCodeGroup_451899396352653528].[GLCodeRange] AS [GLCodeGroupGLCodeRange]
	,[DimGLCodeGroup_451899396352653528].[Name] AS [GLCodeGroupName]
	,[DimGLCodeGroup_451899396352653528].[SourceKey] AS [GLCodeGroupSourceKey]
	,[DimChartOfAccounts_1827048939649317877].[DimChartOfAccountsID] AS [ChartOfAccountsDimChartOfAccountsID]
	,[DimChartOfAccounts_1827048939649317877].[GLCodeRange] AS [ChartOfAccountsGLCodeRange]
	,[DimChartOfAccounts_1827048939649317877].[Name] AS [ChartOfAccountsName]
	,[DimChartOfAccounts_1827048939649317877].[SourceKey] AS [ChartOfAccountsSourceKey]
FROM [Finance].[DimFinancialAccount] AS [DimFinancialAccount_5479953088314597640]

    JOIN [Finance].[DimFinancialAccountType] AS [DimFinancialAccountType_3881567826262423435] 
    
    JOIN [Finance].[DimGLCode] AS [DimGLCode_6297516543257002500] 
    
    JOIN [Finance].[DimGLCodeSubGroup] AS [DimGLCodeSubGroup_6796418661287905673] 
    
    JOIN [Finance].[DimGLCodeGroup] AS [DimGLCodeGroup_451899396352653528] 
    
    JOIN [Finance].[DimChartOfAccounts] AS [DimChartOfAccounts_1827048939649317877] 
    
        ON  [DimGLCodeGroup_451899396352653528].[DimChartofAccountsID] = [DimChartOfAccounts_1827048939649317877].[DimChartOfAccountsID]

        ON  [DimGLCodeSubGroup_6796418661287905673].[DimGLCodeGroupID] = [DimGLCodeGroup_451899396352653528].[DimGLCodeGroupID]

        ON  [DimGLCode_6297516543257002500].[DimGLCodeSubGroupID] = [DimGLCodeSubGroup_6796418661287905673].[DimGLCodeSubGroupID]

        ON  [DimFinancialAccountType_3881567826262423435].[DimGLCodeID] = [DimGLCode_6297516543257002500].[DimGLCodeID]

        ON  [DimFinancialAccount_5479953088314597640].[DimFinancialAccountTypeID] = [DimFinancialAccountType_3881567826262423435].[DimFinancialAccountTypeID]
GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimChartOfAccounts', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'ChartOfAccountsSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'ChartOfAccountsSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'ChartOfAccountsSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'ChartOfAccountsSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimChartOfAccounts', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'ChartOfAccountsName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'ChartOfAccountsName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'ChartOfAccountsName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'ChartOfAccountsName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimChartOfAccounts', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'ChartOfAccountsGLCodeRange';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'ChartOfAccountsGLCodeRange';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'GLCodeRange', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'ChartOfAccountsGLCodeRange';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'ChartOfAccountsGLCodeRange';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimChartOfAccounts', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'ChartOfAccountsDimChartOfAccountsID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'ChartOfAccountsDimChartOfAccountsID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimChartOfAccountsID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'ChartOfAccountsDimChartOfAccountsID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'ChartOfAccountsDimChartOfAccountsID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimGLCodeGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'GLCodeGroupSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'GLCodeGroupSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'GLCodeGroupSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'GLCodeGroupSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'GLCodeGroupSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimGLCodeGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'GLCodeGroupName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'GLCodeGroupName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'GLCodeGroupName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'GLCodeGroupName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'GLCodeGroupName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimGLCodeGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'GLCodeGroupGLCodeRange';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'GLCodeGroupGLCodeRange';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'GLCodeRange', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'GLCodeGroupGLCodeRange';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'GLCodeGroupGLCodeRange';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimGLCodeGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'GLCodeGroupDimGLCodeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'GLCodeGroupDimGLCodeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimGLCodeGroupID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'GLCodeGroupDimGLCodeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'GLCodeGroupDimGLCodeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimGLCodeGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'GLCodeGroupDimChartofAccountsID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'GLCodeGroupDimChartofAccountsID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimChartofAccountsID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'GLCodeGroupDimChartofAccountsID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'GLCodeGroupDimChartofAccountsID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimGLCodeSubGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'GLCodeSubGroupSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'GLCodeSubGroupSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'GLCodeSubGroupSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'GLCodeSubGroupSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'GLCodeSubGroupSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimGLCodeSubGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'GLCodeSubGroupName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'GLCodeSubGroupName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'GLCodeSubGroupName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'GLCodeSubGroupName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'GLCodeSubGroupName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimGLCodeSubGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'GLCodeSubGroupGLCodeRange';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'GLCodeSubGroupGLCodeRange';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'GLCodeRange', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'GLCodeSubGroupGLCodeRange';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'GLCodeSubGroupGLCodeRange';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimGLCodeSubGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'GLCodeSubGroupDimGLCodeSubGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'GLCodeSubGroupDimGLCodeSubGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimGLCodeSubGroupID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'GLCodeSubGroupDimGLCodeSubGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'GLCodeSubGroupDimGLCodeSubGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimGLCodeSubGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'GLCodeSubGroupDimGLCodeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'GLCodeSubGroupDimGLCodeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimGLCodeGroupID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'GLCodeSubGroupDimGLCodeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'GLCodeSubGroupDimGLCodeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimGLCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'GLCodeTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'GLCodeTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'TextDesciption', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'GLCodeTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'GLCodeTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimGLCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'GLCodeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'GLCodeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'GLCodeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'GLCodeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'GLCodeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimGLCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'GLCodeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'GLCodeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'GLCodeName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'GLCodeName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'GLCodeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimGLCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'GLCodeIsNormalDebit';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'GLCodeIsNormalDebit';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsNormalDebit', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'GLCodeIsNormalDebit';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'GLCodeIsNormalDebit';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimGLCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'GLCodeGLCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'GLCodeGLCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'GLCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'GLCodeGLCode';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'GLCodeGLCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimGLCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'GLCodeDimGLCodeSubGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'GLCodeDimGLCodeSubGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimGLCodeSubGroupID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'GLCodeDimGLCodeSubGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'GLCodeDimGLCodeSubGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimGLCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'GLCodeDimGLCodeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'GLCodeDimGLCodeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimGLCodeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'GLCodeDimGLCodeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'GLCodeDimGLCodeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialAccountType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'FinancialAccountTypeTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'FinancialAccountTypeTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'TextDesciption', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'FinancialAccountTypeTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'FinancialAccountTypeTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialAccountType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'FinancialAccountTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'FinancialAccountTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'FinancialAccountTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'FinancialAccountTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialAccountType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'FinancialAccountTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'FinancialAccountTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'FinancialAccountTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'FinancialAccountTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialAccountType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'FinancialAccountTypeDimGLCodeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'FinancialAccountTypeDimGLCodeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimGLCodeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'FinancialAccountTypeDimGLCodeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'FinancialAccountTypeDimGLCodeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialAccountType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'FinancialAccountTypeDimFinancialAccountTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'FinancialAccountTypeDimFinancialAccountTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimFinancialAccountTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'FinancialAccountTypeDimFinancialAccountTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'FinancialAccountTypeDimFinancialAccountTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'FinancialAccountTotalBalance';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'FinancialAccountTotalBalance';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'TotalBalance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'FinancialAccountTotalBalance';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'FinancialAccountTotalBalance';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'FinancialAccountSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'FinancialAccountSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'FinancialAccountSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'FinancialAccountSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'FinancialAccountRestrictedBalance';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'FinancialAccountRestrictedBalance';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'RestrictedBalance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'FinancialAccountRestrictedBalance';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'FinancialAccountRestrictedBalance';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'FinancialAccountOpeningBalance';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'FinancialAccountOpeningBalance';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'OpeningBalance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'FinancialAccountOpeningBalance';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'FinancialAccountOpeningBalance';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'FinancialAccountName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'FinancialAccountName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'FinancialAccountName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'FinancialAccountName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'FinancialAccountDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'FinancialAccountDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimPagaAccountID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'FinancialAccountDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'FinancialAccountDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'ExcludeFromFlattenedViews', @value = N'True', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'FinancialAccountDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'FinancialAccountDimFinancialHoldingAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'FinancialAccountDimFinancialHoldingAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimFinancialHoldingAccountID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'FinancialAccountDimFinancialHoldingAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'FinancialAccountDimFinancialHoldingAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'ExcludeFromFlattenedViews', @value = N'True', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'FinancialAccountDimFinancialHoldingAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'FinancialAccountDimFinancialAccountTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'FinancialAccountDimFinancialAccountTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimFinancialAccountTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'FinancialAccountDimFinancialAccountTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'FinancialAccountDimFinancialAccountTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'FinancialAccountDimFinancialAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'FinancialAccountDimFinancialAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimFinancialAccountID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'FinancialAccountDimFinancialAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'FinancialAccountDimFinancialAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'FinancialAccountDimCurrencyID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'FinancialAccountDimCurrencyID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimCurrencyID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'FinancialAccountDimCurrencyID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'FinancialAccountDimCurrencyID';


GO
EXECUTE sp_addextendedproperty @name = N'ExcludeFromFlattenedViews', @value = N'True', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'FinancialAccountDimCurrencyID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'FinancialAccountDimBankAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'FinancialAccountDimBankAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimBankAccountID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'FinancialAccountDimBankAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'FinancialAccountDimBankAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'ExcludeFromFlattenedViews', @value = N'True', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'FinancialAccountDimBankAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'FinancialAccountAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'FinancialAccountAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'AccountNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'FinancialAccountAccountNumber';

