﻿  

CREATE VIEW [OLAP].[DimOrganization]
AS

SELECT 
	[DimOrganization_9033492926774381919].[DimBusinessTypeID] AS [DimOrganizationDimBusinessTypeID]
	,[DimOrganization_9033492926774381919].[DimChannelID] AS [DimOrganizationDimChannelID]
	,[DimOrganization_9033492926774381919].[DimMerchantCategoryID] AS [DimOrganizationDimMerchantCategoryID]
	,[DimOrganization_9033492926774381919].[DimOrganizationID] AS [DimOrganizationID]
	,[DimOrganization_9033492926774381919].[DimOrganizationSubscriptionStatusID] AS [DimOrganizationSubscriptionStatusID]
	,[DimOrganization_9033492926774381919].[DimOrganizationVerificationStatusID] AS [DimOrganizationVerificationStatusID]
	,[DimOrganization_9033492926774381919].[DimPagaAccountID] AS [DimOrganizationDimPagaAccountID]
	,[DimOrganization_9033492926774381919].[DisplayName] AS [DimOrganizationDisplayName]
	,[DimOrganization_9033492926774381919].[Name] AS [DimOrganizationName]
	,[DimOrganization_9033492926774381919].[OrganizationCode] AS [DimOrganizationOrganizationCode]
	,[DimOrganization_9033492926774381919].[RcName] AS [DimOrganizationRcName]
	,[DimOrganization_9033492926774381919].[ReferenceNumber] AS [DimOrganizationReferenceNumber]
	,[DimOrganization_9033492926774381919].[SourceKey] AS [DimOrganizationSourceKey]
	,[DimOrganization_9033492926774381919].[TaxIDNumber] AS [DimOrganizationTaxIDNumber]
	,[DimOrganization_9033492926774381919].[TextDesciption] AS [DimOrganizationTextDesciption]
	,[DimOrganization_9033492926774381919].[VATCertificationNumber] AS [DimOrganizationVATCertificationNumber]
	,[DimOrganization_9033492926774381919].[WebsiteURL] AS [DimOrganizationWebsiteURL]
	,[DimBusinessType_8434443494647151152].[Name] AS [DimBusinessTypeName]
	,[DimBusinessType_8434443494647151152].[SourceKey] AS [DimBusinessTypeSourceKey]
	,[DimChannel_7984874094332704124].[Name] AS [DimChannelName]
	,[DimChannel_7984874094332704124].[SourceKey] AS [DimChannelSourceKey]
	,[DimChannel_7984874094332704124].[TextDesciption] AS [DimChannelTextDesciption]
	,[DimMerchantCategory_3469314227992152100].[Name] AS [DimMerchantCategoryName]
	,[DimMerchantCategory_3469314227992152100].[SourceKey] AS [DimMerchantCategorySourceKey]
	,[DimOrganizationSubscriptionStatus_7236533207765244648].[Name] AS [DimOrganizationSubscriptionStatusName]
	,[DimOrganizationSubscriptionStatus_7236533207765244648].[SourceKey] AS [DimOrganizationSubscriptionStatusSourceKey]
	,[DimOrganizationVerificationStatus_4952098070192088604].[Name] AS [DimOrganizationVerificationStatusName]
	,[DimOrganizationVerificationStatus_4952098070192088604].[SourceKey] AS [DimOrganizationVerificationStatusSourceKey]
	,[DimPagaAccount_2429942675500479342].[BankingStatus] AS [DimPagaAccountBankingStatus]
	,[DimPagaAccount_2429942675500479342].[CreatedDateID] AS [DimPagaAccountCreatedDateID]
	,[DimPagaAccount_2429942675500479342].[DimPagaAccountStatusID] AS [DimPagaAccountStatusID]
	,[DimPagaAccount_2429942675500479342].[ExternalAccountNumber] AS [DimPagaAccountExternalAccountNumber]
	,[DimPagaAccount_2429942675500479342].[hasOnlineAccount] AS [DimPagaAccounthasOnlineAccount]
	,[DimPagaAccount_2429942675500479342].[IsActive] AS [DimPagaAccountIsActive]
	,[DimPagaAccount_2429942675500479342].[IsAffiliate] AS [DimPagaAccountIsAffiliate]
	,[DimPagaAccount_2429942675500479342].[IsAgent] AS [DimPagaAccountIsAgent]
	,[DimPagaAccount_2429942675500479342].[IsBank] AS [DimPagaAccountIsBank]
	,[DimPagaAccount_2429942675500479342].[IsBusiness] AS [DimPagaAccountIsBusiness]
	,[DimPagaAccount_2429942675500479342].[IsCardProcessor] AS [DimPagaAccountIsCardProcessor]
	,[DimPagaAccount_2429942675500479342].[IsCashCollector] AS [DimPagaAccountIsCashCollector]
	,[DimPagaAccount_2429942675500479342].[IsCustomer] AS [DimPagaAccountIsCustomer]
	,[DimPagaAccount_2429942675500479342].[IsEnabled] AS [DimPagaAccountIsEnabled]
	,[DimPagaAccount_2429942675500479342].[IsMerchant] AS [DimPagaAccountIsMerchant]
	,[DimPagaAccount_2429942675500479342].[IsMobileOperator] AS [DimPagaAccountIsMobileOperator]
	,[DimPagaAccount_2429942675500479342].[IsPaga] AS [DimPagaAccountIsPaga]
	,[DimPagaAccount_2429942675500479342].[IsRemittanceProcessor] AS [DimPagaAccountIsRemittanceProcessor]
	,[DimPagaAccount_2429942675500479342].[IsServiceAggregator] AS [DimPagaAccountIsServiceAggregator]
	,[DimPagaAccount_2429942675500479342].[Name] AS [DimPagaAccountName]
	,[DimPagaAccount_2429942675500479342].[PagaAccountNumber] AS [DimPagaAccountPagaAccountNumber]
	,[DimPagaAccount_2429942675500479342].[RegistrationDateID] AS [DimPagaAccountRegistrationDateID]
	,[DimPagaAccount_2429942675500479342].[SourceKey] AS [DimPagaAccountSourceKey]
	,[DimPagaAccountStatus_7561658695108573673].[Name] AS [DimPagaAccountStatusName]
	,[DimPagaAccountStatus_7561658695108573673].[SourceKey] AS [DimPagaAccountStatusSourceKey]
