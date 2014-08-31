  

CREATE VIEW [OLAP].[DimMobileOperator]
AS

SELECT 
	[DimMobileOperator_1257519819263473036].[Code] AS [DimMobileOperatorCode]
	,[DimMobileOperator_1257519819263473036].[DimMobileOperatorID] AS [DimMobileOperatorID]
	,[DimMobileOperator_1257519819263473036].[DimOrganizationID] AS [DimMobileOperatorDimOrganizationID]
	,[DimMobileOperator_1257519819263473036].[IsActive] AS [DimMobileOperatorIsActive]
	,[DimMobileOperator_1257519819263473036].[Name] AS [DimMobileOperatorName]
	,[DimMobileOperator_1257519819263473036].[SourceKey] AS [DimMobileOperatorSourceKey]
	,[DimOrganization_1206364116373437795].[Code] AS [DimOrganizationCode]
	,[DimOrganization_1206364116373437795].[Description] AS [DimOrganizationDescription]
	,[DimOrganization_1206364116373437795].[DimBusinessTypeID] AS [DimOrganizationDimBusinessTypeID]
	,[DimOrganization_1206364116373437795].[DimMerchantPagaAccountID] AS [DimOrganizationDimMerchantPagaAccountID]
	,[DimOrganization_1206364116373437795].[DimOrganizationSubscriptionStatusID] AS [DimOrganizationSubscriptionStatusID]
	,[DimOrganization_1206364116373437795].[DimOrganizationVerificationStatusID] AS [DimOrganizationVerificationStatusID]
	,[DimOrganization_1206364116373437795].[DisplayName] AS [DimOrganizationDisplayName]
	,[DimOrganization_1206364116373437795].[Name] AS [DimOrganizationName]
	,[DimOrganization_1206364116373437795].[OrganizationCode] AS [DimOrganizationOrganizationCode]
	,[DimOrganization_1206364116373437795].[RcName] AS [DimOrganizationRcName]
	,[DimOrganization_1206364116373437795].[ReferenceNumber] AS [DimOrganizationReferenceNumber]
	,[DimOrganization_1206364116373437795].[SourceKey] AS [DimOrganizationSourceKey]
	,[DimOrganization_1206364116373437795].[TaxIDNumber] AS [DimOrganizationTaxIDNumber]
	,[DimOrganization_1206364116373437795].[VATCertificationNumber] AS [DimOrganizationVATCertificationNumber]
	,[DimOrganization_1206364116373437795].[WebsiteURL] AS [DimOrganizationWebsiteURL]
	,[DimBusinessType_6948324472138220388].[Name] AS [DimBusinessTypeName]
	,[DimBusinessType_6948324472138220388].[SourceKey] AS [DimBusinessTypeSourceKey]
	,[DimMerchantPagaAccount_122755546129383218].[BankingStatus] AS [DimMerchantPagaAccountBankingStatus]
	,[DimMerchantPagaAccount_122755546129383218].[Code] AS [DimMerchantPagaAccountCode]
	,[DimMerchantPagaAccount_122755546129383218].[DimDealerID] AS [DimMerchantPagaAccountDimDealerID]
	,[DimMerchantPagaAccount_122755546129383218].[DimPagaAccountStatusID] AS [DimMerchantPagaAccountDimPagaAccountStatusID]
	,[DimMerchantPagaAccount_122755546129383218].[DimPagaAccountUserTypeID] AS [DimMerchantPagaAccountDimPagaAccountUserTypeID]
	,[DimMerchantPagaAccount_122755546129383218].[ExternalAccountNumber] AS [DimMerchantPagaAccountExternalAccountNumber]
	,[DimMerchantPagaAccount_122755546129383218].[hasOnlineAccount] AS [DimMerchantPagaAccounthasOnlineAccount]
	,[DimMerchantPagaAccount_122755546129383218].[IsActive] AS [DimMerchantPagaAccountIsActive]
	,[DimMerchantPagaAccount_122755546129383218].[IsEnabled] AS [DimMerchantPagaAccountIsEnabled]
	,[DimMerchantPagaAccount_122755546129383218].[Name] AS [DimMerchantPagaAccountName]
	,[DimMerchantPagaAccount_122755546129383218].[PagaAccountNumber] AS [DimMerchantPagaAccountPagaAccountNumber]
	,[DimMerchantPagaAccount_122755546129383218].[SourceKey] AS [DimMerchantPagaAccountSourceKey]
	,[DimDealer_8091308762156265977].[Code] AS [DimDealerCode]
	,[DimDealer_8091308762156265977].[DimRoleID] AS [DimDealerDimRoleID]
	,[DimDealer_8091308762156265977].[Email] AS [DimDealerEmail]
	,[DimDealer_8091308762156265977].[FirstName] AS [DimDealerFirstName]
	,[DimDealer_8091308762156265977].[IsEnabled] AS [DimDealerIsEnabled]
	,[DimDealer_8091308762156265977].[LastName] AS [DimDealerLastName]
	,[DimDealer_8091308762156265977].[MiddleName] AS [DimDealerMiddleName]
	,[DimDealer_8091308762156265977].[Name] AS [DimDealerName]
	,[DimDealer_8091308762156265977].[PhoneNumber] AS [DimDealerPhoneNumber]
	,[DimDealer_8091308762156265977].[Sex] AS [DimDealerSex]
	,[DimDealer_8091308762156265977].[SourceKey] AS [DimDealerSourceKey]
	,[DimRole_673072507345492774].[Code] AS [DimRoleCode]
	,[DimRole_673072507345492774].[Description] AS [DimRoleDescription]
	,[DimRole_673072507345492774].[Name] AS [DimRoleName]
	,[DimRole_673072507345492774].[SourceKey] AS [DimRoleSourceKey]
	,[DimPagaAccountStatus_1250471727950986555].[Name] AS [DimPagaAccountStatusName]
	,[DimPagaAccountStatus_1250471727950986555].[SourceKey] AS [DimPagaAccountStatusSourceKey]
	,[DimPagaAccountUserType_8781423859728039783].[Description] AS [DimPagaAccountUserTypeDescription]
	,[DimPagaAccountUserType_8781423859728039783].[Name] AS [DimPagaAccountUserTypeName]
	,[DimPagaAccountUserType_8781423859728039783].[SourceKey] AS [DimPagaAccountUserTypeSourceKey]
	,[DimOrganizationSubscriptionStatus_6133142599075234292].[Name] AS [DimOrganizationSubscriptionStatusName]
	,[DimOrganizationSubscriptionStatus_6133142599075234292].[SourceKey] AS [DimOrganizationSubscriptionStatusSourceKey]
	,[DimOrganizationVerificationStatus_3727065078773624000].[Name] AS [DimOrganizationVerificationStatusName]
	,[DimOrganizationVerificationStatus_3727065078773624000].[SourceKey] AS [DimOrganizationVerificationStatusSourceKey]
