  

CREATE VIEW [OLAP].[DimExternalOrganization]
AS

SELECT 
	[DimExternalOrganization_2705428039876558214].[DimExternalOrganizationID] AS [ExternalOrganizationDimExternalOrganizationID]
	,[DimExternalOrganization_2705428039876558214].[Name] AS [ExternalOrganizationName]
	,[DimExternalOrganization_2705428039876558214].[SourceKey] AS [ExternalOrganizationSourceKey]
FROM [Shared].[DimExternalOrganization] AS [DimExternalOrganization_2705428039876558214]
GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimExternalOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimExternalOrganization', @level2type = N'COLUMN', @level2name = N'ExternalOrganizationSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimExternalOrganization', @level2type = N'COLUMN', @level2name = N'ExternalOrganizationSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimExternalOrganization', @level2type = N'COLUMN', @level2name = N'ExternalOrganizationSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimExternalOrganization', @level2type = N'COLUMN', @level2name = N'ExternalOrganizationSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimExternalOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimExternalOrganization', @level2type = N'COLUMN', @level2name = N'ExternalOrganizationName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimExternalOrganization', @level2type = N'COLUMN', @level2name = N'ExternalOrganizationName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimExternalOrganization', @level2type = N'COLUMN', @level2name = N'ExternalOrganizationName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimExternalOrganization', @level2type = N'COLUMN', @level2name = N'ExternalOrganizationName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimExternalOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimExternalOrganization', @level2type = N'COLUMN', @level2name = N'ExternalOrganizationDimExternalOrganizationID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimExternalOrganization', @level2type = N'COLUMN', @level2name = N'ExternalOrganizationDimExternalOrganizationID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimExternalOrganizationID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimExternalOrganization', @level2type = N'COLUMN', @level2name = N'ExternalOrganizationDimExternalOrganizationID';

