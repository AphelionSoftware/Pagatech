
    

CREATE VIEW [OLAP].[FactFinancialTransactions]
AS

SELECT 
	[FactFinancialTransactions].[FactFinancialTransactionsID] 
	,[FactFinancialTransactions].[CreditAmount] 
	,[FactFinancialTransactions].[DebitAmount] 
	,[FactFinancialTransactions].[DimCityID] 
	,[FactFinancialTransactions].[DimCreatedDateID] 
	,[FactFinancialTransactions].[DimCreatedTimeID] 
	,[FactFinancialTransactions].[DimEffectiveDateID] 
	,[FactFinancialTransactions].[DimEffectiveTimeID] 
	,[FactFinancialTransactions].[DimFinancialAccountID] 
	,[FactFinancialTransactions].[DimFinancialTransactionTypeID] 
	,[FactFinancialTransactions].[DimOrganizationUnitLevel5ID] 
	,[FactFinancialTransactions].[DimPagaAccountID] 
	,[FactFinancialTransactions].[DimProcessTypeID] 
	,[FactFinancialTransactions].[DimTransactionDateID] 
	,[FactFinancialTransactions].[DimTransactionTimeID] 
	,[FactFinancialTransactions].[DimUserID] 
	,[FactFinancialTransactions].[OriginalTransactionID] 
	,[FactFinancialTransactions].[RelatedTransactionID] 


FROM [Finance].[FactFinancialTransactions] [FactFinancialTransactions]
GO



GO



GO



GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTransactions', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'RelatedTransactionID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'RelatedTransactionID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'RelatedTransactionID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'RelatedTransactionID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'RelatedTransactionID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'RelatedTransactionID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTransactions', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'OriginalTransactionID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'OriginalTransactionID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'OriginalTransactionID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'OriginalTransactionID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'OriginalTransactionID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'OriginalTransactionID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTransactions', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimUserID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimUserID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimUserID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTransactions', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimTransactionTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimTransactionTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimTransactionTimeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimTransactionTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimTransactionTimeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimTransactionTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTransactions', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimTransactionDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimTransactionDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimTransactionDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimTransactionDateID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimTransactionDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimTransactionDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTransactions', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimProcessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimProcessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimProcessTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimProcessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimProcessTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimProcessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTransactions', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimPagaAccountID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimPagaAccountID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTransactions', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel5ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel5ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationUnitLevel5ID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel5ID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimOrganizationUnitLevel5ID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel5ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTransactions', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimFinancialTransactionTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimFinancialTransactionTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimFinancialTransactionTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimFinancialTransactionTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimFinancialTransactionTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimFinancialTransactionTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTransactions', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimFinancialAccountID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimFinancialAccountID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTransactions', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimEffectiveTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimEffectiveTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimEffectiveTimeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimEffectiveTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimEffectiveTimeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimEffectiveTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTransactions', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimEffectiveDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimEffectiveDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimEffectiveDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimEffectiveDateID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimEffectiveDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimEffectiveDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTransactions', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimCreatedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimCreatedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimCreatedTimeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimCreatedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimCreatedTimeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimCreatedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTransactions', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimCreatedDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimCreatedDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTransactions', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimCityID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimCityID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimCityID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimCityID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimCityID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimCityID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTransactions', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DebitAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DebitAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DebitAmount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DebitAmount';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DebitAmount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DebitAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTransactions', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'CreditAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'CreditAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'CreditAmount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'CreditAmount';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'RelatedTransactionID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'CreditAmount';


GO
EXECUTE sp_addextendedproperty @name = N'XMLATableType', @value = N'MeasureGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions';

