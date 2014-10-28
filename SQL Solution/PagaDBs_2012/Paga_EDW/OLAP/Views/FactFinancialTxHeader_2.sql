  

CREATE VIEW [OLAP].[FactFinancialTxHeader]
AS

SELECT 
	[FactFinancialTxHeader_7515198397873413912].[Amount] AS [FactFinancialTxHeaderAmount]
	,[FactFinancialTxHeader_7515198397873413912].[CancelledFactFinancialTxHeaderID] AS [FactFinancialTxHeaderCancelledFactFinancialTxHeaderID]
	,[FactFinancialTxHeader_7515198397873413912].[DimCreatedDateID] AS [FactFinancialTxHeaderDimCreatedDateID]
	,[FactFinancialTxHeader_7515198397873413912].[DimCreatedTimeID] AS [FactFinancialTxHeaderDimCreatedTimeID]
	,[FactFinancialTxHeader_7515198397873413912].[DimCurrencyID] AS [FactFinancialTxHeaderDimCurrencyID]
	,[FactFinancialTxHeader_7515198397873413912].[DimEffectiveDateID] AS [FactFinancialTxHeaderDimEffectiveDateID]
	,[FactFinancialTxHeader_7515198397873413912].[DimEffectiveTimeID] AS [FactFinancialTxHeaderDimEffectiveTimeID]
	,[FactFinancialTxHeader_7515198397873413912].[DimFinancialTxSubTypeID] AS [FactFinancialTxHeaderDimFinancialTxSubTypeID]
	,[FactFinancialTxHeader_7515198397873413912].[DimFinancialTxTypeID] AS [FactFinancialTxHeaderDimFinancialTxTypeID]
	,[FactFinancialTxHeader_7515198397873413912].[DimOrganizationUnitLevel4ID] AS [FactFinancialTxHeaderDimOrganizationUnitLevel4ID]
	,[FactFinancialTxHeader_7515198397873413912].[DimTransactionDateID] AS [FactFinancialTxHeaderDimTransactionDateID]
	,[FactFinancialTxHeader_7515198397873413912].[DimTransactionTimeID] AS [FactFinancialTxHeaderDimTransactionTimeID]
	,[FactFinancialTxHeader_7515198397873413912].[DimUserID] AS [FactFinancialTxHeaderDimUserID]
	,[FactFinancialTxHeader_7515198397873413912].[ExchangeRate] AS [FactFinancialTxHeaderExchangeRate]
	,[FactFinancialTxHeader_7515198397873413912].[ExternalReferenceNumber] AS [FactFinancialTxHeaderExternalReferenceNumber]
	,[FactFinancialTxHeader_7515198397873413912].[FactFinancialTxHeaderID] AS [FactFinancialTxHeaderID]
	,[FactFinancialTxHeader_7515198397873413912].[FactProcessTxID] AS [FactFinancialTxHeaderFactProcessTxID]
	,[FactFinancialTxHeader_7515198397873413912].[Fee] AS [FactFinancialTxHeaderFee]
	,[FactFinancialTxHeader_7515198397873413912].[ForeignCurrencyAmount] AS [FactFinancialTxHeaderForeignCurrencyAmount]
	,[FactFinancialTxHeader_7515198397873413912].[OriginalFactFinancialTxHeaderID] AS [FactFinancialTxHeaderOriginalFactFinancialTxHeaderID]
	,[FactFinancialTxHeader_7515198397873413912].[ReferenceNumber] AS [FactFinancialTxHeaderReferenceNumber]
	,[FactFinancialTxHeader_7515198397873413912].[RelatedFactFinancialTxHeaderID] AS [FactFinancialTxHeaderRelatedFactFinancialTxHeaderID]
	,[FactFinancialTxHeader_7515198397873413912].[ShortCode] AS [FactFinancialTxHeaderShortCode]
	,[FactFinancialTxHeader_7515198397873413912].[SourceKey] AS [FactFinancialTxHeaderSourceKey]
	,[FactFinancialTxHeader_7515198397873413912].[TextDescription] AS [FactFinancialTxHeaderTextDescription]
	,[FactFinancialTxHeader_7515198397873413912].[Void] AS [FactFinancialTxHeaderVoid]