FROM [Airtime].[DimMobileOperator] AS [DimMobileOperator_1257519819263473036]

    JOIN [Shared].[DimOrganization] AS [DimOrganization_1206364116373437795] 
    
    JOIN [Classification].[DimBusinessType] AS [DimBusinessType_6948324472138220388] 
    
        ON  [DimOrganization_1206364116373437795].[DimBusinessTypeID] = [DimBusinessType_6948324472138220388].[DimBusinessTypeID]

    JOIN [Shared].[DimMerchantPagaAccount] AS [DimMerchantPagaAccount_122755546129383218] 
    
    JOIN [Shared].[DimDealer] AS [DimDealer_8091308762156265977] 
    
    JOIN [Shared].[DimRole] AS [DimRole_673072507345492774] 
    
        ON  [DimDealer_8091308762156265977].[DimRoleID] = [DimRole_673072507345492774].[DimRoleID]

        ON  [DimMerchantPagaAccount_122755546129383218].[DimDealerID] = [DimDealer_8091308762156265977].[DimDealerID]

    JOIN [Classification].[DimPagaAccountStatus] AS [DimPagaAccountStatus_1250471727950986555] 
    
        ON  [DimMerchantPagaAccount_122755546129383218].[DimPagaAccountStatusID] = [DimPagaAccountStatus_1250471727950986555].[DimPagaAccountStatusID]

    JOIN [Classification].[DimPagaAccountUserType] AS [DimPagaAccountUserType_8781423859728039783] 
    
        ON  [DimMerchantPagaAccount_122755546129383218].[DimPagaAccountUserTypeID] = [DimPagaAccountUserType_8781423859728039783].[DimPagaAccountUserTypeID]

        ON  [DimOrganization_1206364116373437795].[DimMerchantPagaAccountID] = [DimMerchantPagaAccount_122755546129383218].[DimMerchantPagaAccountID]

    JOIN [Classification].[DimOrganizationSubscriptionStatus] AS [DimOrganizationSubscriptionStatus_6133142599075234292] 
    
        ON  [DimOrganization_1206364116373437795].[DimOrganizationSubscriptionStatusID] = [DimOrganizationSubscriptionStatus_6133142599075234292].[DimOrganizationSubscriptionStatusID]

    JOIN [Classification].[DimOrganizationVerificationStatus] AS [DimOrganizationVerificationStatus_3727065078773624000] 
    
        ON  [DimOrganization_1206364116373437795].[DimOrganizationVerificationStatusID] = [DimOrganizationVerificationStatus_3727065078773624000].[DimOrganizationVerificationStatusID]

        ON  [DimMobileOperator_1257519819263473036].[DimOrganizationID] = [DimOrganization_1206364116373437795].[DimOrganizationID]
GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationVerificationStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationVerificationStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationSubscriptionStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationSubscriptionStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccountUserType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimPagaAccountUserTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimPagaAccountUserTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimPagaAccountUserTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimPagaAccountUserTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimPagaAccountUserTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccountUserType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimPagaAccountUserTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimPagaAccountUserTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimPagaAccountUserTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimPagaAccountUserTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimPagaAccountUserTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccountUserType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimPagaAccountUserTypeDescription';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimPagaAccountUserTypeDescription';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Description', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimPagaAccountUserTypeDescription';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimPagaAccountUserTypeDescription';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'Description', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimPagaAccountUserTypeDescription';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccountStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccountStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimRole', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimRoleSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimRoleSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimRoleSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimRoleSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimRoleSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimRole', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimRoleName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimRoleName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimRoleName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimRoleName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimRoleName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimRole', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimRoleDescription';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimRoleDescription';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Description', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimRoleDescription';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimRoleDescription';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'Description', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimRoleDescription';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimRole', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimRoleCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimRoleCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Code', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimRoleCode';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimRoleCode';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimRoleCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDealer', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimDealerSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimDealerSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimDealerSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimDealerSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDealer', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimDealerSex';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimDealerSex';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Sex', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimDealerSex';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimDealerSex';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDealer', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimDealerPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimDealerPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'PhoneNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimDealerPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimDealerPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDealer', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimDealerName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimDealerName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimDealerName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimDealerName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDealer', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimDealerMiddleName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimDealerMiddleName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'MiddleName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimDealerMiddleName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimDealerMiddleName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDealer', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimDealerLastName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimDealerLastName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'LastName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimDealerLastName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimDealerLastName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDealer', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimDealerIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimDealerIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsEnabled', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimDealerIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimDealerIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDealer', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimDealerFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimDealerFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FirstName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimDealerFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimDealerFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDealer', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimDealerEmail';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimDealerEmail';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Email', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimDealerEmail';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimDealerEmail';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDealer', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimDealerDimRoleID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimDealerDimRoleID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimRoleID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimDealerDimRoleID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimDealerDimRoleID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDealer', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimDealerCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimDealerCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Code', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimDealerCode';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimDealerCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimMerchantPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimMerchantPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountPagaAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountPagaAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'PagaAccountNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountPagaAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountPagaAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimMerchantPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimMerchantPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsEnabled', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimMerchantPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountIsActive';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountIsActive';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsActive', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountIsActive';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountIsActive';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimMerchantPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccounthasOnlineAccount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccounthasOnlineAccount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'hasOnlineAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccounthasOnlineAccount';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccounthasOnlineAccount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimMerchantPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountExternalAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountExternalAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ExternalAccountNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountExternalAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountExternalAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimMerchantPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountDimPagaAccountUserTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountDimPagaAccountUserTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimPagaAccountUserTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountDimPagaAccountUserTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountDimPagaAccountUserTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimMerchantPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountDimPagaAccountStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountDimPagaAccountStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimPagaAccountStatusID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountDimPagaAccountStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountDimPagaAccountStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimMerchantPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountDimDealerID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountDimDealerID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimDealerID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountDimDealerID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountDimDealerID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimMerchantPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Code', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountCode';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimMerchantPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountBankingStatus';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountBankingStatus';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'BankingStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountBankingStatus';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountBankingStatus';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimBusinessType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimBusinessTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimBusinessTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimBusinessTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimBusinessTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimBusinessTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimBusinessType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimBusinessTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimBusinessTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimBusinessTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimBusinessTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimBusinessTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationWebsiteURL';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationWebsiteURL';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'WebsiteURL', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationWebsiteURL';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationWebsiteURL';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'WebsiteURL', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationWebsiteURL';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationVATCertificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationVATCertificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'VATCertificationNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationVATCertificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationVATCertificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'VATCertificationNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationVATCertificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationTaxIDNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationTaxIDNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'TaxIDNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationTaxIDNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationTaxIDNumber';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'TaxIDNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationTaxIDNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ReferenceNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'ReferenceNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationRcName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationRcName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'RcName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationRcName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationRcName';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'RcName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationRcName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationOrganizationCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationOrganizationCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'OrganizationCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationOrganizationCode';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationOrganizationCode';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'OrganizationCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationOrganizationCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationDisplayName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationDisplayName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DisplayName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationDisplayName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationDisplayName';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DisplayName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationDisplayName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationVerificationStatusID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimOrganizationVerificationStatusID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationSubscriptionStatusID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimOrganizationSubscriptionStatusID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimMerchantPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimMerchantPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimMerchantPagaAccountID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimMerchantPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimMerchantPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimPagaAccountID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimMerchantPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimBusinessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimBusinessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimBusinessTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimBusinessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimBusinessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimBusinessTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimBusinessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationDescription';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationDescription';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Description', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationDescription';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationDescription';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'Description', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationDescription';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Code', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationCode';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationCode';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimOrganizationCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimMobileOperator', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimMobileOperatorSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimMobileOperatorSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimMobileOperatorSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimMobileOperatorSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimMobileOperatorSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimMobileOperator', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimMobileOperatorName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimMobileOperatorName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimMobileOperatorName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimMobileOperatorName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimMobileOperatorName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimMobileOperator', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimMobileOperatorIsActive';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimMobileOperatorIsActive';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsActive', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimMobileOperatorIsActive';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimMobileOperatorIsActive';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'IsActive', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimMobileOperatorIsActive';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimMobileOperator', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimMobileOperatorDimOrganizationID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimMobileOperatorDimOrganizationID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimMobileOperatorDimOrganizationID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimMobileOperatorDimOrganizationID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimOrganizationID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimMobileOperatorDimOrganizationID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimMobileOperator', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimMobileOperatorID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimMobileOperatorID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimMobileOperatorID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimMobileOperatorID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimMobileOperatorID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimMobileOperator', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimMobileOperatorCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimMobileOperatorCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Code', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimMobileOperatorCode';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'DimMobileOperatorCode';

