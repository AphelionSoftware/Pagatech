  

CREATE VIEW [OLAP].[FactAirtimeTxHeader]
AS

SELECT 
	[FactAirtimeTxHeader_6775545701600586158].[Amount] AS [FactAirtimeTxHeaderAmount]
	,[FactAirtimeTxHeader_6775545701600586158].[DimCreatedDateID] AS [FactAirtimeTxHeaderDimCreatedDateID]
	,[FactAirtimeTxHeader_6775545701600586158].[DimCreatedTimeID] AS [FactAirtimeTxHeaderDimCreatedTimeID]
	,[FactAirtimeTxHeader_6775545701600586158].[DimCurrencyID] AS [FactAirtimeTxHeaderDimCurrencyID]
	,[FactAirtimeTxHeader_6775545701600586158].[DimEffectiveDateID] AS [FactAirtimeTxHeaderDimEffectiveDateID]
	,[FactAirtimeTxHeader_6775545701600586158].[DimEffectiveTimeID] AS [FactAirtimeTxHeaderDimEffectiveTimeID]
	,[FactAirtimeTxHeader_6775545701600586158].[DimFinancialTxSubTypeID] AS [FactAirtimeTxHeaderDimFinancialTxSubTypeID]
	,[FactAirtimeTxHeader_6775545701600586158].[DimFinancialTxTypeID] AS [FactAirtimeTxHeaderDimFinancialTxTypeID]
	,[FactAirtimeTxHeader_6775545701600586158].[DimOrganizationUnitLevel4ID] AS [FactAirtimeTxHeaderDimOrganizationUnitLevel4ID]
	,[FactAirtimeTxHeader_6775545701600586158].[DimTransactionDateID] AS [FactAirtimeTxHeaderDimTransactionDateID]
	,[FactAirtimeTxHeader_6775545701600586158].[DimTransactionTimeID] AS [FactAirtimeTxHeaderDimTransactionTimeID]
	,[FactAirtimeTxHeader_6775545701600586158].[DimUserID] AS [FactAirtimeTxHeaderDimUserID]
	,[FactAirtimeTxHeader_6775545701600586158].[ExchangeRate] AS [FactAirtimeTxHeaderExchangeRate]
	,[FactAirtimeTxHeader_6775545701600586158].[ExternalReferenceNumber] AS [FactAirtimeTxHeaderExternalReferenceNumber]
	,[FactAirtimeTxHeader_6775545701600586158].[FactAirtimeTxHeaderID] AS [FactAirtimeTxHeaderID]
	,[FactAirtimeTxHeader_6775545701600586158].[FactProcessTxID] AS [FactAirtimeTxHeaderFactProcessTxID]
	,[FactAirtimeTxHeader_6775545701600586158].[Fee] AS [FactAirtimeTxHeaderFee]
	,[FactAirtimeTxHeader_6775545701600586158].[ForeignCurrencyAmount] AS [FactAirtimeTxHeaderForeignCurrencyAmount]
	,[FactAirtimeTxHeader_6775545701600586158].[OriginalFactAirtimeTxHeaderID] AS [FactAirtimeTxHeaderOriginalFactAirtimeTxHeaderID]
	,[FactAirtimeTxHeader_6775545701600586158].[ReferenceNumber] AS [FactAirtimeTxHeaderReferenceNumber]
	,[FactAirtimeTxHeader_6775545701600586158].[RelatedFactAirtimeTxHeaderID] AS [FactAirtimeTxHeaderRelatedFactAirtimeTxHeaderID]
	,[FactAirtimeTxHeader_6775545701600586158].[ShortCode] AS [FactAirtimeTxHeaderShortCode]
	,[FactAirtimeTxHeader_6775545701600586158].[SourceKey] AS [FactAirtimeTxHeaderSourceKey]
	,[FactAirtimeTxHeader_6775545701600586158].[TextDescription] AS [FactAirtimeTxHeaderTextDescription]
