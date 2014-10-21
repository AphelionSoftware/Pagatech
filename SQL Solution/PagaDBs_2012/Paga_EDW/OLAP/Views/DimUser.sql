  

CREATE VIEW [OLAP].[DimUser]
AS

SELECT 
	[DimUser_6169299845028427303].[CreatedDateID] AS [DimUserCreatedDateID]
	,[DimUser_6169299845028427303].[DateOfBirthID] AS [DimUserDateOfBirthID]
	,[DimUser_6169299845028427303].[DimOrganizationUnitLevel4ID] AS [DimUserDimOrganizationUnitLevel4ID]
	,[DimUser_6169299845028427303].[DimPagaAccountID] AS [DimUserDimPagaAccountID]
	,[DimUser_6169299845028427303].[DimUserID] AS [DimUserID]
	,[DimUser_6169299845028427303].[Email] AS [DimUserEmail]
	,[DimUser_6169299845028427303].[FirstName] AS [DimUserFirstName]
	,[DimUser_6169299845028427303].[IsEnabled] AS [DimUserIsEnabled]
	,[DimUser_6169299845028427303].[LastName] AS [DimUserLastName]
	,[DimUser_6169299845028427303].[MiddleName] AS [DimUserMiddleName]
	,[DimUser_6169299845028427303].[Name] AS [DimUserName]
	,[DimUser_6169299845028427303].[PhoneNumber] AS [DimUserPhoneNumber]
	,[DimUser_6169299845028427303].[Sex] AS [DimUserSex]
	,[DimUser_6169299845028427303].[SourceKey] AS [DimUserSourceKey]
	,[DimOrganizationUnitLevel4_8936358083781369240].[DimOrganizationUnitLevel3ID] AS [DimOrganizationUnitLevel4DimOrganizationUnitLevel3ID]
	,[DimOrganizationUnitLevel4_8936358083781369240].[DimOrganizationUnitTypeID] AS [DimOrganizationUnitLevel4DimOrganizationUnitTypeID]
	,[DimOrganizationUnitLevel4_8936358083781369240].[IdentificationNumber] AS [DimOrganizationUnitLevel4IdentificationNumber]
	,[DimOrganizationUnitLevel4_8936358083781369240].[Name] AS [DimOrganizationUnitLevel4Name]
	,[DimOrganizationUnitLevel4_8936358083781369240].[SourceKey] AS [DimOrganizationUnitLevel4SourceKey]
	,[DimOrganizationUnitLevel3_988154058409580485].[DimOrganizationUnitLevel2ID] AS [DimOrganizationUnitLevel3DimOrganizationUnitLevel2ID]
	,[DimOrganizationUnitLevel3_988154058409580485].[DimOrganizationUnitTypeID] AS [DimOrganizationUnitLevel3DimOrganizationUnitTypeID]
	,[DimOrganizationUnitLevel3_988154058409580485].[IdentificationNumber] AS [DimOrganizationUnitLevel3IdentificationNumber]
	,[DimOrganizationUnitLevel3_988154058409580485].[Name] AS [DimOrganizationUnitLevel3Name]
	,[DimOrganizationUnitLevel3_988154058409580485].[SourceKey] AS [DimOrganizationUnitLevel3SourceKey]
	,[DimOrganizationUnitLevel2_3719148227607809704].[DimOrganizationUnitLevel1ID] AS [DimOrganizationUnitLevel2DimOrganizationUnitLevel1ID]
	,[DimOrganizationUnitLevel2_3719148227607809704].[DimOrganizationUnitTypeID] AS [DimOrganizationUnitLevel2DimOrganizationUnitTypeID]
	,[DimOrganizationUnitLevel2_3719148227607809704].[IdentificationNumber] AS [DimOrganizationUnitLevel2IdentificationNumber]
	,[DimOrganizationUnitLevel2_3719148227607809704].[Name] AS [DimOrganizationUnitLevel2Name]
	,[DimOrganizationUnitLevel2_3719148227607809704].[SourceKey] AS [DimOrganizationUnitLevel2SourceKey]
	,[DimOrganizationUnitLevel1_6984127855720827119].[DimOrganizationID] AS [DimOrganizationUnitLevel1DimOrganizationID]
	,[DimOrganizationUnitLevel1_6984127855720827119].[DimOrganizationUnitTypeID] AS [DimOrganizationUnitLevel1DimOrganizationUnitTypeID]
	,[DimOrganizationUnitLevel1_6984127855720827119].[IdentificationNumber] AS [DimOrganizationUnitLevel1IdentificationNumber]
	,[DimOrganizationUnitLevel1_6984127855720827119].[Name] AS [DimOrganizationUnitLevel1Name]
	,[DimOrganizationUnitLevel1_6984127855720827119].[SourceKey] AS [DimOrganizationUnitLevel1SourceKey]
	,[DimOrganization_1905044803173283672].[DimBusinessTypeID] AS [DimOrganizationDimBusinessTypeID]
	,[DimOrganization_1905044803173283672].[DimChannelID] AS [DimOrganizationDimChannelID]
	,[DimOrganization_1905044803173283672].[DimMerchantCategoryID] AS [DimOrganizationDimMerchantCategoryID]
	,[DimOrganization_1905044803173283672].[DimOrganizationSubscriptionStatusID] AS [DimOrganizationSubscriptionStatusID]
	,[DimOrganization_1905044803173283672].[DimOrganizationVerificationStatusID] AS [DimOrganizationVerificationStatusID]
	,[DimOrganization_1905044803173283672].[DimPagaAccountID] AS [DimOrganizationDimPagaAccountID]
	,[DimOrganization_1905044803173283672].[DisplayName] AS [DimOrganizationDisplayName]
	,[DimOrganization_1905044803173283672].[Name] AS [DimOrganizationName]
	,[DimOrganization_1905044803173283672].[OrganizationCode] AS [DimOrganizationOrganizationCode]
	,[DimOrganization_1905044803173283672].[RcName] AS [DimOrganizationRcName]
	,[DimOrganization_1905044803173283672].[ReferenceNumber] AS [DimOrganizationReferenceNumber]
	,[DimOrganization_1905044803173283672].[SourceKey] AS [DimOrganizationSourceKey]
	,[DimOrganization_1905044803173283672].[TaxIDNumber] AS [DimOrganizationTaxIDNumber]
	,[DimOrganization_1905044803173283672].[TextDesciption] AS [DimOrganizationTextDesciption]
	,[DimOrganization_1905044803173283672].[VATCertificationNumber] AS [DimOrganizationVATCertificationNumber]
	,[DimOrganization_1905044803173283672].[WebsiteURL] AS [DimOrganizationWebsiteURL]
	,[DimBusinessType_7103609054723636871].[Name] AS [DimBusinessTypeName]
	,[DimBusinessType_7103609054723636871].[SourceKey] AS [DimBusinessTypeSourceKey]
	,[DimChannel_7243379618718950021].[Name] AS [DimChannelName]
	,[DimChannel_7243379618718950021].[SourceKey] AS [DimChannelSourceKey]
	,[DimChannel_7243379618718950021].[TextDesciption] AS [DimChannelTextDesciption]
	,[DimMerchantCategory_5293178162193221045].[Name] AS [DimMerchantCategoryName]
	,[DimMerchantCategory_5293178162193221045].[SourceKey] AS [DimMerchantCategorySourceKey]
	,[DimOrganizationSubscriptionStatus_2588891911856761809].[Name] AS [DimOrganizationSubscriptionStatusName]
	,[DimOrganizationSubscriptionStatus_2588891911856761809].[SourceKey] AS [DimOrganizationSubscriptionStatusSourceKey]
	,[DimOrganizationVerificationStatus_7677550096351604627].[Name] AS [DimOrganizationVerificationStatusName]
	,[DimOrganizationVerificationStatus_7677550096351604627].[SourceKey] AS [DimOrganizationVerificationStatusSourceKey]
	,[DimPagaAccount_4043194870579905643].[BankingStatus] AS [DimPagaAccountBankingStatus]
	,[DimPagaAccount_4043194870579905643].[CreatedDateID] AS [DimPagaAccountCreatedDateID]
	,[DimPagaAccount_4043194870579905643].[DimPagaAccountStatusID] AS [DimPagaAccountStatusID]
	,[DimPagaAccount_4043194870579905643].[ExternalAccountNumber] AS [DimPagaAccountExternalAccountNumber]
	,[DimPagaAccount_4043194870579905643].[hasOnlineAccount] AS [DimPagaAccounthasOnlineAccount]
	,[DimPagaAccount_4043194870579905643].[IsActive] AS [DimPagaAccountIsActive]
	,[DimPagaAccount_4043194870579905643].[IsAffiliate] AS [DimPagaAccountIsAffiliate]
	,[DimPagaAccount_4043194870579905643].[IsAgent] AS [DimPagaAccountIsAgent]
	,[DimPagaAccount_4043194870579905643].[IsBank] AS [DimPagaAccountIsBank]
	,[DimPagaAccount_4043194870579905643].[IsBusiness] AS [DimPagaAccountIsBusiness]
	,[DimPagaAccount_4043194870579905643].[IsCardProcessor] AS [DimPagaAccountIsCardProcessor]
	,[DimPagaAccount_4043194870579905643].[IsCashCollector] AS [DimPagaAccountIsCashCollector]
	,[DimPagaAccount_4043194870579905643].[IsCustomer] AS [DimPagaAccountIsCustomer]
	,[DimPagaAccount_4043194870579905643].[IsEnabled] AS [DimPagaAccountIsEnabled]
	,[DimPagaAccount_4043194870579905643].[IsMerchant] AS [DimPagaAccountIsMerchant]
	,[DimPagaAccount_4043194870579905643].[IsMobileOperator] AS [DimPagaAccountIsMobileOperator]
	,[DimPagaAccount_4043194870579905643].[IsPaga] AS [DimPagaAccountIsPaga]
	,[DimPagaAccount_4043194870579905643].[IsRemittanceProcessor] AS [DimPagaAccountIsRemittanceProcessor]
	,[DimPagaAccount_4043194870579905643].[IsServiceAggregator] AS [DimPagaAccountIsServiceAggregator]
	,[DimPagaAccount_4043194870579905643].[Name] AS [DimPagaAccountName]
	,[DimPagaAccount_4043194870579905643].[PagaAccountNumber] AS [DimPagaAccountPagaAccountNumber]
	,[DimPagaAccount_4043194870579905643].[RegistrationDateID] AS [DimPagaAccountRegistrationDateID]
	,[DimPagaAccount_4043194870579905643].[SourceKey] AS [DimPagaAccountSourceKey]
	,[DimPagaAccountStatus_5240516289017432912].[Name] AS [DimPagaAccountStatusName]
	,[DimPagaAccountStatus_5240516289017432912].[SourceKey] AS [DimPagaAccountStatusSourceKey]
	,[DimOrganizationUnitType_5767352596454279124].[Name] AS [DimOrganizationUnitTypeName]
	,[DimOrganizationUnitType_5767352596454279124].[SourceKey] AS [DimOrganizationUnitTypeSourceKey]
