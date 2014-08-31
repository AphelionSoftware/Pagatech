  

CREATE VIEW [OLAP].[DimOrganization]
AS

SELECT 
	[DimOrganization_9033492926774381919].[Code] AS [DimOrganizationCode]
	,[DimOrganization_9033492926774381919].[Description] AS [DimOrganizationDescription]
	,[DimOrganization_9033492926774381919].[DimBusinessTypeID] AS [DimOrganizationDimBusinessTypeID]
	,[DimOrganization_9033492926774381919].[DimMerchantPagaAccountID] AS [DimOrganizationDimMerchantPagaAccountID]
	,[DimOrganization_9033492926774381919].[DimOrganizationID] AS [DimOrganizationID]
	,[DimOrganization_9033492926774381919].[DimOrganizationSubscriptionStatusID] AS [DimOrganizationSubscriptionStatusID]
	,[DimOrganization_9033492926774381919].[DimOrganizationVerificationStatusID] AS [DimOrganizationVerificationStatusID]
	,[DimOrganization_9033492926774381919].[DisplayName] AS [DimOrganizationDisplayName]
	,[DimOrganization_9033492926774381919].[Name] AS [DimOrganizationName]
	,[DimOrganization_9033492926774381919].[OrganizationCode] AS [DimOrganizationOrganizationCode]
	,[DimOrganization_9033492926774381919].[RcName] AS [DimOrganizationRcName]
	,[DimOrganization_9033492926774381919].[ReferenceNumber] AS [DimOrganizationReferenceNumber]
	,[DimOrganization_9033492926774381919].[SourceKey] AS [DimOrganizationSourceKey]
	,[DimOrganization_9033492926774381919].[TaxIDNumber] AS [DimOrganizationTaxIDNumber]
	,[DimOrganization_9033492926774381919].[VATCertificationNumber] AS [DimOrganizationVATCertificationNumber]
	,[DimOrganization_9033492926774381919].[WebsiteURL] AS [DimOrganizationWebsiteURL]
	,[DimBusinessType_8434443494647151152].[Code] AS [DimBusinessTypeCode]
	,[DimBusinessType_8434443494647151152].[Name] AS [DimBusinessTypeName]
	,[DimBusinessType_8434443494647151152].[SourceKey] AS [DimBusinessTypeSourceKey]
	,[DimMerchantPagaAccount_7638885378631761842].[BankingStatus] AS [DimMerchantPagaAccountBankingStatus]
	,[DimMerchantPagaAccount_7638885378631761842].[Code] AS [DimMerchantPagaAccountCode]
	,[DimMerchantPagaAccount_7638885378631761842].[DimDealerID] AS [DimMerchantPagaAccountDimDealerID]
	,[DimMerchantPagaAccount_7638885378631761842].[DimPagaAccountStatusID] AS [DimMerchantPagaAccountDimPagaAccountStatusID]
	,[DimMerchantPagaAccount_7638885378631761842].[DimPagaAccountUserTypeID] AS [DimMerchantPagaAccountDimPagaAccountUserTypeID]
	,[DimMerchantPagaAccount_7638885378631761842].[ExternalAccountNumber] AS [DimMerchantPagaAccountExternalAccountNumber]
	,[DimMerchantPagaAccount_7638885378631761842].[hasOnlineAccount] AS [DimMerchantPagaAccounthasOnlineAccount]
	,[DimMerchantPagaAccount_7638885378631761842].[IsActive] AS [DimMerchantPagaAccountIsActive]
	,[DimMerchantPagaAccount_7638885378631761842].[IsEnabled] AS [DimMerchantPagaAccountIsEnabled]
	,[DimMerchantPagaAccount_7638885378631761842].[Name] AS [DimMerchantPagaAccountName]
	,[DimMerchantPagaAccount_7638885378631761842].[PagaAccountNumber] AS [DimMerchantPagaAccountPagaAccountNumber]
	,[DimMerchantPagaAccount_7638885378631761842].[SourceKey] AS [DimMerchantPagaAccountSourceKey]
	,[DimDealer_4135333092399322459].[Code] AS [DimDealerCode]
	,[DimDealer_4135333092399322459].[DimRoleID] AS [DimDealerDimRoleID]
	,[DimDealer_4135333092399322459].[Email] AS [DimDealerEmail]
	,[DimDealer_4135333092399322459].[FirstName] AS [DimDealerFirstName]
	,[DimDealer_4135333092399322459].[IsEnabled] AS [DimDealerIsEnabled]
	,[DimDealer_4135333092399322459].[LastName] AS [DimDealerLastName]
	,[DimDealer_4135333092399322459].[MiddleName] AS [DimDealerMiddleName]
	,[DimDealer_4135333092399322459].[Name] AS [DimDealerName]
	,[DimDealer_4135333092399322459].[PhoneNumber] AS [DimDealerPhoneNumber]
	,[DimDealer_4135333092399322459].[Sex] AS [DimDealerSex]
	,[DimDealer_4135333092399322459].[SourceKey] AS [DimDealerSourceKey]
	,[DimRole_4869505643713421098].[Code] AS [DimRoleCode]
	,[DimRole_4869505643713421098].[Description] AS [DimRoleDescription]
	,[DimRole_4869505643713421098].[Name] AS [DimRoleName]
	,[DimRole_4869505643713421098].[SourceKey] AS [DimRoleSourceKey]
	,[DimPagaAccountStatus_7178985030655735113].[Code] AS [DimPagaAccountStatusCode]
	,[DimPagaAccountStatus_7178985030655735113].[Name] AS [DimPagaAccountStatusName]
	,[DimPagaAccountStatus_7178985030655735113].[SourceKey] AS [DimPagaAccountStatusSourceKey]
	,[DimPagaAccountUserType_6151942544762391771].[Code] AS [DimPagaAccountUserTypeCode]
	,[DimPagaAccountUserType_6151942544762391771].[Description] AS [DimPagaAccountUserTypeDescription]
	,[DimPagaAccountUserType_6151942544762391771].[Name] AS [DimPagaAccountUserTypeName]
	,[DimPagaAccountUserType_6151942544762391771].[SourceKey] AS [DimPagaAccountUserTypeSourceKey]
	,[DimOrganizationSubscriptionStatus_7236533207765244648].[Code] AS [DimOrganizationSubscriptionStatusCode]
	,[DimOrganizationSubscriptionStatus_7236533207765244648].[Name] AS [DimOrganizationSubscriptionStatusName]
	,[DimOrganizationSubscriptionStatus_7236533207765244648].[SourceKey] AS [DimOrganizationSubscriptionStatusSourceKey]
	,[DimOrganizationVerificationStatus_4952098070192088604].[Code] AS [DimOrganizationVerificationStatusCode]
	,[DimOrganizationVerificationStatus_4952098070192088604].[Name] AS [DimOrganizationVerificationStatusName]
	,[DimOrganizationVerificationStatus_4952098070192088604].[SourceKey] AS [DimOrganizationVerificationStatusSourceKey]