FROM [Airtime].[FactAirtimeTxHeader] AS [FactAirtimeTxHeader_6775545701600586158]
GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderTextDescription';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderTextDescription';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'TextDescription', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderTextDescription';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderTextDescription';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderShortCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderShortCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ShortCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderShortCode';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderShortCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderRelatedFactAirtimeTxHeaderID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderRelatedFactAirtimeTxHeaderID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'RelatedFactAirtimeTxHeaderID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderRelatedFactAirtimeTxHeaderID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderRelatedFactAirtimeTxHeaderID';


GO
EXECUTE sp_addextendedproperty @name = N'ExcludeFromFlattenedViews', @value = N'True', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderRelatedFactAirtimeTxHeaderID';


GO



GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ReferenceNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderOriginalFactAirtimeTxHeaderID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderOriginalFactAirtimeTxHeaderID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'OriginalFactAirtimeTxHeaderID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderOriginalFactAirtimeTxHeaderID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderOriginalFactAirtimeTxHeaderID';


GO
EXECUTE sp_addextendedproperty @name = N'ExcludeFromFlattenedViews', @value = N'True', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderOriginalFactAirtimeTxHeaderID';


GO



GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderForeignCurrencyAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderForeignCurrencyAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ForeignCurrencyAmount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderForeignCurrencyAmount';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderForeignCurrencyAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderFee';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderFee';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Fee', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderFee';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderFee';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderFactProcessTxID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderFactProcessTxID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FactProcessTxID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderFactProcessTxID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderFactProcessTxID';


GO
EXECUTE sp_addextendedproperty @name = N'ExcludeFromFlattenedViews', @value = N'True', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderFactProcessTxID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FactAirtimeTxHeaderID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderExternalReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderExternalReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ExternalReferenceNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderExternalReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderExternalReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderExchangeRate';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderExchangeRate';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ExchangeRate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderExchangeRate';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderExchangeRate';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimUserID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimUserID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimUserID';


GO
EXECUTE sp_addextendedproperty @name = N'ExcludeFromFlattenedViews', @value = N'True', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimUserID';


GO



GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimTransactionTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimTransactionTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimTransactionTimeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimTransactionTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimTransactionTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'ExcludeFromFlattenedViews', @value = N'True', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimTransactionTimeID';


GO



GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimTransactionDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimTransactionDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimTransactionDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimTransactionDateID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimTransactionDateID';


GO
EXECUTE sp_addextendedproperty @name = N'ExcludeFromFlattenedViews', @value = N'True', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimTransactionDateID';


GO



GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimOrganizationUnitLevel4ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimOrganizationUnitLevel4ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationUnitLevel4ID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimOrganizationUnitLevel4ID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimOrganizationUnitLevel4ID';


GO
EXECUTE sp_addextendedproperty @name = N'ExcludeFromFlattenedViews', @value = N'True', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimOrganizationUnitLevel4ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimFinancialTxTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimFinancialTxTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimFinancialTxTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimFinancialTxTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimFinancialTxTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'ExcludeFromFlattenedViews', @value = N'True', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimFinancialTxTypeID';


GO



GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimFinancialTxSubTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimFinancialTxSubTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimFinancialTxSubTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimFinancialTxSubTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimFinancialTxSubTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'ExcludeFromFlattenedViews', @value = N'True', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimFinancialTxSubTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimEffectiveTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimEffectiveTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimEffectiveTimeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimEffectiveTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimEffectiveTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'ExcludeFromFlattenedViews', @value = N'True', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimEffectiveTimeID';


GO



GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimEffectiveDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimEffectiveDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimEffectiveDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimEffectiveDateID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimEffectiveDateID';


GO
EXECUTE sp_addextendedproperty @name = N'ExcludeFromFlattenedViews', @value = N'True', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimEffectiveDateID';


GO



GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimCurrencyID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimCurrencyID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimCurrencyID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimCurrencyID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimCurrencyID';


GO
EXECUTE sp_addextendedproperty @name = N'ExcludeFromFlattenedViews', @value = N'True', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimCurrencyID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimCreatedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimCreatedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimCreatedTimeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimCreatedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimCreatedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'ExcludeFromFlattenedViews', @value = N'True', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimCreatedTimeID';


GO



GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimCreatedDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'ExcludeFromFlattenedViews', @value = N'True', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimCreatedDateID';


GO



GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Amount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderAmount';