FROM [Shared].[DimUser] AS [DimUser_6169299845028427303]

    LEFT JOIN [Shared].[DimOrganizationUnitLevel4] AS [DimOrganizationUnitLevel4_8936358083781369240] 
    
    JOIN [Shared].[DimOrganizationUnitLevel3] AS [DimOrganizationUnitLevel3_988154058409580485] 
    
    JOIN [Shared].[DimOrganizationUnitLevel2] AS [DimOrganizationUnitLevel2_3719148227607809704] 
    
    JOIN [Shared].[DimOrganizationUnitLevel1] AS [DimOrganizationUnitLevel1_6984127855720827119] 
    
    JOIN [Shared].[DimOrganization] AS [DimOrganization_1905044803173283672] 
    
    JOIN [Classification].[DimBusinessType] AS [DimBusinessType_7103609054723636871] 
    
        ON  [DimOrganization_1905044803173283672].[DimBusinessTypeID] = [DimBusinessType_7103609054723636871].[DimBusinessTypeID]

    JOIN [Activity].[DimChannel] AS [DimChannel_7243379618718950021] 
    
        ON  [DimOrganization_1905044803173283672].[DimChannelID] = [DimChannel_7243379618718950021].[DimChannelID]

    JOIN [Classification].[DimMerchantCategory] AS [DimMerchantCategory_5293178162193221045] 
    
        ON  [DimOrganization_1905044803173283672].[DimMerchantCategoryID] = [DimMerchantCategory_5293178162193221045].[DimMerchantCategoryID]

    JOIN [Classification].[DimOrganizationSubscriptionStatus] AS [DimOrganizationSubscriptionStatus_2588891911856761809] 
    
        ON  [DimOrganization_1905044803173283672].[DimOrganizationSubscriptionStatusID] = [DimOrganizationSubscriptionStatus_2588891911856761809].[DimOrganizationSubscriptionStatusID]

    JOIN [Classification].[DimOrganizationVerificationStatus] AS [DimOrganizationVerificationStatus_7677550096351604627] 
    
        ON  [DimOrganization_1905044803173283672].[DimOrganizationVerificationStatusID] = [DimOrganizationVerificationStatus_7677550096351604627].[DimOrganizationVerificationStatusID]

    JOIN [Shared].[DimPagaAccount] AS [DimPagaAccount_4043194870579905643] 
    
    JOIN [Classification].[DimPagaAccountStatus] AS [DimPagaAccountStatus_5240516289017432912] 
    
        ON  [DimPagaAccount_4043194870579905643].[DimPagaAccountStatusID] = [DimPagaAccountStatus_5240516289017432912].[DimPagaAccountStatusID]

        ON  [DimOrganization_1905044803173283672].[DimPagaAccountID] = [DimPagaAccount_4043194870579905643].[DimPagaAccountID]

        ON  [DimOrganizationUnitLevel1_6984127855720827119].[DimOrganizationID] = [DimOrganization_1905044803173283672].[DimOrganizationID]

    JOIN [Classification].[DimOrganizationUnitType] AS [DimOrganizationUnitType_5767352596454279124] 
    
        ON  [DimOrganizationUnitLevel1_6984127855720827119].[DimOrganizationUnitTypeID] = [DimOrganizationUnitType_5767352596454279124].[DimOrganizationUnitTypeID]

        ON  [DimOrganizationUnitLevel2_3719148227607809704].[DimOrganizationUnitLevel1ID] = [DimOrganizationUnitLevel1_6984127855720827119].[DimOrganizationUnitLevel1ID]

    JOIN [Classification].[DimOrganizationUnitType] AS [DimOrganizationUnitType_5799835933463621517] 
    
        ON  [DimOrganizationUnitLevel2_3719148227607809704].[DimOrganizationUnitTypeID] = [DimOrganizationUnitType_5799835933463621517].[DimOrganizationUnitTypeID]

        ON  [DimOrganizationUnitLevel3_988154058409580485].[DimOrganizationUnitLevel2ID] = [DimOrganizationUnitLevel2_3719148227607809704].[DimOrganizationUnitLevel2ID]

    JOIN [Classification].[DimOrganizationUnitType] AS [DimOrganizationUnitType_5591098967928506912] 
    
        ON  [DimOrganizationUnitLevel3_988154058409580485].[DimOrganizationUnitTypeID] = [DimOrganizationUnitType_5591098967928506912].[DimOrganizationUnitTypeID]

        ON  [DimOrganizationUnitLevel4_8936358083781369240].[DimOrganizationUnitLevel3ID] = [DimOrganizationUnitLevel3_988154058409580485].[DimOrganizationUnitLevel3ID]

    JOIN [Classification].[DimOrganizationUnitType] AS [DimOrganizationUnitType_4476767257340192253] 
    
        ON  [DimOrganizationUnitLevel4_8936358083781369240].[DimOrganizationUnitTypeID] = [DimOrganizationUnitType_4476767257340192253].[DimOrganizationUnitTypeID]

    ON  [DimUser_6169299845028427303].[DimOrganizationUnitLevel4ID] = [DimOrganizationUnitLevel4_8936358083781369240].[DimOrganizationUnitLevel4ID]
        

    LEFT JOIN [Shared].[DimPagaAccount] AS [DimPagaAccount_8584644694627272522] 
    
    JOIN [Classification].[DimPagaAccountStatus] AS [DimPagaAccountStatus_5186060155232598495] 
    
        ON  [DimPagaAccount_8584644694627272522].[DimPagaAccountStatusID] = [DimPagaAccountStatus_5186060155232598495].[DimPagaAccountStatusID]

    ON  [DimUser_6169299845028427303].[DimPagaAccountID] = [DimPagaAccount_8584644694627272522].[DimPagaAccountID]
GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccountStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'7', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusSourceKey';




GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'7', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusName';




GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccountStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'6', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountSourceKey';




GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountRegistrationDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountRegistrationDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'RegistrationDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountRegistrationDateID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'6', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountRegistrationDateID';




GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'RegistrationDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountRegistrationDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountPagaAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountPagaAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'PagaAccountNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountPagaAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'6', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountPagaAccountNumber';




GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'PagaAccountNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountPagaAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'6', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountName';




GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsServiceAggregator';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsServiceAggregator';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsServiceAggregator', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsServiceAggregator';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'6', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsServiceAggregator';




GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsRemittanceProcessor';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsRemittanceProcessor';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsRemittanceProcessor', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsRemittanceProcessor';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'6', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsRemittanceProcessor';




GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsPaga';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsPaga';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsPaga', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsPaga';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'6', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsPaga';




GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsMobileOperator';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsMobileOperator';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsMobileOperator', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsMobileOperator';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'6', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsMobileOperator';




GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsMerchant';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsMerchant';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsMerchant', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsMerchant';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'6', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsMerchant';




GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsEnabled', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'6', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsEnabled';




GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'IsEnabled', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsCustomer';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsCustomer';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsCustomer', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsCustomer';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'6', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsCustomer';




GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsCashCollector';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsCashCollector';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsCashCollector', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsCashCollector';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'6', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsCashCollector';




GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsCardProcessor';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsCardProcessor';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsCardProcessor', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsCardProcessor';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'6', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsCardProcessor';




GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsBusiness';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsBusiness';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsBusiness', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsBusiness';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'6', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsBusiness';




GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsBank';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsBank';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsBank', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsBank';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'6', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsBank';




GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsAgent';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsAgent';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsAgent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsAgent';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'6', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsAgent';




GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsAffiliate';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsAffiliate';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsAffiliate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsAffiliate';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'6', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsAffiliate';




GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsActive';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsActive';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsActive', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsActive';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'6', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsActive';




GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'IsActive', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsActive';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccounthasOnlineAccount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccounthasOnlineAccount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'hasOnlineAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccounthasOnlineAccount';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'6', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccounthasOnlineAccount';




GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'hasOnlineAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccounthasOnlineAccount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountExternalAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountExternalAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ExternalAccountNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountExternalAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'6', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountExternalAccountNumber';




GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'ExternalAccountNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountExternalAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimPagaAccountStatusID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'6', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusID';




GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimPagaAccountStatusID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'CreatedDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'6', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountCreatedDateID';




GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountBankingStatus';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountBankingStatus';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'BankingStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountBankingStatus';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'6', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountBankingStatus';




GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'BankingStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimPagaAccountBankingStatus';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'6', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationVerificationStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationVerificationStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'6', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationSubscriptionStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'6', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationSubscriptionStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'6', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimChannel', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimChannelTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimChannelTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'TextDesciption', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimChannelTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'6', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimChannelTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'Description', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimChannelTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimChannel', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimChannelSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimChannelSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimChannelSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimChannelSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'6', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimChannelSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimChannel', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimChannelName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimChannelName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimChannelName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimChannelName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'6', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimChannelName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimBusinessType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimBusinessTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimBusinessTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimBusinessTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimBusinessTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'6', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimBusinessTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimBusinessType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimBusinessTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimBusinessTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimBusinessTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimBusinessTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'6', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimBusinessTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationWebsiteURL';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationWebsiteURL';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'WebsiteURL', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationWebsiteURL';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationWebsiteURL';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'WebsiteURL', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationWebsiteURL';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationVATCertificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationVATCertificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'VATCertificationNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationVATCertificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationVATCertificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'VATCertificationNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationVATCertificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'TextDesciption', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'Description', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationTaxIDNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationTaxIDNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'TaxIDNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationTaxIDNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationTaxIDNumber';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'TaxIDNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationTaxIDNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ReferenceNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'ReferenceNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationRcName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationRcName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'RcName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationRcName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationRcName';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'RcName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationRcName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationOrganizationCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationOrganizationCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'OrganizationCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationOrganizationCode';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationOrganizationCode';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'OrganizationCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationOrganizationCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationDisplayName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationDisplayName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DisplayName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationDisplayName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationDisplayName';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DisplayName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationDisplayName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimPagaAccountID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationVerificationStatusID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimOrganizationVerificationStatusID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationSubscriptionStatusID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimOrganizationSubscriptionStatusID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimMerchantCategoryID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimMerchantCategoryID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimMerchantCategoryID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimMerchantCategoryID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimMerchantCategoryID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimChannelID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimBusinessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimBusinessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimBusinessTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimBusinessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimBusinessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimBusinessTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimBusinessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1Name';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1Name';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1IdentificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1IdentificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IdentificationNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1IdentificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1IdentificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1DimOrganizationUnitTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1DimOrganizationUnitTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationUnitTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1DimOrganizationUnitTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1DimOrganizationUnitTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimOrganizationUnitTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1DimOrganizationUnitTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1DimOrganizationID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1DimOrganizationID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1DimOrganizationID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1DimOrganizationID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimOrganizationID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1DimOrganizationID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2Name';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2Name';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2IdentificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2IdentificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IdentificationNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2IdentificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2IdentificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2DimOrganizationUnitTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2DimOrganizationUnitTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationUnitTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2DimOrganizationUnitTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2DimOrganizationUnitTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimOrganizationUnitTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2DimOrganizationUnitTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2DimOrganizationUnitLevel1ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2DimOrganizationUnitLevel1ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationUnitLevel1ID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2DimOrganizationUnitLevel1ID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2DimOrganizationUnitLevel1ID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimOrganizationUnitLevel1ID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2DimOrganizationUnitLevel1ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3Name';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3Name';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3IdentificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3IdentificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IdentificationNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3IdentificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3IdentificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3DimOrganizationUnitTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3DimOrganizationUnitTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationUnitTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3DimOrganizationUnitTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3DimOrganizationUnitTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimOrganizationUnitTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3DimOrganizationUnitTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3DimOrganizationUnitLevel2ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3DimOrganizationUnitLevel2ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationUnitLevel2ID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3DimOrganizationUnitLevel2ID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3DimOrganizationUnitLevel2ID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimOrganizationUnitLevel2ID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3DimOrganizationUnitLevel2ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4Name';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4Name';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4IdentificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4IdentificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IdentificationNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4IdentificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4IdentificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4DimOrganizationUnitTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4DimOrganizationUnitTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationUnitTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4DimOrganizationUnitTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4DimOrganizationUnitTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimOrganizationUnitTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4DimOrganizationUnitTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4DimOrganizationUnitLevel3ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4DimOrganizationUnitLevel3ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationUnitLevel3ID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4DimOrganizationUnitLevel3ID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4DimOrganizationUnitLevel3ID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimOrganizationUnitLevel3ID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4DimOrganizationUnitLevel3ID';


GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserSex';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserSex';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Sex', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserSex';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserSex';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'PhoneNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserMiddleName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserMiddleName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'MiddleName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserMiddleName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserMiddleName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserLastName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserLastName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'LastName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserLastName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserLastName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsEnabled', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FirstName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserEmail';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserEmail';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Email', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserEmail';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserEmail';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimUserID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimPagaAccountID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserDimOrganizationUnitLevel4ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserDimOrganizationUnitLevel4ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationUnitLevel4ID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserDimOrganizationUnitLevel4ID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserDimOrganizationUnitLevel4ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserDateOfBirthID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserDateOfBirthID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DateOfBirthID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserDateOfBirthID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserDateOfBirthID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'CreatedDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimUserCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimMerchantCategory', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimMerchantCategorySourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimMerchantCategorySourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimMerchantCategorySourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'6', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimMerchantCategorySourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimMerchantCategory', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimMerchantCategoryName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimMerchantCategoryName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimMerchantCategoryName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'6', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimUser', @level2type = N'COLUMN', @level2name = N'DimMerchantCategoryName';

