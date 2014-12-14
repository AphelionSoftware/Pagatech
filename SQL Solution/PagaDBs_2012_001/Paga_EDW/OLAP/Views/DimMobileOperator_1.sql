  

CREATE VIEW [OLAP].[DimMobileOperator]
AS

SELECT 
	[DimMobileOperator_1257519819263473036].[DimMobileOperatorID] AS [MobileOperatorDimMobileOperatorID]
	,[DimMobileOperator_1257519819263473036].[DimOrganizationID] AS [MobileOperatorDimOrganizationID]
	,[DimMobileOperator_1257519819263473036].[IsActive] AS [MobileOperatorIsActive]
	,[DimMobileOperator_1257519819263473036].[Name] AS [MobileOperatorName]
	,[DimMobileOperator_1257519819263473036].[SourceKey] AS [MobileOperatorSourceKey]
	,[DimOrganization_1206364116373437795].[DimBusinessTypeID] AS [OrganizationDimBusinessTypeID]
	,[DimOrganization_1206364116373437795].[DimChannelID] AS [OrganizationDimChannelID]
	,[DimOrganization_1206364116373437795].[DimMerchantCategoryID] AS [OrganizationDimMerchantCategoryID]
	,[DimOrganization_1206364116373437795].[DimOrganizationID] AS [OrganizationDimOrganizationID]
	,[DimOrganization_1206364116373437795].[DimOrganizationSubscriptionStatusID] AS [OrganizationDimOrganizationSubscriptionStatusID]
	,[DimOrganization_1206364116373437795].[DimOrganizationVerificationStatusID] AS [OrganizationDimOrganizationVerificationStatusID]
	,[DimOrganization_1206364116373437795].[DimPagaAccountID] AS [OrganizationDimPagaAccountID]
	,[DimOrganization_1206364116373437795].[DisplayName] AS [OrganizationDisplayName]
	,[DimOrganization_1206364116373437795].[Name] AS [OrganizationName]
	,[DimOrganization_1206364116373437795].[OrganizationCode] AS [OrganizationOrganizationCode]
	,[DimOrganization_1206364116373437795].[RcName] AS [OrganizationRcName]
	,[DimOrganization_1206364116373437795].[ReferenceNumber] AS [OrganizationReferenceNumber]
	,[DimOrganization_1206364116373437795].[SourceKey] AS [OrganizationSourceKey]
	,[DimOrganization_1206364116373437795].[TaxIDNumber] AS [OrganizationTaxIDNumber]
	,[DimOrganization_1206364116373437795].[TextDesciption] AS [OrganizationTextDesciption]
	,[DimOrganization_1206364116373437795].[VATCertificationNumber] AS [OrganizationVATCertificationNumber]
	,[DimOrganization_1206364116373437795].[WebsiteURL] AS [OrganizationWebsiteURL]
	,[DimBusinessType_6948324472138220388].[DimBusinessTypeID] AS [BusinessTypeDimBusinessTypeID]
	,[DimBusinessType_6948324472138220388].[Name] AS [BusinessTypeName]
	,[DimBusinessType_6948324472138220388].[SourceKey] AS [BusinessTypeSourceKey]
	,[DimChannel_5399276282559249656].[DimChannelID] AS [ChannelDimChannelID]
	,[DimChannel_5399276282559249656].[Name] AS [ChannelName]
	,[DimChannel_5399276282559249656].[SourceKey] AS [ChannelSourceKey]
	,[DimChannel_5399276282559249656].[TextDesciption] AS [ChannelTextDesciption]
	,[DimMerchantCategory_2575509731484399776].[DimMerchantCategoryID] AS [MerchantCategoryDimMerchantCategoryID]
	,[DimMerchantCategory_2575509731484399776].[Name] AS [MerchantCategoryName]
	,[DimMerchantCategory_2575509731484399776].[SourceKey] AS [MerchantCategorySourceKey]
	,[DimOrganizationSubscriptionStatus_6133142599075234292].[DimOrganizationSubscriptionStatusID] AS [OrganizationSubscriptionStatusDimOrganizationSubscriptionStatusID]
	,[DimOrganizationSubscriptionStatus_6133142599075234292].[Name] AS [OrganizationSubscriptionStatusName]
	,[DimOrganizationSubscriptionStatus_6133142599075234292].[SourceKey] AS [OrganizationSubscriptionStatusSourceKey]
	,[DimOrganizationVerificationStatus_3727065078773624000].[DimOrganizationVerificationStatusID] AS [OrganizationVerificationStatusDimOrganizationVerificationStatusID]
	,[DimOrganizationVerificationStatus_3727065078773624000].[Name] AS [OrganizationVerificationStatusName]
	,[DimOrganizationVerificationStatus_3727065078773624000].[SourceKey] AS [OrganizationVerificationStatusSourceKey]
	,[DimPagaAccount_412421726885189586].[BankingStatus] AS [PagaAccountBankingStatus]
	,[DimPagaAccount_412421726885189586].[CreatedDateID] AS [PagaAccountCreatedDateID]
	,[DimPagaAccount_412421726885189586].[DimPagaAccountID] AS [PagaAccountDimPagaAccountID]
	,[DimPagaAccount_412421726885189586].[DimPagaAccountStatusID] AS [PagaAccountDimPagaAccountStatusID]
	,[DimPagaAccount_412421726885189586].[ExternalAccountNumber] AS [PagaAccountExternalAccountNumber]
	,[DimPagaAccount_412421726885189586].[hasOnlineAccount] AS [PagaAccounthasOnlineAccount]
	,[DimPagaAccount_412421726885189586].[IsActive] AS [PagaAccountIsActive]
	,[DimPagaAccount_412421726885189586].[IsAffiliate] AS [PagaAccountIsAffiliate]
	,[DimPagaAccount_412421726885189586].[IsAgent] AS [PagaAccountIsAgent]
	,[DimPagaAccount_412421726885189586].[IsBank] AS [PagaAccountIsBank]
	,[DimPagaAccount_412421726885189586].[IsBusiness] AS [PagaAccountIsBusiness]
	,[DimPagaAccount_412421726885189586].[IsCardProcessor] AS [PagaAccountIsCardProcessor]
	,[DimPagaAccount_412421726885189586].[IsCashCollector] AS [PagaAccountIsCashCollector]
	,[DimPagaAccount_412421726885189586].[IsCustomer] AS [PagaAccountIsCustomer]
	,[DimPagaAccount_412421726885189586].[IsEnabled] AS [PagaAccountIsEnabled]
	,[DimPagaAccount_412421726885189586].[IsMerchant] AS [PagaAccountIsMerchant]
	,[DimPagaAccount_412421726885189586].[IsMobileOperator] AS [PagaAccountIsMobileOperator]
	,[DimPagaAccount_412421726885189586].[IsPaga] AS [PagaAccountIsPaga]
	,[DimPagaAccount_412421726885189586].[IsRemittanceProcessor] AS [PagaAccountIsRemittanceProcessor]
	,[DimPagaAccount_412421726885189586].[IsServiceAggregator] AS [PagaAccountIsServiceAggregator]
	,[DimPagaAccount_412421726885189586].[Name] AS [PagaAccountName]
	,[DimPagaAccount_412421726885189586].[PagaAccountNumber] AS [PagaAccountPagaAccountNumber]
	,[DimPagaAccount_412421726885189586].[RegistrationDateID] AS [PagaAccountRegistrationDateID]
	,[DimPagaAccount_412421726885189586].[SourceKey] AS [PagaAccountSourceKey]
	,[DimPagaAccountStatus_171802276347187227].[DimPagaAccountStatusID] AS [PagaAccountStatusDimPagaAccountStatusID]
	,[DimPagaAccountStatus_171802276347187227].[Name] AS [PagaAccountStatusName]
	,[DimPagaAccountStatus_171802276347187227].[SourceKey] AS [PagaAccountStatusSourceKey]