FROM [Finance].[FactFinancialTxHeader] AS [FactFinancialTxHeader_7515198397873413912]
GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderVoid';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderVoid';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Void', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderVoid';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderVoid';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderTextDescription';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderTextDescription';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'TextDescription', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderTextDescription';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderTextDescription';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderShortCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderShortCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ShortCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderShortCode';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderShortCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderRelatedFactFinancialTxHeaderID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderRelatedFactFinancialTxHeaderID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'RelatedFactFinancialTxHeaderID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderRelatedFactFinancialTxHeaderID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderRelatedFactFinancialTxHeaderID';


GO
EXECUTE sp_addextendedproperty @name = N'ExcludeFromFlattenedViews', @value = N'True', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderRelatedFactFinancialTxHeaderID';


GO



GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ReferenceNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderOriginalFactFinancialTxHeaderID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderOriginalFactFinancialTxHeaderID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'OriginalFactFinancialTxHeaderID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderOriginalFactFinancialTxHeaderID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderOriginalFactFinancialTxHeaderID';


GO
EXECUTE sp_addextendedproperty @name = N'ExcludeFromFlattenedViews', @value = N'True', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderOriginalFactFinancialTxHeaderID';


GO



GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderForeignCurrencyAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderForeignCurrencyAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ForeignCurrencyAmount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderForeignCurrencyAmount';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderForeignCurrencyAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderFee';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderFee';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Fee', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderFee';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderFee';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderFactProcessTxID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderFactProcessTxID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FactProcessTxID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderFactProcessTxID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderFactProcessTxID';


GO
EXECUTE sp_addextendedproperty @name = N'ExcludeFromFlattenedViews', @value = N'True', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderFactProcessTxID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FactFinancialTxHeaderID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderExternalReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderExternalReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ExternalReferenceNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderExternalReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderExternalReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderExchangeRate';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderExchangeRate';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ExchangeRate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderExchangeRate';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderExchangeRate';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimUserID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimUserID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimUserID';


GO
EXECUTE sp_addextendedproperty @name = N'ExcludeFromFlattenedViews', @value = N'True', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimUserID';


GO



GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimTransactionTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimTransactionTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimTransactionTimeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimTransactionTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimTransactionTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'ExcludeFromFlattenedViews', @value = N'True', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimTransactionTimeID';


GO



GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimTransactionDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimTransactionDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimTransactionDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimTransactionDateID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimTransactionDateID';


GO
EXECUTE sp_addextendedproperty @name = N'ExcludeFromFlattenedViews', @value = N'True', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimTransactionDateID';


GO



GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimOrganizationUnitLevel4ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimOrganizationUnitLevel4ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationUnitLevel4ID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimOrganizationUnitLevel4ID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimOrganizationUnitLevel4ID';


GO
EXECUTE sp_addextendedproperty @name = N'ExcludeFromFlattenedViews', @value = N'true', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimOrganizationUnitLevel4ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimFinancialTxTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimFinancialTxTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimFinancialTxTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimFinancialTxTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimFinancialTxTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'ExcludeFromFlattenedViews', @value = N'True', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimFinancialTxTypeID';


GO



GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimFinancialTxSubTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimFinancialTxSubTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimFinancialTxSubTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimFinancialTxSubTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimFinancialTxSubTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'ExcludeFromFlattenedViews', @value = N'True', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimFinancialTxSubTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimEffectiveTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimEffectiveTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimEffectiveTimeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimEffectiveTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimEffectiveTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'ExcludeFromFlattenedViews', @value = N'True', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimEffectiveTimeID';


GO



GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimEffectiveDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimEffectiveDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimEffectiveDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimEffectiveDateID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimEffectiveDateID';


GO
EXECUTE sp_addextendedproperty @name = N'ExcludeFromFlattenedViews', @value = N'True', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimEffectiveDateID';


GO



GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimCurrencyID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimCurrencyID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimCurrencyID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimCurrencyID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimCurrencyID';


GO
EXECUTE sp_addextendedproperty @name = N'ExcludeFromFlattenedViews', @value = N'True', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimCurrencyID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimCreatedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimCreatedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimCreatedTimeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimCreatedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimCreatedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'ExcludeFromFlattenedViews', @value = N'True', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimCreatedTimeID';


GO



GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimCreatedDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'ExcludeFromFlattenedViews', @value = N'True', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimCreatedDateID';


GO



GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderCancelledFactFinancialTxHeaderID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderCancelledFactFinancialTxHeaderID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'CancelledFactFinancialTxHeaderID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderCancelledFactFinancialTxHeaderID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderCancelledFactFinancialTxHeaderID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Amount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderAmount';