FROM [Shared].[DimOrganization] AS [DimOrganization_9033492926774381919]

    JOIN [Classification].[DimBusinessType] AS [DimBusinessType_8434443494647151152] 
    
        ON  [DimOrganization_9033492926774381919].[DimBusinessTypeID] = [DimBusinessType_8434443494647151152].[DimBusinessTypeID]

    JOIN [Shared].[DimMerchantPagaAccount] AS [DimMerchantPagaAccount_7638885378631761842] 
    
    JOIN [Shared].[DimDealer] AS [DimDealer_4135333092399322459] 
    
    JOIN [Shared].[DimRole] AS [DimRole_4869505643713421098] 
    
        ON  [DimDealer_4135333092399322459].[DimRoleID] = [DimRole_4869505643713421098].[DimRoleID]

        ON  [DimMerchantPagaAccount_7638885378631761842].[DimDealerID] = [DimDealer_4135333092399322459].[DimDealerID]

    JOIN [Classification].[DimPagaAccountStatus] AS [DimPagaAccountStatus_7178985030655735113] 
    
        ON  [DimMerchantPagaAccount_7638885378631761842].[DimPagaAccountStatusID] = [DimPagaAccountStatus_7178985030655735113].[DimPagaAccountStatusID]

    JOIN [Classification].[DimPagaAccountUserType] AS [DimPagaAccountUserType_6151942544762391771] 
    
        ON  [DimMerchantPagaAccount_7638885378631761842].[DimPagaAccountUserTypeID] = [DimPagaAccountUserType_6151942544762391771].[DimPagaAccountUserTypeID]

        ON  [DimOrganization_9033492926774381919].[DimMerchantPagaAccountID] = [DimMerchantPagaAccount_7638885378631761842].[DimMerchantPagaAccountID]

    JOIN [Classification].[DimOrganizationSubscriptionStatus] AS [DimOrganizationSubscriptionStatus_7236533207765244648] 
    
        ON  [DimOrganization_9033492926774381919].[DimOrganizationSubscriptionStatusID] = [DimOrganizationSubscriptionStatus_7236533207765244648].[DimOrganizationSubscriptionStatusID]

    JOIN [Classification].[DimOrganizationVerificationStatus] AS [DimOrganizationVerificationStatus_4952098070192088604] 
    
        ON  [DimOrganization_9033492926774381919].[DimOrganizationVerificationStatusID] = [DimOrganizationVerificationStatus_4952098070192088604].[DimOrganizationVerificationStatusID]



    