FROM [Airtime].[DimMobileOperator] AS [DimMobileOperator_1257519819263473036]

    JOIN [Shared].[DimOrganization] AS [DimOrganization_1206364116373437795] 
    
    JOIN [Classification].[DimBusinessType] AS [DimBusinessType_6948324472138220388] 
    
        ON  [DimOrganization_1206364116373437795].[DimBusinessTypeID] = [DimBusinessType_6948324472138220388].[DimBusinessTypeID]

    JOIN [Activity].[DimChannel] AS [DimChannel_5399276282559249656] 
    
        ON  [DimOrganization_1206364116373437795].[DimChannelID] = [DimChannel_5399276282559249656].[DimChannelID]

    JOIN [Classification].[DimMerchantCategory] AS [DimMerchantCategory_2575509731484399776] 
    
        ON  [DimOrganization_1206364116373437795].[DimMerchantCategoryID] = [DimMerchantCategory_2575509731484399776].[DimMerchantCategoryID]

    JOIN [Classification].[DimOrganizationSubscriptionStatus] AS [DimOrganizationSubscriptionStatus_6133142599075234292] 
    
        ON  [DimOrganization_1206364116373437795].[DimOrganizationSubscriptionStatusID] = [DimOrganizationSubscriptionStatus_6133142599075234292].[DimOrganizationSubscriptionStatusID]

    JOIN [Classification].[DimOrganizationVerificationStatus] AS [DimOrganizationVerificationStatus_3727065078773624000] 
    
        ON  [DimOrganization_1206364116373437795].[DimOrganizationVerificationStatusID] = [DimOrganizationVerificationStatus_3727065078773624000].[DimOrganizationVerificationStatusID]

    JOIN [Shared].[DimPagaAccount] AS [DimPagaAccount_412421726885189586] 
    
    JOIN [Classification].[DimPagaAccountStatus] AS [DimPagaAccountStatus_171802276347187227] 
    
        ON  [DimPagaAccount_412421726885189586].[DimPagaAccountStatusID] = [DimPagaAccountStatus_171802276347187227].[DimPagaAccountStatusID]

        ON  [DimOrganization_1206364116373437795].[DimPagaAccountID] = [DimPagaAccount_412421726885189586].[DimPagaAccountID]

        ON  [DimMobileOperator_1257519819263473036].[DimOrganizationID] = [DimOrganization_1206364116373437795].[DimOrganizationID]
GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccountStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccountStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccountStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountStatusDimPagaAccountStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountStatusDimPagaAccountStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimPagaAccountStatusID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountStatusDimPagaAccountStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountStatusDimPagaAccountStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountRegistrationDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountRegistrationDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'RegistrationDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountRegistrationDateID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountRegistrationDateID';


GO



GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountPagaAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountPagaAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'PagaAccountNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountPagaAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountPagaAccountNumber';


GO



GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountIsServiceAggregator';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountIsServiceAggregator';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsServiceAggregator', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountIsServiceAggregator';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountIsServiceAggregator';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountIsRemittanceProcessor';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountIsRemittanceProcessor';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsRemittanceProcessor', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountIsRemittanceProcessor';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountIsRemittanceProcessor';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountIsPaga';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountIsPaga';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsPaga', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountIsPaga';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountIsPaga';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountIsMobileOperator';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountIsMobileOperator';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsMobileOperator', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountIsMobileOperator';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountIsMobileOperator';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountIsMerchant';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountIsMerchant';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsMerchant', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountIsMerchant';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountIsMerchant';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsEnabled', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountIsEnabled';


GO



GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountIsCustomer';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountIsCustomer';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsCustomer', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountIsCustomer';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountIsCustomer';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountIsCashCollector';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountIsCashCollector';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsCashCollector', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountIsCashCollector';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountIsCashCollector';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountIsCardProcessor';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountIsCardProcessor';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsCardProcessor', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountIsCardProcessor';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountIsCardProcessor';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountIsBusiness';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountIsBusiness';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsBusiness', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountIsBusiness';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountIsBusiness';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountIsBank';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountIsBank';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsBank', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountIsBank';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountIsBank';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountIsAgent';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountIsAgent';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsAgent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountIsAgent';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountIsAgent';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountIsAffiliate';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountIsAffiliate';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsAffiliate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountIsAffiliate';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountIsAffiliate';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountIsActive';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountIsActive';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsActive', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountIsActive';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountIsActive';


GO



GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccounthasOnlineAccount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccounthasOnlineAccount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'hasOnlineAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccounthasOnlineAccount';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccounthasOnlineAccount';


GO



GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountExternalAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountExternalAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ExternalAccountNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountExternalAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountExternalAccountNumber';


GO



GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountDimPagaAccountStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountDimPagaAccountStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimPagaAccountStatusID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountDimPagaAccountStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountDimPagaAccountStatusID';


GO



GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimPagaAccountID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'CreatedDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountBankingStatus';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountBankingStatus';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'BankingStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountBankingStatus';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'PagaAccountBankingStatus';


GO



GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationVerificationStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationVerificationStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationVerificationStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationVerificationStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationVerificationStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationVerificationStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationVerificationStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationVerificationStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationVerificationStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationVerificationStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationVerificationStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationVerificationStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationVerificationStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationVerificationStatusDimOrganizationVerificationStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationVerificationStatusDimOrganizationVerificationStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationVerificationStatusID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationVerificationStatusDimOrganizationVerificationStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationVerificationStatusDimOrganizationVerificationStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationSubscriptionStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationSubscriptionStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationSubscriptionStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationSubscriptionStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationSubscriptionStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationSubscriptionStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationSubscriptionStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationSubscriptionStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationSubscriptionStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationSubscriptionStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationSubscriptionStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationSubscriptionStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationSubscriptionStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationSubscriptionStatusDimOrganizationSubscriptionStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationSubscriptionStatusDimOrganizationSubscriptionStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationSubscriptionStatusID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationSubscriptionStatusDimOrganizationSubscriptionStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationSubscriptionStatusDimOrganizationSubscriptionStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimMerchantCategory', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'MerchantCategorySourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'MerchantCategorySourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'MerchantCategorySourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'MerchantCategorySourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimMerchantCategory', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'MerchantCategoryName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'MerchantCategoryName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'MerchantCategoryName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'MerchantCategoryName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimMerchantCategory', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'MerchantCategoryDimMerchantCategoryID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'MerchantCategoryDimMerchantCategoryID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimMerchantCategoryID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'MerchantCategoryDimMerchantCategoryID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'MerchantCategoryDimMerchantCategoryID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimChannel', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'ChannelTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'ChannelTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'TextDesciption', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'ChannelTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'ChannelTextDesciption';


GO



GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimChannel', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'ChannelSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'ChannelSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'ChannelSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'ChannelSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'ChannelSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimChannel', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'ChannelName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'ChannelName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'ChannelName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'ChannelName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'ChannelName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimChannel', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'ChannelDimChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'ChannelDimChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimChannelID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'ChannelDimChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'ChannelDimChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimBusinessType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'BusinessTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'BusinessTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'BusinessTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'BusinessTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'BusinessTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimBusinessType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'BusinessTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'BusinessTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'BusinessTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'BusinessTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'BusinessTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimBusinessType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'BusinessTypeDimBusinessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'BusinessTypeDimBusinessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimBusinessTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'BusinessTypeDimBusinessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'BusinessTypeDimBusinessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationWebsiteURL';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationWebsiteURL';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'WebsiteURL', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationWebsiteURL';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationWebsiteURL';


GO



GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationVATCertificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationVATCertificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'VATCertificationNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationVATCertificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationVATCertificationNumber';


GO



GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'TextDesciption', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationTextDesciption';


GO



GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationTaxIDNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationTaxIDNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'TaxIDNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationTaxIDNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationTaxIDNumber';


GO



GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ReferenceNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationReferenceNumber';


GO



GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationRcName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationRcName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'RcName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationRcName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationRcName';


GO



GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationOrganizationCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationOrganizationCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'OrganizationCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationOrganizationCode';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationOrganizationCode';


GO



GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationDisplayName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationDisplayName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DisplayName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationDisplayName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationDisplayName';


GO



GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimPagaAccountID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationDimOrganizationVerificationStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationDimOrganizationVerificationStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationVerificationStatusID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationDimOrganizationVerificationStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationDimOrganizationVerificationStatusID';


GO



GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationDimOrganizationSubscriptionStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationDimOrganizationSubscriptionStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationSubscriptionStatusID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationDimOrganizationSubscriptionStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationDimOrganizationSubscriptionStatusID';


GO



GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationDimOrganizationID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationDimOrganizationID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationDimOrganizationID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationDimOrganizationID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationDimMerchantCategoryID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationDimMerchantCategoryID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimMerchantCategoryID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationDimMerchantCategoryID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationDimMerchantCategoryID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationDimChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationDimChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimChannelID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationDimChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationDimChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationDimBusinessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationDimBusinessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimBusinessTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationDimBusinessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'OrganizationDimBusinessTypeID';


GO



GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimMobileOperator', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'MobileOperatorSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'MobileOperatorSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'MobileOperatorSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'MobileOperatorSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'MobileOperatorSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimMobileOperator', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'MobileOperatorName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'MobileOperatorName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'MobileOperatorName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'MobileOperatorName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'MobileOperatorName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimMobileOperator', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'MobileOperatorIsActive';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'MobileOperatorIsActive';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsActive', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'MobileOperatorIsActive';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'MobileOperatorIsActive';


GO



GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimMobileOperator', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'MobileOperatorDimOrganizationID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'MobileOperatorDimOrganizationID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'MobileOperatorDimOrganizationID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'MobileOperatorDimOrganizationID';


GO



GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimMobileOperator', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'MobileOperatorDimMobileOperatorID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'MobileOperatorDimMobileOperatorID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimMobileOperatorID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimMobileOperator', @level2type = N'COLUMN', @level2name = N'MobileOperatorDimMobileOperatorID';

