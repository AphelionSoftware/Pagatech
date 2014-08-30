  

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
	,[DimBusinessType_6948324472138220388].[Code] AS [DimBusinessTypeCode]
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
	,[DimPagaAccountStatus_1250471727950986555].[Code] AS [DimPagaAccountStatusCode]
	,[DimPagaAccountStatus_1250471727950986555].[Name] AS [DimPagaAccountStatusName]
	,[DimPagaAccountStatus_1250471727950986555].[SourceKey] AS [DimPagaAccountStatusSourceKey]
	,[DimPagaAccountUserType_8781423859728039783].[Code] AS [DimPagaAccountUserTypeCode]
	,[DimPagaAccountUserType_8781423859728039783].[Description] AS [DimPagaAccountUserTypeDescription]
	,[DimPagaAccountUserType_8781423859728039783].[Name] AS [DimPagaAccountUserTypeName]
	,[DimPagaAccountUserType_8781423859728039783].[SourceKey] AS [DimPagaAccountUserTypeSourceKey]
	,[DimOrganizationSubscriptionStatus_6133142599075234292].[Code] AS [DimOrganizationSubscriptionStatusCode]
	,[DimOrganizationSubscriptionStatus_6133142599075234292].[Name] AS [DimOrganizationSubscriptionStatusName]
	,[DimOrganizationSubscriptionStatus_6133142599075234292].[SourceKey] AS [DimOrganizationSubscriptionStatusSourceKey]
	,[DimOrganizationVerificationStatus_3727065078773624000].[Code] AS [DimOrganizationVerificationStatusCode]
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



    