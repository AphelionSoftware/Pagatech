    

CREATE VIEW [OLAP].[FactIntegrationTransaction]
AS

SELECT 
	[FactIntegrationTransaction].[ExternalReferenceNumber] 
	,[FactIntegrationTransaction].[FactIntegrationTxID] 
	,[FactIntegrationTransaction].[HasFinancialTx] 
	,[FactIntegrationTransaction].[IntegrationTx_Amount] 
	,[FactIntegrationTransaction].[Message] 
	,[FactIntegrationTransaction].[SourceKey] 
	,[FactIntegrationTransaction].[DimExternalOrganizationID] 
	,[FactIntegrationTransaction].[DimIntegrationTxDateID] 
	,[FactIntegrationTransaction].[DimIntegrationTxResultID] 
	,[FactIntegrationTransaction].[DimIntegrationTxTimeID] 
	,[FactIntegrationTransaction].[DimIntegrationTxTypeID] 
	,[FactIntegrationTransaction].[DimProcessTypeID] 
	,[FactIntegrationTransaction].[DimUserID] 
	,[FactIntegrationTransaction].[FactFinancialTxID] 

FROM [Shared].[FactIntegrationTransaction] [FactIntegrationTransaction]
GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactIntegrationTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTxID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTxID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FactFinancialTxID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTxID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactIntegrationTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'DimUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'DimUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimUserID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'DimUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactIntegrationTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'DimProcessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'DimProcessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimProcessTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'DimProcessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactIntegrationTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'DimIntegrationTxTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'DimIntegrationTxTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimIntegrationTxTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'DimIntegrationTxTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactIntegrationTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'DimIntegrationTxTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'DimIntegrationTxTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimIntegrationTxTimeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'DimIntegrationTxTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactIntegrationTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'DimIntegrationTxResultID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'DimIntegrationTxResultID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimIntegrationTxResultID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'DimIntegrationTxResultID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactIntegrationTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'DimIntegrationTxDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'DimIntegrationTxDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimIntegrationTxDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'DimIntegrationTxDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactIntegrationTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'DimExternalOrganizationID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'DimExternalOrganizationID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimExternalOrganizationID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'DimExternalOrganizationID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactIntegrationTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactIntegrationTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'Message';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'Message';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Message', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'Message';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactIntegrationTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'IntegrationTx_Amount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'IntegrationTx_Amount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IntegrationTx_Amount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'IntegrationTx_Amount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactIntegrationTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'HasFinancialTx';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'HasFinancialTx';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'HasFinancialTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'HasFinancialTx';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactIntegrationTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactIntegrationTxID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactIntegrationTxID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FactIntegrationTxID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactIntegrationTxID';


GO
EXECUTE sp_addextendedproperty @name = N'XMLATableType', @value = N'MeasureGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction';

