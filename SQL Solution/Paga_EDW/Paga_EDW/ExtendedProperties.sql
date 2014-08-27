EXECUTE sp_addextendedproperty @name = N'Description', @value = 'Default description - you should change this.';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimAgentCommissionType', @level2type = N'COLUMN', @level2name = N'DimAgentCommissionTypeCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Code', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimAgentCommissionType', @level2type = N'COLUMN', @level2name = N'DimAgentCommissionTypeCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Classification', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimAgentCommissionType', @level2type = N'COLUMN', @level2name = N'DimAgentCommissionTypeCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimAgentCommissionType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimAgentCommissionType', @level2type = N'COLUMN', @level2name = N'DimAgentCommissionTypeCode';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimAgentCommissionType', @level2type = N'COLUMN', @level2name = N'DimAgentCommissionTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimAgentCommissionTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimAgentCommissionType', @level2type = N'COLUMN', @level2name = N'DimAgentCommissionTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Classification', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimAgentCommissionType', @level2type = N'COLUMN', @level2name = N'DimAgentCommissionTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimAgentCommissionType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimAgentCommissionType', @level2type = N'COLUMN', @level2name = N'DimAgentCommissionTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimAgentCommissionType', @level2type = N'COLUMN', @level2name = N'DimAgentCommissionTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimAgentCommissionType', @level2type = N'COLUMN', @level2name = N'DimAgentCommissionTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimAgentCommissionType', @level2type = N'COLUMN', @level2name = N'DimAgentCommissionTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Classification', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimAgentCommissionType', @level2type = N'COLUMN', @level2name = N'DimAgentCommissionTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimAgentCommissionType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimAgentCommissionType', @level2type = N'COLUMN', @level2name = N'DimAgentCommissionTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimAgentCommissionType', @level2type = N'COLUMN', @level2name = N'DimAgentCommissionTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimAgentCommissionType', @level2type = N'COLUMN', @level2name = N'DimAgentCommissionTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimAgentCommissionType', @level2type = N'COLUMN', @level2name = N'DimAgentCommissionTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Classification', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimAgentCommissionType', @level2type = N'COLUMN', @level2name = N'DimAgentCommissionTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimAgentCommissionType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimAgentCommissionType', @level2type = N'COLUMN', @level2name = N'DimAgentCommissionTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimBankAccountLinkStatus', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Code', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimBankAccountLinkStatus', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Classification', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimBankAccountLinkStatus', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimBankAccountLinkStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimBankAccountLinkStatus', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimBankAccountLinkStatus', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimBankAccountLinkStatus', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Classification', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimBankAccountLinkStatus', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimBankAccountLinkStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimBankAccountLinkStatus', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimBankAccountLinkStatus', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimBankAccountLinkStatus', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Classification', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimBankAccountLinkStatus', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimBankAccountLinkStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimBankAccountLinkStatus', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimChannel', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Code', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimChannel', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimChannel', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimChannel', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimChannel', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'Description', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimChannel', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Description', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimChannel', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimChannel', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimChannel', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimChannel', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimChannel', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimChannel', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimChannel', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimChannel', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimChannel', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimChannel', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimChannel', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimChannel', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimChannel', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimChannel', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCity', @level2type = N'COLUMN', @level2name = N'DimCityCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Code', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCity', @level2type = N'COLUMN', @level2name = N'DimCityCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Location', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCity', @level2type = N'COLUMN', @level2name = N'DimCityCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimCity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCity', @level2type = N'COLUMN', @level2name = N'DimCityCode';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCity', @level2type = N'COLUMN', @level2name = N'DimCityID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimCityID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCity', @level2type = N'COLUMN', @level2name = N'DimCityID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Location', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCity', @level2type = N'COLUMN', @level2name = N'DimCityID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimCity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCity', @level2type = N'COLUMN', @level2name = N'DimCityID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCity', @level2type = N'COLUMN', @level2name = N'DimCityName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCity', @level2type = N'COLUMN', @level2name = N'DimCityName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCity', @level2type = N'COLUMN', @level2name = N'DimCityName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Location', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCity', @level2type = N'COLUMN', @level2name = N'DimCityName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimCity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCity', @level2type = N'COLUMN', @level2name = N'DimCityName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCity', @level2type = N'COLUMN', @level2name = N'DimCitySourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCity', @level2type = N'COLUMN', @level2name = N'DimCitySourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCity', @level2type = N'COLUMN', @level2name = N'DimCitySourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Location', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCity', @level2type = N'COLUMN', @level2name = N'DimCitySourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimCity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCity', @level2type = N'COLUMN', @level2name = N'DimCitySourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel1', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Code', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel1', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel1', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimCOALevel1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel1', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'GLCodeRange', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel1', @level2type = N'COLUMN', @level2name = N'GLCodeRange';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'GLCodeRange', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel1', @level2type = N'COLUMN', @level2name = N'GLCodeRange';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel1', @level2type = N'COLUMN', @level2name = N'GLCodeRange';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimCOALevel1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel1', @level2type = N'COLUMN', @level2name = N'GLCodeRange';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel1', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel1', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel1', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimCOALevel1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel1', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel1', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel1', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel1', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimCOALevel1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel1', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel2', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Code', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel2', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel2', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimCOALevel2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel2', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimCOALevel1ID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel2', @level2type = N'COLUMN', @level2name = N'DimCOALevel1ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimCOALevel1ID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel2', @level2type = N'COLUMN', @level2name = N'DimCOALevel1ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel2', @level2type = N'COLUMN', @level2name = N'DimCOALevel1ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimCOALevel2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel2', @level2type = N'COLUMN', @level2name = N'DimCOALevel1ID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'GLCodeRange', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel2', @level2type = N'COLUMN', @level2name = N'GLCodeRange';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'GLCodeRange', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel2', @level2type = N'COLUMN', @level2name = N'GLCodeRange';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel2', @level2type = N'COLUMN', @level2name = N'GLCodeRange';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimCOALevel2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel2', @level2type = N'COLUMN', @level2name = N'GLCodeRange';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel2', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel2', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel2', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimCOALevel2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel2', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel2', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel2', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel2', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimCOALevel2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel2', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel3', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Code', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel3', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel3', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimCOALevel3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel3', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimCOALevel2ID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel3', @level2type = N'COLUMN', @level2name = N'DimCOALevel2ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimCOALevel2ID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel3', @level2type = N'COLUMN', @level2name = N'DimCOALevel2ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel3', @level2type = N'COLUMN', @level2name = N'DimCOALevel2ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimCOALevel3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel3', @level2type = N'COLUMN', @level2name = N'DimCOALevel2ID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'GLCodeRange', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel3', @level2type = N'COLUMN', @level2name = N'GLCodeRange';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'GLCodeRange', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel3', @level2type = N'COLUMN', @level2name = N'GLCodeRange';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel3', @level2type = N'COLUMN', @level2name = N'GLCodeRange';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimCOALevel3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel3', @level2type = N'COLUMN', @level2name = N'GLCodeRange';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel3', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel3', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel3', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimCOALevel3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel3', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel3', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel3', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel3', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimCOALevel3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel3', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel4', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Code', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel4', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel4', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimCOALevel4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel4', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'Description', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel4', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Description', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel4', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel4', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimCOALevel4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel4', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimCOALevel3ID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel4', @level2type = N'COLUMN', @level2name = N'DimCOALevel3ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimCOALevel3ID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel4', @level2type = N'COLUMN', @level2name = N'DimCOALevel3ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel4', @level2type = N'COLUMN', @level2name = N'DimCOALevel3ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimCOALevel4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel4', @level2type = N'COLUMN', @level2name = N'DimCOALevel3ID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'GLCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel4', @level2type = N'COLUMN', @level2name = N'GLCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'GLCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel4', @level2type = N'COLUMN', @level2name = N'GLCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel4', @level2type = N'COLUMN', @level2name = N'GLCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimCOALevel4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel4', @level2type = N'COLUMN', @level2name = N'GLCode';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'IsNormalDebit', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel4', @level2type = N'COLUMN', @level2name = N'IsNormalDebit';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsNormalDebit', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel4', @level2type = N'COLUMN', @level2name = N'IsNormalDebit';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel4', @level2type = N'COLUMN', @level2name = N'IsNormalDebit';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimCOALevel4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel4', @level2type = N'COLUMN', @level2name = N'IsNormalDebit';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel4', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel4', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel4', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimCOALevel4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel4', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel4', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel4', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel4', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimCOALevel4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCOALevel4', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCountry', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Code', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCountry', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Location', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCountry', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimCountry', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCountry', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'Country', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCountry', @level2type = N'COLUMN', @level2name = N'Country';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Country', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCountry', @level2type = N'COLUMN', @level2name = N'Country';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Location', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCountry', @level2type = N'COLUMN', @level2name = N'Country';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimCountry', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCountry', @level2type = N'COLUMN', @level2name = N'Country';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'ISOCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCountry', @level2type = N'COLUMN', @level2name = N'ISOCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ISOCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCountry', @level2type = N'COLUMN', @level2name = N'ISOCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Location', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCountry', @level2type = N'COLUMN', @level2name = N'ISOCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimCountry', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCountry', @level2type = N'COLUMN', @level2name = N'ISOCode';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCountry', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCountry', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Location', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCountry', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimCountry', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCountry', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCountry', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCountry', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Location', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCountry', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimCountry', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCountry', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Code', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCurrency', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCurrency', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimCurrency', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCurrency', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCurrency', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCurrency', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimCurrency', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCurrency', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCurrency', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCurrency', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimCurrency', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimCurrency', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DayName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateDayName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateDayName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateDayName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateDayOfMonth';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DayOfMonth', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateDayOfMonth';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateDayOfMonth';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateDayOfMonth';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateDayOfQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DayOfQuarter', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateDayOfQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateDayOfQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateDayOfQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateDayOfWeekInMonth';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DayOfWeekInMonth', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateDayOfWeekInMonth';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateDayOfWeekInMonth';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateDayOfWeekInMonth';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateDayOfWeekInYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DayOfWeekInYear', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateDayOfWeekInYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateDayOfWeekInYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateDayOfWeekInYear';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateDayOfWeekUK';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DayOfWeekUK', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateDayOfWeekUK';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateDayOfWeekUK';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateDayOfWeekUK';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateDayOfWeekUSA';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DayOfWeekUSA', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateDayOfWeekUSA';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateDayOfWeekUSA';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateDayOfWeekUSA';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateDayOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DayOfYear', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateDayOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateDayOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateDayOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateDaySuffix';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DaySuffix', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateDaySuffix';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateDaySuffix';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateDaySuffix';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFirstDayOfMonth';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FirstDayOfMonth', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFirstDayOfMonth';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFirstDayOfMonth';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFirstDayOfMonth';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFirstDayOfQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FirstDayOfQuarter', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFirstDayOfQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFirstDayOfQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFirstDayOfQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFirstDayOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FirstDayOfYear', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFirstDayOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFirstDayOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFirstDayOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFiscalDayOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FiscalDayOfYear', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFiscalDayOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFiscalDayOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFiscalDayOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFiscalFirstDayOfMonth';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FiscalFirstDayOfMonth', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFiscalFirstDayOfMonth';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFiscalFirstDayOfMonth';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFiscalFirstDayOfMonth';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFiscalFirstDayOfQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FiscalFirstDayOfQuarter', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFiscalFirstDayOfQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFiscalFirstDayOfQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFiscalFirstDayOfQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFiscalFirstDayOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FiscalFirstDayOfYear', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFiscalFirstDayOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFiscalFirstDayOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFiscalFirstDayOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFiscalLastDayOfMonth';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FiscalLastDayOfMonth', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFiscalLastDayOfMonth';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFiscalLastDayOfMonth';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFiscalLastDayOfMonth';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFiscalLastDayOfQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FiscalLastDayOfQuarter', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFiscalLastDayOfQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFiscalLastDayOfQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFiscalLastDayOfQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFiscalLastDayOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FiscalLastDayOfYear', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFiscalLastDayOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFiscalLastDayOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFiscalLastDayOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFiscalMMYYYY';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FiscalMMYYYY', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFiscalMMYYYY';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFiscalMMYYYY';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFiscalMMYYYY';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFiscalMonth';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FiscalMonth', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFiscalMonth';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFiscalMonth';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFiscalMonth';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFiscalMonthYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FiscalMonthYear', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFiscalMonthYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFiscalMonthYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFiscalMonthYear';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFiscalQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FiscalQuarter', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFiscalQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFiscalQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFiscalQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFiscalQuarterName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FiscalQuarterName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFiscalQuarterName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFiscalQuarterName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFiscalQuarterName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFiscalWeekOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FiscalWeekOfYear', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFiscalWeekOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFiscalWeekOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFiscalWeekOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFiscalYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FiscalYear', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFiscalYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFiscalYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFiscalYear';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFiscalYearName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FiscalYearName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFiscalYearName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFiscalYearName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFiscalYearName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFullDate';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FullDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFullDate';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFullDate';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFullDate';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFullDateUK';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FullDateUK', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFullDateUK';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFullDateUK';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFullDateUK';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFullDateUSA';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FullDateUSA', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFullDateUSA';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFullDateUSA';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateFullDateUSA';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateHolidayNG';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'HolidayNG', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateHolidayNG';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateHolidayNG';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateHolidayNG';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateHolidayUK';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'HolidayUK', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateHolidayUK';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateHolidayUK';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateHolidayUK';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateHolidayUSA';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'HolidayUSA', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateHolidayUSA';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateHolidayUSA';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateHolidayUSA';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateIsHolidayNG';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsHolidayNG', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateIsHolidayNG';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateIsHolidayNG';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateIsHolidayNG';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateIsHolidayUK';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsHolidayUK', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateIsHolidayUK';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateIsHolidayUK';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateIsHolidayUK';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateIsHolidayUSA';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsHolidayUSA', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateIsHolidayUSA';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateIsHolidayUSA';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateIsHolidayUSA';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateIsWeekday';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsWeekday', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateIsWeekday';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateIsWeekday';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateIsWeekday';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateLastDayOfMonth';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'LastDayOfMonth', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateLastDayOfMonth';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateLastDayOfMonth';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateLastDayOfMonth';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateLastDayOfQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'LastDayOfQuarter', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateLastDayOfQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateLastDayOfQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateLastDayOfQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateLastDayOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'LastDayOfYear', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateLastDayOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateLastDayOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateLastDayOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateMMYYYY';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'MMYYYY', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateMMYYYY';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateMMYYYY';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateMMYYYY';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateMonth';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Month', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateMonth';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateMonth';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateMonth';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateMonthName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'MonthName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateMonthName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateMonthName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateMonthName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateMonthOfQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'MonthOfQuarter', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateMonthOfQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateMonthOfQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateMonthOfQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateMonthYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'MonthYear', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateMonthYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateMonthYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateMonthYear';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Quarter', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateQuarterName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'QuarterName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateQuarterName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateQuarterName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateQuarterName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateWeekOfMonth';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'WeekOfMonth', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateWeekOfMonth';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateWeekOfMonth';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateWeekOfMonth';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateWeekOfQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'WeekOfQuarter', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateWeekOfQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateWeekOfQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateWeekOfQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateWeekOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'WeekOfYear', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateWeekOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateWeekOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateWeekOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Year', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateYear';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateYearName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'YearName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateYearName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateYearName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DimDateYearName';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'AccountNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'AccountNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountCode';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Code', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountCode';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimAccountHolderID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountDimAccountHolderUserID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountDimAccountHolderUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimAccountHolderUserID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountDimAccountHolderUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountDimAccountHolderUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountDimAccountHolderUserID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimBankAccountID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountDimBankAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountDimBankAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimBankAccountID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountDimBankAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountDimBankAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountDimBankAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimCOALevel4ID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountDimCOALevel4ID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountDimCOALevel4ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimCOALevel4ID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountDimCOALevel4ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountDimCOALevel4ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountDimCOALevel4ID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimCurrencyID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountDimCurrencyID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountDimCurrencyID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimCurrencyID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountDimCurrencyID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountDimCurrencyID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountDimCurrencyID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimFinancialAccountID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimFinancialAccountTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimFinancialAccountTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimHoldingFinancialAccountID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountDimHoldingFinancialAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountDimHoldingFinancialAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimHoldingFinancialAccountID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountDimHoldingFinancialAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountDimHoldingFinancialAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountDimHoldingFinancialAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountName';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'OpeningBalance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountOpeningBalance';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountOpeningBalance';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'OpeningBalance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountOpeningBalance';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountOpeningBalance';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountOpeningBalance';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'RestrictedBalance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountRestrictedBalance';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountRestrictedBalance';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'RestrictedBalance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountRestrictedBalance';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountRestrictedBalance';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountRestrictedBalance';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'TotalBalance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountTotalBalance';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountTotalBalance';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'TotalBalance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountTotalBalance';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountTotalBalance';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountTotalBalance';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimUserCode';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimUserCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Code', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimUserCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimUserCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimUserCode';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DateOfBirthID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimUserDateOfBirthID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimUserDateOfBirthID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DateOfBirthID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimUserDateOfBirthID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimUserDateOfBirthID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimUserDateOfBirthID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimOrganizationUnitLevel5ID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimUserDimOrganizationUnitLevel5ID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimUserDimOrganizationUnitLevel5ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationUnitLevel5ID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimUserDimOrganizationUnitLevel5ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimUserDimOrganizationUnitLevel5ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimUserDimOrganizationUnitLevel5ID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimPagaAccountID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimUserDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimUserDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimPagaAccountID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimUserDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimUserDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimUserDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimPagaAccountUserTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimUserDimPagaAccountUserTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimUserDimPagaAccountUserTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimPagaAccountUserTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimUserDimPagaAccountUserTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimUserDimPagaAccountUserTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimUserDimPagaAccountUserTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimUserID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimUserID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'Email', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimUserEmail';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimUserEmail';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Email', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimUserEmail';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimUserEmail';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimUserEmail';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'FirstName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimUserFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimUserFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FirstName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimUserFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimUserFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimUserFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'IsEnabled', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimUserIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimUserIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsEnabled', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimUserIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimUserIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimUserIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'LastName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimUserLastName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimUserLastName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'LastName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimUserLastName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimUserLastName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimUserLastName';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'MiddleName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimUserMiddleName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimUserMiddleName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'MiddleName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimUserMiddleName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimUserMiddleName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimUserMiddleName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimUserName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimUserName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimUserName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimUserName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimUserName';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'PhoneNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimUserPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimUserPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'PhoneNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimUserPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimUserPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimUserPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'Sex', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimUserSex';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimUserSex';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Sex', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimUserSex';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimUserSex';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimUserSex';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimUserSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimUserSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimUserSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimUserSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimUserSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountUserTypeCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Code', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountUserTypeCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountUserTypeCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccountUserType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountUserTypeCode';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountUserTypeDescription';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Description', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountUserTypeDescription';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountUserTypeDescription';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccountUserType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountUserTypeDescription';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountUserTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountUserTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountUserTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccountUserType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountUserTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountUserTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountUserTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountUserTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccountUserType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountUserTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialTransactionType', @level2type = N'COLUMN', @level2name = N'DimFinancialTransactionTypeCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Code', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialTransactionType', @level2type = N'COLUMN', @level2name = N'DimFinancialTransactionTypeCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Classification', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialTransactionType', @level2type = N'COLUMN', @level2name = N'DimFinancialTransactionTypeCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialTransactionType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialTransactionType', @level2type = N'COLUMN', @level2name = N'DimFinancialTransactionTypeCode';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'Description', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialTransactionType', @level2type = N'COLUMN', @level2name = N'DimFinancialTransactionTypeDescription';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialTransactionType', @level2type = N'COLUMN', @level2name = N'DimFinancialTransactionTypeDescription';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Description', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialTransactionType', @level2type = N'COLUMN', @level2name = N'DimFinancialTransactionTypeDescription';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Classification', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialTransactionType', @level2type = N'COLUMN', @level2name = N'DimFinancialTransactionTypeDescription';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialTransactionType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialTransactionType', @level2type = N'COLUMN', @level2name = N'DimFinancialTransactionTypeDescription';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialTransactionType', @level2type = N'COLUMN', @level2name = N'DimFinancialTransactionTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimFinancialTransactionTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialTransactionType', @level2type = N'COLUMN', @level2name = N'DimFinancialTransactionTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Classification', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialTransactionType', @level2type = N'COLUMN', @level2name = N'DimFinancialTransactionTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialTransactionType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialTransactionType', @level2type = N'COLUMN', @level2name = N'DimFinancialTransactionTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialTransactionType', @level2type = N'COLUMN', @level2name = N'DimFinancialTransactionTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialTransactionType', @level2type = N'COLUMN', @level2name = N'DimFinancialTransactionTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialTransactionType', @level2type = N'COLUMN', @level2name = N'DimFinancialTransactionTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Classification', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialTransactionType', @level2type = N'COLUMN', @level2name = N'DimFinancialTransactionTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialTransactionType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialTransactionType', @level2type = N'COLUMN', @level2name = N'DimFinancialTransactionTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialTransactionType', @level2type = N'COLUMN', @level2name = N'DimFinancialTransactionTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialTransactionType', @level2type = N'COLUMN', @level2name = N'DimFinancialTransactionTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialTransactionType', @level2type = N'COLUMN', @level2name = N'DimFinancialTransactionTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Classification', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialTransactionType', @level2type = N'COLUMN', @level2name = N'DimFinancialTransactionTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialTransactionType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialTransactionType', @level2type = N'COLUMN', @level2name = N'DimFinancialTransactionTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGeoZone', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Code', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGeoZone', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Location', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGeoZone', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimGeoZone', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGeoZone', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimCountryID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGeoZone', @level2type = N'COLUMN', @level2name = N'DimCountryID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimCountryID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGeoZone', @level2type = N'COLUMN', @level2name = N'DimCountryID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Location', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGeoZone', @level2type = N'COLUMN', @level2name = N'DimCountryID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimGeoZone', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGeoZone', @level2type = N'COLUMN', @level2name = N'DimCountryID';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGeoZone', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGeoZone', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Location', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGeoZone', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimGeoZone', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGeoZone', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGeoZone', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGeoZone', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Location', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGeoZone', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimGeoZone', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGeoZone', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'Symbol', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGeoZone', @level2type = N'COLUMN', @level2name = N'Symbol';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Symbol', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGeoZone', @level2type = N'COLUMN', @level2name = N'Symbol';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Location', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGeoZone', @level2type = N'COLUMN', @level2name = N'Symbol';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimGeoZone', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGeoZone', @level2type = N'COLUMN', @level2name = N'Symbol';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGovernmentLocalArea', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Code', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGovernmentLocalArea', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Location', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGovernmentLocalArea', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimGovernmentLocalArea', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGovernmentLocalArea', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGovernmentLocalArea', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGovernmentLocalArea', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Location', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGovernmentLocalArea', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimGovernmentLocalArea', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGovernmentLocalArea', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGovernmentLocalArea', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGovernmentLocalArea', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Location', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGovernmentLocalArea', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimGovernmentLocalArea', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimGovernmentLocalArea', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Code', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimMobileOperator', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimOrganizationID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimMobileOperator', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'IsActive', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'IsActive';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsActive', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'IsActive';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'IsActive';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimMobileOperator', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'IsActive';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimMobileOperator', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimMobileOperator', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'Code', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationCode';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Code', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationCode';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'Description', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationDescription';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationDescription';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Description', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationDescription';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationDescription';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationDescription';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimBusinessTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimBusinessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimBusinessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimBusinessTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimBusinessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimBusinessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimBusinessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimOrganizationSubscriptionStatusID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationSubscriptionStatusID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimOrganizationVerificationStatusID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationVerificationStatusID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimPagaAccountID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimPagaAccountID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DisplayName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationDisplayName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationDisplayName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DisplayName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationDisplayName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationDisplayName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationDisplayName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationName';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'RcName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationRcName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationRcName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'RcName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationRcName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationRcName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationRcName';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'ReferenceNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ReferenceNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'TaxIDNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationTaxIDNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationTaxIDNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'TaxIDNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationTaxIDNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationTaxIDNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationTaxIDNumber';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'VATCertificationNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationVATCertificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationVATCertificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'VATCertificationNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationVATCertificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationVATCertificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationVATCertificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'WebsiteURL', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationWebsiteURL';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationWebsiteURL';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'WebsiteURL', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationWebsiteURL';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationWebsiteURL';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationWebsiteURL';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationSubscriptionStatus', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Code', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationSubscriptionStatus', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Classification', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationSubscriptionStatus', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationSubscriptionStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationSubscriptionStatus', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationSubscriptionStatus', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationSubscriptionStatus', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Classification', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationSubscriptionStatus', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationSubscriptionStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationSubscriptionStatus', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationSubscriptionStatus', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationSubscriptionStatus', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Classification', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationSubscriptionStatus', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationSubscriptionStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationSubscriptionStatus', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel1', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Code', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel1', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel1', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel1', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimOrganizationID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel1', @level2type = N'COLUMN', @level2name = N'DimOrganizationID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel1', @level2type = N'COLUMN', @level2name = N'DimOrganizationID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel1', @level2type = N'COLUMN', @level2name = N'DimOrganizationID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel1', @level2type = N'COLUMN', @level2name = N'DimOrganizationID';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel1', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel1', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel1', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel1', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel1', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel1', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel1', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel1', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel2', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Code', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel2', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel2', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel2', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel2', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel2', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel2', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel2', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel2', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel2', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel2', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel2', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel3', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Code', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel3', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel3', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel3', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel3', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel3', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel3', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel3', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel3', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel3', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel3', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel3', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Code', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel4', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel5', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel5Code';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Code', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel5', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel5Code';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel5', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel5Code';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel5', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel5Code';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel5', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel5ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationUnitLevel5ID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel5', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel5ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel5', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel5ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel5', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel5ID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel5', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel5Name';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel5', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel5Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel5', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel5Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel5', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel5Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel5', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel5Name';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel5', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel5SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel5', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel5SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel5', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel5SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel5', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel5SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationUnitLevel5', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel5SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationVerificationStatus', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Code', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationVerificationStatus', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Classification', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationVerificationStatus', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationVerificationStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationVerificationStatus', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationVerificationStatus', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationVerificationStatus', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Classification', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationVerificationStatus', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationVerificationStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationVerificationStatus', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationVerificationStatus', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationVerificationStatus', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Classification', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationVerificationStatus', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationVerificationStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganizationVerificationStatus', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimPagaAccountID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccountStatus', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Code', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccountStatus', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Classification', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccountStatus', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccountStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccountStatus', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccountStatus', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccountStatus', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Classification', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccountStatus', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccountStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccountStatus', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccountStatus', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccountStatus', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Classification', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccountStatus', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccountStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccountStatus', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Code', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccountUserType', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Classification', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccountUserType', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccountUserType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccountUserType', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Description', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccountUserType', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Classification', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccountUserType', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccountUserType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccountUserType', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccountUserType', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Classification', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccountUserType', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccountUserType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccountUserType', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccountUserType', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Classification', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccountUserType', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccountUserType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimPagaAccountUserType', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessStatus', @level2type = N'COLUMN', @level2name = N'DimProcessStatusCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Code', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessStatus', @level2type = N'COLUMN', @level2name = N'DimProcessStatusCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Classification', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessStatus', @level2type = N'COLUMN', @level2name = N'DimProcessStatusCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimProcessStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessStatus', @level2type = N'COLUMN', @level2name = N'DimProcessStatusCode';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessStatus', @level2type = N'COLUMN', @level2name = N'DimProcessStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimProcessStatusID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessStatus', @level2type = N'COLUMN', @level2name = N'DimProcessStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Classification', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessStatus', @level2type = N'COLUMN', @level2name = N'DimProcessStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimProcessStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessStatus', @level2type = N'COLUMN', @level2name = N'DimProcessStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessStatus', @level2type = N'COLUMN', @level2name = N'DimProcessStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessStatus', @level2type = N'COLUMN', @level2name = N'DimProcessStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessStatus', @level2type = N'COLUMN', @level2name = N'DimProcessStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Classification', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessStatus', @level2type = N'COLUMN', @level2name = N'DimProcessStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimProcessStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessStatus', @level2type = N'COLUMN', @level2name = N'DimProcessStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessStatus', @level2type = N'COLUMN', @level2name = N'DimProcessStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessStatus', @level2type = N'COLUMN', @level2name = N'DimProcessStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessStatus', @level2type = N'COLUMN', @level2name = N'DimProcessStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Classification', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessStatus', @level2type = N'COLUMN', @level2name = N'DimProcessStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimProcessStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessStatus', @level2type = N'COLUMN', @level2name = N'DimProcessStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessType', @level2type = N'COLUMN', @level2name = N'DimProcessTypeCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Code', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessType', @level2type = N'COLUMN', @level2name = N'DimProcessTypeCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Classification', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessType', @level2type = N'COLUMN', @level2name = N'DimProcessTypeCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimProcessType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessType', @level2type = N'COLUMN', @level2name = N'DimProcessTypeCode';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'Description', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessType', @level2type = N'COLUMN', @level2name = N'DimProcessTypeDescription';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessType', @level2type = N'COLUMN', @level2name = N'DimProcessTypeDescription';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Description', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessType', @level2type = N'COLUMN', @level2name = N'DimProcessTypeDescription';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Classification', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessType', @level2type = N'COLUMN', @level2name = N'DimProcessTypeDescription';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimProcessType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessType', @level2type = N'COLUMN', @level2name = N'DimProcessTypeDescription';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessType', @level2type = N'COLUMN', @level2name = N'DimProcessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimProcessTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessType', @level2type = N'COLUMN', @level2name = N'DimProcessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Classification', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessType', @level2type = N'COLUMN', @level2name = N'DimProcessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimProcessType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessType', @level2type = N'COLUMN', @level2name = N'DimProcessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessType', @level2type = N'COLUMN', @level2name = N'DimProcessTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessType', @level2type = N'COLUMN', @level2name = N'DimProcessTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessType', @level2type = N'COLUMN', @level2name = N'DimProcessTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Classification', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessType', @level2type = N'COLUMN', @level2name = N'DimProcessTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimProcessType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessType', @level2type = N'COLUMN', @level2name = N'DimProcessTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessType', @level2type = N'COLUMN', @level2name = N'DimProcessTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessType', @level2type = N'COLUMN', @level2name = N'DimProcessTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessType', @level2type = N'COLUMN', @level2name = N'DimProcessTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Classification', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessType', @level2type = N'COLUMN', @level2name = N'DimProcessTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimProcessType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimProcessType', @level2type = N'COLUMN', @level2name = N'DimProcessTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimRegion', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Code', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimRegion', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Location', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimRegion', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimRegion', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimRegion', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimRegion', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimRegion', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Location', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimRegion', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimRegion', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimRegion', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimRegion', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimRegion', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Location', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimRegion', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimRegion', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimRegion', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimStatusCancellationApprovalStatus', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Code', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimStatusCancellationApprovalStatus', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Classification', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimStatusCancellationApprovalStatus', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimStatusCancellationApprovalStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimStatusCancellationApprovalStatus', @level2type = N'COLUMN', @level2name = N'Code';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimStatusCancellationApprovalStatus', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimStatusCancellationApprovalStatus', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Classification', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimStatusCancellationApprovalStatus', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimStatusCancellationApprovalStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimStatusCancellationApprovalStatus', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimStatusCancellationApprovalStatus', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimStatusCancellationApprovalStatus', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Classification', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimStatusCancellationApprovalStatus', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimStatusCancellationApprovalStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimStatusCancellationApprovalStatus', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DayTimeBucket', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'DimTimeDayTimeBucket';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'DimTimeDayTimeBucket';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimTime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'DimTimeDayTimeBucket';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'DimTimeDayTimeBucketGroupKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DayTimeBucketGroupKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'DimTimeDayTimeBucketGroupKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'DimTimeDayTimeBucketGroupKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimTime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'DimTimeDayTimeBucketGroupKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'DimTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimTimeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'DimTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'DimTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimTime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'DimTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'DimTimeFullTime';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FullTime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'DimTimeFullTime';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'DimTimeFullTime';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimTime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'DimTimeFullTime';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'DimTimeHourlyBucket';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'HourlyBucket', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'DimTimeHourlyBucket';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'DimTimeHourlyBucket';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimTime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'DimTimeHourlyBucket';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'DimTimeHourNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'HourNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'DimTimeHourNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'DimTimeHourNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimTime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'DimTimeHourNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'DimTimeMinuteNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'MinuteNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'DimTimeMinuteNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'DimTimeMinuteNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimTime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'DimTimeMinuteNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'DimTimeSecondNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SecondNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'DimTimeSecondNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'DimTimeSecondNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimTime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'DimTimeSecondNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'DimTimeTimeInSecond';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'TimeInSecond', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'DimTimeTimeInSecond';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'DimTimeTimeInSecond';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimTime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'DimTimeTimeInSecond';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Code', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserCode';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DateOfBirthID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserDateOfBirthID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserDateOfBirthID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DateOfBirthID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserDateOfBirthID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserDateOfBirthID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserDateOfBirthID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimOrganizationUnitLevel5ID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserDimOrganizationUnitLevel5ID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserDimOrganizationUnitLevel5ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationUnitLevel5ID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserDimOrganizationUnitLevel5ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserDimOrganizationUnitLevel5ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserDimOrganizationUnitLevel5ID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimPagaAccountID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimPagaAccountID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimPagaAccountUserTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserDimPagaAccountUserTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserDimPagaAccountUserTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimPagaAccountUserTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserDimPagaAccountUserTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserDimPagaAccountUserTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserDimPagaAccountUserTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimUserID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'Email', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserEmail';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserEmail';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Email', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserEmail';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserEmail';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserEmail';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'FirstName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FirstName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'IsEnabled', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsEnabled', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'LastName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserLastName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserLastName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'LastName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserLastName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserLastName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserLastName';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'MiddleName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserMiddleName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserMiddleName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'MiddleName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserMiddleName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserMiddleName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserMiddleName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserName';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'PhoneNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'PhoneNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'Sex', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserSex';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserSex';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Sex', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserSex';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserSex';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserSex';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountUserTypeCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Code', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountUserTypeCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountUserTypeCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccountUserType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountUserTypeCode';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountUserTypeDescription';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Description', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountUserTypeDescription';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountUserTypeDescription';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccountUserType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountUserTypeDescription';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountUserTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountUserTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountUserTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccountUserType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountUserTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountUserTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountUserTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountUserTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccountUserType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountUserTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimCityID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeStockMovement', @level2type = N'COLUMN', @level2name = N'DimCityID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimCityID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeStockMovement', @level2type = N'COLUMN', @level2name = N'DimCityID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeStockMovement', @level2type = N'COLUMN', @level2name = N'DimCityID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeStockMovement', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeStockMovement', @level2type = N'COLUMN', @level2name = N'DimCityID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeStockMovement', @level2type = N'COLUMN', @level2name = N'DimDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeStockMovement', @level2type = N'COLUMN', @level2name = N'DimDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeStockMovement', @level2type = N'COLUMN', @level2name = N'DimDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeStockMovement', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeStockMovement', @level2type = N'COLUMN', @level2name = N'DimDateID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimMobileOperatorID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeStockMovement', @level2type = N'COLUMN', @level2name = N'DimMobileOperatorID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimMobileOperatorID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeStockMovement', @level2type = N'COLUMN', @level2name = N'DimMobileOperatorID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeStockMovement', @level2type = N'COLUMN', @level2name = N'DimMobileOperatorID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeStockMovement', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeStockMovement', @level2type = N'COLUMN', @level2name = N'DimMobileOperatorID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimOrganizationUnitLevel5ID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeStockMovement', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel5ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationUnitLevel5ID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeStockMovement', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel5ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeStockMovement', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel5ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeStockMovement', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeStockMovement', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel5ID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimPagaAccountID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeStockMovement', @level2type = N'COLUMN', @level2name = N'DimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimPagaAccountID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeStockMovement', @level2type = N'COLUMN', @level2name = N'DimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeStockMovement', @level2type = N'COLUMN', @level2name = N'DimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeStockMovement', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeStockMovement', @level2type = N'COLUMN', @level2name = N'DimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'MovementAmount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeStockMovement', @level2type = N'COLUMN', @level2name = N'MovementAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'MovementAmount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeStockMovement', @level2type = N'COLUMN', @level2name = N'MovementAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeStockMovement', @level2type = N'COLUMN', @level2name = N'MovementAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeStockMovement', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeStockMovement', @level2type = N'COLUMN', @level2name = N'MovementAmount';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'AccountBalance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeStockOnHandSnapshot', @level2type = N'COLUMN', @level2name = N'AccountBalance';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'AccountBalance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeStockOnHandSnapshot', @level2type = N'COLUMN', @level2name = N'AccountBalance';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeStockOnHandSnapshot', @level2type = N'COLUMN', @level2name = N'AccountBalance';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeStockOnHandSnapshot', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeStockOnHandSnapshot', @level2type = N'COLUMN', @level2name = N'AccountBalance';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimCityID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeStockOnHandSnapshot', @level2type = N'COLUMN', @level2name = N'DimCityID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimCityID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeStockOnHandSnapshot', @level2type = N'COLUMN', @level2name = N'DimCityID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeStockOnHandSnapshot', @level2type = N'COLUMN', @level2name = N'DimCityID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeStockOnHandSnapshot', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeStockOnHandSnapshot', @level2type = N'COLUMN', @level2name = N'DimCityID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeStockOnHandSnapshot', @level2type = N'COLUMN', @level2name = N'DimDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeStockOnHandSnapshot', @level2type = N'COLUMN', @level2name = N'DimDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeStockOnHandSnapshot', @level2type = N'COLUMN', @level2name = N'DimDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeStockOnHandSnapshot', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeStockOnHandSnapshot', @level2type = N'COLUMN', @level2name = N'DimDateID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimMobileOperatorID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeStockOnHandSnapshot', @level2type = N'COLUMN', @level2name = N'DimMobileOperatorID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimMobileOperatorID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeStockOnHandSnapshot', @level2type = N'COLUMN', @level2name = N'DimMobileOperatorID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeStockOnHandSnapshot', @level2type = N'COLUMN', @level2name = N'DimMobileOperatorID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeStockOnHandSnapshot', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeStockOnHandSnapshot', @level2type = N'COLUMN', @level2name = N'DimMobileOperatorID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimOrganizationUnitLevel5ID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeStockOnHandSnapshot', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel5ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationUnitLevel5ID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeStockOnHandSnapshot', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel5ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeStockOnHandSnapshot', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel5ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeStockOnHandSnapshot', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeStockOnHandSnapshot', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel5ID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimPagaAccountID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeStockOnHandSnapshot', @level2type = N'COLUMN', @level2name = N'DimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimPagaAccountID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeStockOnHandSnapshot', @level2type = N'COLUMN', @level2name = N'DimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeStockOnHandSnapshot', @level2type = N'COLUMN', @level2name = N'DimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeStockOnHandSnapshot', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeStockOnHandSnapshot', @level2type = N'COLUMN', @level2name = N'DimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'CreditAmount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTransactions', @level2type = N'COLUMN', @level2name = N'CreditAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'CreditAmount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTransactions', @level2type = N'COLUMN', @level2name = N'CreditAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTransactions', @level2type = N'COLUMN', @level2name = N'CreditAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeTransactions', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTransactions', @level2type = N'COLUMN', @level2name = N'CreditAmount';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DebitAmount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTransactions', @level2type = N'COLUMN', @level2name = N'DebitAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DebitAmount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTransactions', @level2type = N'COLUMN', @level2name = N'DebitAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTransactions', @level2type = N'COLUMN', @level2name = N'DebitAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeTransactions', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTransactions', @level2type = N'COLUMN', @level2name = N'DebitAmount';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimCityID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTransactions', @level2type = N'COLUMN', @level2name = N'DimCityID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimCityID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTransactions', @level2type = N'COLUMN', @level2name = N'DimCityID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTransactions', @level2type = N'COLUMN', @level2name = N'DimCityID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeTransactions', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTransactions', @level2type = N'COLUMN', @level2name = N'DimCityID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTransactions', @level2type = N'COLUMN', @level2name = N'DimDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTransactions', @level2type = N'COLUMN', @level2name = N'DimDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTransactions', @level2type = N'COLUMN', @level2name = N'DimDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeTransactions', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTransactions', @level2type = N'COLUMN', @level2name = N'DimDateID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimFinancialAccountID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTransactions', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimFinancialAccountID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTransactions', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTransactions', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeTransactions', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTransactions', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimFinancialTransactionTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTransactions', @level2type = N'COLUMN', @level2name = N'DimFinancialTransactionTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimFinancialTransactionTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTransactions', @level2type = N'COLUMN', @level2name = N'DimFinancialTransactionTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTransactions', @level2type = N'COLUMN', @level2name = N'DimFinancialTransactionTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeTransactions', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTransactions', @level2type = N'COLUMN', @level2name = N'DimFinancialTransactionTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimOrganizationUnitLevel5ID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTransactions', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel5ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationUnitLevel5ID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTransactions', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel5ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTransactions', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel5ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeTransactions', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTransactions', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel5ID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimPagaAccountID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTransactions', @level2type = N'COLUMN', @level2name = N'DimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimPagaAccountID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTransactions', @level2type = N'COLUMN', @level2name = N'DimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTransactions', @level2type = N'COLUMN', @level2name = N'DimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeTransactions', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTransactions', @level2type = N'COLUMN', @level2name = N'DimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimTimeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTransactions', @level2type = N'COLUMN', @level2name = N'DimTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimTimeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTransactions', @level2type = N'COLUMN', @level2name = N'DimTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTransactions', @level2type = N'COLUMN', @level2name = N'DimTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeTransactions', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTransactions', @level2type = N'COLUMN', @level2name = N'DimTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'AggregatedCreditAmount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'AggregatedCreditAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'AggregatedCreditAmount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'AggregatedCreditAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'AggregatedCreditAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactDailyGLSnapshot', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'AggregatedCreditAmount';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'AggregatedDebitAmount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'AggregatedDebitAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'AggregatedDebitAmount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'AggregatedDebitAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'AggregatedDebitAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactDailyGLSnapshot', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'AggregatedDebitAmount';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'ClosingBalance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'ClosingBalance';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ClosingBalance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'ClosingBalance';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'ClosingBalance';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactDailyGLSnapshot', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'ClosingBalance';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'CreditTransactionCount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'CreditTransactionCount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'CreditTransactionCount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'CreditTransactionCount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'CreditTransactionCount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactDailyGLSnapshot', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'CreditTransactionCount';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DebitTransactionCount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'DebitTransactionCount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DebitTransactionCount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'DebitTransactionCount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'DebitTransactionCount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactDailyGLSnapshot', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'DebitTransactionCount';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimAsOfDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'DimAsOfDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimAsOfDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'DimAsOfDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'DimAsOfDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactDailyGLSnapshot', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'DimAsOfDateID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimCityID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'DimCityID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimCityID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'DimCityID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'DimCityID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactDailyGLSnapshot', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'DimCityID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimFinancialAccountID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimFinancialAccountID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactDailyGLSnapshot', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimFinancialTransactionTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'DimFinancialTransactionTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimFinancialTransactionTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'DimFinancialTransactionTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'DimFinancialTransactionTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactDailyGLSnapshot', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'DimFinancialTransactionTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimOrganizationUnitLevel5ID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel5ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationUnitLevel5ID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel5ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel5ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactDailyGLSnapshot', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel5ID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'MovementDirection', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'MovementDirection';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'MovementDirection', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'MovementDirection';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'MovementDirection';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactDailyGLSnapshot', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'MovementDirection';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'OpeningBalance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'OpeningBalance';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'OpeningBalance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'OpeningBalance';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'OpeningBalance';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactDailyGLSnapshot', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactDailyGLSnapshot', @level2type = N'COLUMN', @level2name = N'OpeningBalance';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'RelatedTransactionID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'CreditAmount';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DebitAmount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DebitAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DebitAmount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DebitAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DebitAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTransactions', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DebitAmount';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimCityID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimCityID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimCityID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimCityID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimCityID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTransactions', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimCityID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimCreatedDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimCreatedDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTransactions', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimCreatedTimeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimCreatedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimCreatedTimeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimCreatedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimCreatedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTransactions', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimCreatedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimEffectiveDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimEffectiveDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimEffectiveDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimEffectiveDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimEffectiveDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTransactions', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimEffectiveDateID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimEffectiveTimeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimEffectiveTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimEffectiveTimeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimEffectiveTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimEffectiveTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTransactions', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimEffectiveTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimFinancialAccountID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimFinancialAccountID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTransactions', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimFinancialTransactionTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimFinancialTransactionTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimFinancialTransactionTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimFinancialTransactionTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimFinancialTransactionTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTransactions', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimFinancialTransactionTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimOrganizationUnitLevel5ID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel5ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationUnitLevel5ID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel5ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel5ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTransactions', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel5ID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimPagaAccountID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimPagaAccountID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTransactions', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimProcessTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimProcessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimProcessTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimProcessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimProcessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTransactions', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimProcessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimTransactionDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimTransactionDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimTransactionDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimTransactionDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimTransactionDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTransactions', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimTransactionDateID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimTransactionTimeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimTransactionTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimTransactionTimeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimTransactionTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimTransactionTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTransactions', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimTransactionTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimUserID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimUserID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTransactions', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'DimUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FactFinancialTransactionID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTransactions', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'OriginalTransactionID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'OriginalTransactionID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'OriginalTransactionID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'OriginalTransactionID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'OriginalTransactionID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTransactions', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'OriginalTransactionID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'RelatedTransactionID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'RelatedTransactionID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'RelatedTransactionID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'RelatedTransactionID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'RelatedTransactionID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTransactions', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTransactions', @level2type = N'COLUMN', @level2name = N'RelatedTransactionID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'AggregatedCreditAmount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactMonthlyGLSnapshot', @level2type = N'COLUMN', @level2name = N'AggregatedCreditAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'AggregatedCreditAmount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactMonthlyGLSnapshot', @level2type = N'COLUMN', @level2name = N'AggregatedCreditAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactMonthlyGLSnapshot', @level2type = N'COLUMN', @level2name = N'AggregatedCreditAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactMonthlyGLSnapshot', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactMonthlyGLSnapshot', @level2type = N'COLUMN', @level2name = N'AggregatedCreditAmount';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'AggregatedDebitAmount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactMonthlyGLSnapshot', @level2type = N'COLUMN', @level2name = N'AggregatedDebitAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'AggregatedDebitAmount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactMonthlyGLSnapshot', @level2type = N'COLUMN', @level2name = N'AggregatedDebitAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactMonthlyGLSnapshot', @level2type = N'COLUMN', @level2name = N'AggregatedDebitAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactMonthlyGLSnapshot', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactMonthlyGLSnapshot', @level2type = N'COLUMN', @level2name = N'AggregatedDebitAmount';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'ClosingBalance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactMonthlyGLSnapshot', @level2type = N'COLUMN', @level2name = N'ClosingBalance';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ClosingBalance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactMonthlyGLSnapshot', @level2type = N'COLUMN', @level2name = N'ClosingBalance';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactMonthlyGLSnapshot', @level2type = N'COLUMN', @level2name = N'ClosingBalance';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactMonthlyGLSnapshot', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactMonthlyGLSnapshot', @level2type = N'COLUMN', @level2name = N'ClosingBalance';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'CreditTransactionCount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactMonthlyGLSnapshot', @level2type = N'COLUMN', @level2name = N'CreditTransactionCount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'CreditTransactionCount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactMonthlyGLSnapshot', @level2type = N'COLUMN', @level2name = N'CreditTransactionCount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactMonthlyGLSnapshot', @level2type = N'COLUMN', @level2name = N'CreditTransactionCount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactMonthlyGLSnapshot', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactMonthlyGLSnapshot', @level2type = N'COLUMN', @level2name = N'CreditTransactionCount';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DebitTransactionCount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactMonthlyGLSnapshot', @level2type = N'COLUMN', @level2name = N'DebitTransactionCount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DebitTransactionCount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactMonthlyGLSnapshot', @level2type = N'COLUMN', @level2name = N'DebitTransactionCount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactMonthlyGLSnapshot', @level2type = N'COLUMN', @level2name = N'DebitTransactionCount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactMonthlyGLSnapshot', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactMonthlyGLSnapshot', @level2type = N'COLUMN', @level2name = N'DebitTransactionCount';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimAsOfDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactMonthlyGLSnapshot', @level2type = N'COLUMN', @level2name = N'DimAsOfDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimAsOfDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactMonthlyGLSnapshot', @level2type = N'COLUMN', @level2name = N'DimAsOfDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactMonthlyGLSnapshot', @level2type = N'COLUMN', @level2name = N'DimAsOfDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactMonthlyGLSnapshot', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactMonthlyGLSnapshot', @level2type = N'COLUMN', @level2name = N'DimAsOfDateID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimCityID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactMonthlyGLSnapshot', @level2type = N'COLUMN', @level2name = N'DimCityID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimCityID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactMonthlyGLSnapshot', @level2type = N'COLUMN', @level2name = N'DimCityID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactMonthlyGLSnapshot', @level2type = N'COLUMN', @level2name = N'DimCityID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactMonthlyGLSnapshot', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactMonthlyGLSnapshot', @level2type = N'COLUMN', @level2name = N'DimCityID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimFinancialAccountID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactMonthlyGLSnapshot', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimFinancialAccountID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactMonthlyGLSnapshot', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactMonthlyGLSnapshot', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactMonthlyGLSnapshot', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactMonthlyGLSnapshot', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimFinancialTransactionTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactMonthlyGLSnapshot', @level2type = N'COLUMN', @level2name = N'DimFinancialTransactionTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimFinancialTransactionTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactMonthlyGLSnapshot', @level2type = N'COLUMN', @level2name = N'DimFinancialTransactionTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactMonthlyGLSnapshot', @level2type = N'COLUMN', @level2name = N'DimFinancialTransactionTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactMonthlyGLSnapshot', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactMonthlyGLSnapshot', @level2type = N'COLUMN', @level2name = N'DimFinancialTransactionTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimOrganizationUnitLevel5ID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactMonthlyGLSnapshot', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel5ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationUnitLevel5ID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactMonthlyGLSnapshot', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel5ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactMonthlyGLSnapshot', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel5ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactMonthlyGLSnapshot', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactMonthlyGLSnapshot', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel5ID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'MovementDirection', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactMonthlyGLSnapshot', @level2type = N'COLUMN', @level2name = N'MovementDirection';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'MovementDirection', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactMonthlyGLSnapshot', @level2type = N'COLUMN', @level2name = N'MovementDirection';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactMonthlyGLSnapshot', @level2type = N'COLUMN', @level2name = N'MovementDirection';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactMonthlyGLSnapshot', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactMonthlyGLSnapshot', @level2type = N'COLUMN', @level2name = N'MovementDirection';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'OpeningBalance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactMonthlyGLSnapshot', @level2type = N'COLUMN', @level2name = N'OpeningBalance';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'OpeningBalance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactMonthlyGLSnapshot', @level2type = N'COLUMN', @level2name = N'OpeningBalance';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactMonthlyGLSnapshot', @level2type = N'COLUMN', @level2name = N'OpeningBalance';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactMonthlyGLSnapshot', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactMonthlyGLSnapshot', @level2type = N'COLUMN', @level2name = N'OpeningBalance';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'AgentCommissionAmount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'AgentCommissionAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'AgentCommissionAmount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'AgentCommissionAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'AgentCommissionAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'AgentCommissionAmount';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'ATMReferenceNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'ATMReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ATMReferenceNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'ATMReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'ATMReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'ATMReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'CardProcessorName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'CardProcessorName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'CardProcessorName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'CardProcessorName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'CardProcessorName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'CardProcessorName';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'CustomerBillerAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'CustomerBillerAccount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'CustomerBillerAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'CustomerBillerAccount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'CustomerBillerAccount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'CustomerBillerAccount';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'CustomerPhoneNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'CustomerPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'CustomerPhoneNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'CustomerPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'CustomerPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'CustomerPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DependentProcessID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DependentProcessID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DependentProcessID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DependentProcessID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DependentProcessID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DependentProcessID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DepositNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DepositNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DepositNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DepositNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DepositNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DepositNumber';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimAgentCommissionTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimAgentCommissionTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimAgentCommissionTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimAgentCommissionTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimAgentCommissionTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimAgentCommissionTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimApprovedByUserID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimApprovedByUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimApprovedByUserID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimApprovedByUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimApprovedByUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimApprovedByUserID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimBillerAccountUserID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimBillerAccountUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimBillerAccountUserID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimBillerAccountUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimBillerAccountUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimBillerAccountUserID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimCancellationApprovedByUserID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimCancellationApprovedByUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimCancellationApprovedByUserID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimCancellationApprovedByUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimCancellationApprovedByUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimCancellationApprovedByUserID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimChannelID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimChannelID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimCityID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimCityID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimCityID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimCityID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimCityID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimCityID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimCompletedDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimCompletedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimCompletedDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimCompletedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimCompletedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimCompletedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimCompletedTimeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimCompletedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimCompletedTimeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimCompletedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimCompletedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimCompletedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimCreatedDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimCreatedDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimCreatedTimeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimCreatedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimCreatedTimeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimCreatedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimCreatedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimCreatedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimInitiatingUserID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimInitiatingUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimInitiatingUserID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimInitiatingUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimInitiatingUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimInitiatingUserID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimOnBehalffUserID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimOnBehalffUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOnBehalffUserID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimOnBehalffUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimOnBehalffUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimOnBehalffUserID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimOrganizationID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimOrganizationID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimOrganizationID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimOrganizationID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimOrganizationID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimOrganizationUnitLevel5ID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel5ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationUnitLevel5ID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel5ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel5ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel5ID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimOriginalPayerPagaAccountIDID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimOriginalPayerPagaAccountIDID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOriginalPayerPagaAccountIDID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimOriginalPayerPagaAccountIDID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimOriginalPayerPagaAccountIDID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimOriginalPayerPagaAccountIDID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimPagaAccountID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimPagaAccountID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimProcessStatusID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimProcessStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimProcessStatusID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimProcessStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimProcessStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimProcessStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimProcessTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimProcessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimProcessTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimProcessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimProcessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimProcessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimReceivingUserID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimReceivingUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimReceivingUserID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimReceivingUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimReceivingUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimReceivingUserID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimStartedDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimStartedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimStartedDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimStartedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimStartedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimStartedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimStartedTimeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimStartedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimStartedTimeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimStartedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimStartedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimStartedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimTransferDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimTransferDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimTransferDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimTransferDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimTransferDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimTransferDateID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimTransferTimeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimTransferTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimTransferTimeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimTransferTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimTransferTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimTransferTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimVerifiedByUserID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimVerifiedByUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimVerifiedByUserID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimVerifiedByUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimVerifiedByUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimVerifiedByUserID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'LinkedPhoneNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'LinkedPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'LinkedPhoneNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'LinkedPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'LinkedPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'LinkedPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'MerchantConfirmationCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'MerchantConfirmationCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'MerchantConfirmationCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'MerchantConfirmationCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'MerchantConfirmationCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'MerchantConfirmationCode';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'MerchantCustomerAccountNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'MerchantCustomerAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'MerchantCustomerAccountNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'MerchantCustomerAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'MerchantCustomerAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'MerchantCustomerAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'OriginalProcessID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'OriginalProcessID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'OriginalProcessID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'OriginalProcessID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'OriginalProcessID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'OriginalProcessID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'PaymentSource', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'PaymentSource';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'PaymentSource', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'PaymentSource';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'PaymentSource';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'PaymentSource';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'ProcessAmount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'ProcessAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ProcessAmount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'ProcessAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'ProcessAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'ProcessAmount';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'ProcessFee', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'ProcessFee';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ProcessFee', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'ProcessFee';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'ProcessFee';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'ProcessFee';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'ReferenceNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'ReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ReferenceNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'ReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'ReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'ReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'RequestedProcessChannel', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'RequestedProcessChannel';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'RequestedProcessChannel', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'RequestedProcessChannel';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'RequestedProcessChannel';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'RequestedProcessChannel';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'SenderPhoneNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'SenderPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SenderPhoneNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'SenderPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'SenderPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'SenderPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'WithdrawalCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'WithdrawalCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'WithdrawalCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'WithdrawalCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'WithdrawalCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'WithdrawalCode';