FROM [Shared].[DimOrganization] AS [DimOrganization_9033492926774381919]

    JOIN [Classification].[DimBusinessType] AS [DimBusinessType_8434443494647151152] 
    
        ON  [DimOrganization_9033492926774381919].[DimBusinessTypeID] = [DimBusinessType_8434443494647151152].[DimBusinessTypeID]

    JOIN [Activity].[DimChannel] AS [DimChannel_7984874094332704124] 
    
        ON  [DimOrganization_9033492926774381919].[DimChannelID] = [DimChannel_7984874094332704124].[DimChannelID]

    JOIN [Classification].[DimMerchantCategory] AS [DimMerchantCategory_3469314227992152100] 
    
        ON  [DimOrganization_9033492926774381919].[DimMerchantCategoryID] = [DimMerchantCategory_3469314227992152100].[DimMerchantCategoryID]

    JOIN [Classification].[DimOrganizationSubscriptionStatus] AS [DimOrganizationSubscriptionStatus_7236533207765244648] 
    
        ON  [DimOrganization_9033492926774381919].[DimOrganizationSubscriptionStatusID] = [DimOrganizationSubscriptionStatus_7236533207765244648].[DimOrganizationSubscriptionStatusID]

    JOIN [Classification].[DimOrganizationVerificationStatus] AS [DimOrganizationVerificationStatus_4952098070192088604] 
    
        ON  [DimOrganization_9033492926774381919].[DimOrganizationVerificationStatusID] = [DimOrganizationVerificationStatus_4952098070192088604].[DimOrganizationVerificationStatusID]

    JOIN [Shared].[DimPagaAccount] AS [DimPagaAccount_2429942675500479342] 
    
    JOIN [Classification].[DimPagaAccountStatus] AS [DimPagaAccountStatus_7561658695108573673] 
    
        ON  [DimPagaAccount_2429942675500479342].[DimPagaAccountStatusID] = [DimPagaAccountStatus_7561658695108573673].[DimPagaAccountStatusID]

        ON  [DimOrganization_9033492926774381919].[DimPagaAccountID] = [DimPagaAccount_2429942675500479342].[DimPagaAccountID]
GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationVerificationStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationVerificationStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationSubscriptionStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationSubscriptionStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimChannel', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimChannelTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimChannelTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'TextDesciption', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimChannelTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimChannelTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'Description', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimChannelTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimChannel', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimChannelSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimChannelSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimChannelSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimChannelSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimChannelSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimChannel', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimChannelName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimChannelName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimChannelName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimChannelName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimChannelName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimBusinessType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimBusinessTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimBusinessTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimBusinessTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimBusinessTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimBusinessTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimBusinessType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimBusinessTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimBusinessTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimBusinessTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimBusinessTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimBusinessTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationWebsiteURL';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationWebsiteURL';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'WebsiteURL', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationWebsiteURL';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationWebsiteURL';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'WebsiteURL', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationWebsiteURL';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationVATCertificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationVATCertificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'VATCertificationNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationVATCertificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationVATCertificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'VATCertificationNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationVATCertificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'TextDesciption', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'Description', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationTaxIDNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationTaxIDNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'TaxIDNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationTaxIDNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationTaxIDNumber';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'TaxIDNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationTaxIDNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ReferenceNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'ReferenceNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationRcName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationRcName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'RcName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationRcName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationRcName';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'RcName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationRcName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationOrganizationCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationOrganizationCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'OrganizationCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationOrganizationCode';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationOrganizationCode';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'OrganizationCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationOrganizationCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationDisplayName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationDisplayName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DisplayName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationDisplayName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationDisplayName';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DisplayName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationDisplayName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimPagaAccountID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationVerificationStatusID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimOrganizationVerificationStatusID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationSubscriptionStatusID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimOrganizationSubscriptionStatusID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimMerchantCategoryID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimMerchantCategoryID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimMerchantCategoryID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimMerchantCategoryID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimMerchantCategoryID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimChannelID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimBusinessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimBusinessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimBusinessTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimBusinessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimBusinessTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimBusinessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccountStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccountStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimPagaAccountStatusID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimPagaAccountStatusID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountRegistrationDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountRegistrationDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'RegistrationDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountRegistrationDateID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountRegistrationDateID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'RegistrationDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountRegistrationDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountPagaAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountPagaAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'PagaAccountNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountPagaAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountPagaAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'PagaAccountNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountPagaAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsServiceAggregator';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsServiceAggregator';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsServiceAggregator', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsServiceAggregator';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsServiceAggregator';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsRemittanceProcessor';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsRemittanceProcessor';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsRemittanceProcessor', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsRemittanceProcessor';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsRemittanceProcessor';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsPaga';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsPaga';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsPaga', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsPaga';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsPaga';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsMobileOperator';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsMobileOperator';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsMobileOperator', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsMobileOperator';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsMobileOperator';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsMerchant';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsMerchant';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsMerchant', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsMerchant';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsMerchant';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsEnabled', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'IsEnabled', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsCustomer';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsCustomer';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsCustomer', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsCustomer';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsCustomer';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsCashCollector';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsCashCollector';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsCashCollector', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsCashCollector';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsCashCollector';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsCardProcessor';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsCardProcessor';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsCardProcessor', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsCardProcessor';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsCardProcessor';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsBusiness';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsBusiness';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsBusiness', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsBusiness';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsBusiness';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsBank';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsBank';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsBank', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsBank';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsBank';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsAgent';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsAgent';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsAgent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsAgent';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsAgent';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsAffiliate';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsAffiliate';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsAffiliate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsAffiliate';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsAffiliate';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsActive';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsActive';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsActive', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsActive';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsActive';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'IsActive', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsActive';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccounthasOnlineAccount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccounthasOnlineAccount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'hasOnlineAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccounthasOnlineAccount';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccounthasOnlineAccount';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'hasOnlineAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccounthasOnlineAccount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountExternalAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountExternalAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ExternalAccountNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountExternalAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountExternalAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'ExternalAccountNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountExternalAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'CreatedDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountBankingStatus';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountBankingStatus';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'BankingStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountBankingStatus';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountBankingStatus';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'BankingStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimPagaAccountBankingStatus';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimMerchantCategory', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimMerchantCategorySourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimMerchantCategorySourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimMerchantCategorySourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimMerchantCategorySourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimMerchantCategory', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimMerchantCategoryName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimMerchantCategoryName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimMerchantCategoryName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimOrganization', @level2type = N'COLUMN', @level2name = N'DimMerchantCategoryName';

