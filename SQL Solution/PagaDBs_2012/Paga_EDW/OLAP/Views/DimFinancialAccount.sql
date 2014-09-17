  

CREATE VIEW [OLAP].[DimFinancialAccount]
AS

SELECT 
	[DimFinancialAccount_5479953088314597640].[AccountNumber] AS [DimFinancialAccountAccountNumber]
	,[DimFinancialAccount_5479953088314597640].[DimBankAccountID] AS [DimFinancialAccountDimBankAccountID]
	,[DimFinancialAccount_5479953088314597640].[DimCurrencyID] AS [DimFinancialAccountDimCurrencyID]
	,[DimFinancialAccount_5479953088314597640].[DimFinancialAccountID] AS [DimFinancialAccountID]
	,[DimFinancialAccount_5479953088314597640].[DimFinancialAccountTypeID] AS [DimFinancialAccountTypeID]
	,[DimFinancialAccount_5479953088314597640].[DimFinancialHoldingAccountID] AS [DimFinancialAccountDimFinancialHoldingAccountID]
	,[DimFinancialAccount_5479953088314597640].[DimPagaAccountID] AS [DimFinancialAccountDimPagaAccountID]
	,[DimFinancialAccount_5479953088314597640].[Name] AS [DimFinancialAccountName]
	,[DimFinancialAccount_5479953088314597640].[OpeningBalance] AS [DimFinancialAccountOpeningBalance]
	,[DimFinancialAccount_5479953088314597640].[RestrictedBalance] AS [DimFinancialAccountRestrictedBalance]
	,[DimFinancialAccount_5479953088314597640].[SourceKey] AS [DimFinancialAccountSourceKey]
	,[DimFinancialAccount_5479953088314597640].[TotalBalance] AS [DimFinancialAccountTotalBalance]
	,[DimBankAccount_775377134276959563].[AccountAlias] AS [DimBankAccountAccountAlias]
	,[DimBankAccount_775377134276959563].[AccountHolderName] AS [DimBankAccountAccountHolderName]
	,[DimBankAccount_775377134276959563].[AccountLinkIdentifier] AS [DimBankAccountAccountLinkIdentifier]
	,[DimBankAccount_775377134276959563].[AccountNumber] AS [DimBankAccountAccountNumber]
	,[DimBankAccount_775377134276959563].[BankAccountLinkStatusComment] AS [DimBankAccountBankAccountLinkStatusComment]
	,[DimBankAccount_775377134276959563].[BankAccountLinkStatusType] AS [DimBankAccountBankAccountLinkStatusType]
	,[DimBankAccount_775377134276959563].[BranchName] AS [DimBankAccountBranchName]
	,[DimBankAccount_775377134276959563].[DimBankID] AS [DimBankAccountDimBankID]
	,[DimBankAccount_775377134276959563].[DurationLimit] AS [DimBankAccountDurationLimit]
	,[DimBankAccount_775377134276959563].[DurationLimitSeconds] AS [DimBankAccountDurationLimitSeconds]
	,[DimBankAccount_775377134276959563].[IsEnabled] AS [DimBankAccountIsEnabled]
	,[DimBankAccount_775377134276959563].[KYC_Rating] AS [DimBankAccountKYC_Rating]
	,[DimBankAccount_775377134276959563].[MobilePhoneNumber] AS [DimBankAccountMobilePhoneNumber]
	,[DimBankAccount_775377134276959563].[Name] AS [DimBankAccountName]
	,[DimBankAccount_775377134276959563].[SourceKey] AS [DimBankAccountSourceKey]
	,[DimBankAccount_775377134276959563].[TextDesciption] AS [DimBankAccountTextDesciption]
	,[DimBankAccount_775377134276959563].[TransactionLimit] AS [DimBankAccountTransactionLimit]
	,[DimBank_4349602419228696364].[BankAccountLinkType] AS [DimBankBankAccountLinkType]
	,[DimBank_4349602419228696364].[DimOrganizationID] AS [DimBankDimOrganizationID]
	,[DimBank_4349602419228696364].[Name] AS [DimBankName]
	,[DimBank_4349602419228696364].[SourceKey] AS [DimBankSourceKey]
	,[DimBank_4349602419228696364].[SupportsCredit] AS [DimBankSupportsCredit]
	,[DimBank_4349602419228696364].[SupportsDebit] AS [DimBankSupportsDebit]
	,[DimOrganization_4714097884663766213].[DimBusinessTypeID] AS [DimOrganizationDimBusinessTypeID]
	,[DimOrganization_4714097884663766213].[DimChannelID] AS [DimOrganizationDimChannelID]
	,[DimOrganization_4714097884663766213].[DimMerchantCategoryID] AS [DimOrganizationDimMerchantCategoryID]
	,[DimOrganization_4714097884663766213].[DimOrganizationSubscriptionStatusID] AS [DimOrganizationSubscriptionStatusID]
	,[DimOrganization_4714097884663766213].[DimOrganizationVerificationStatusID] AS [DimOrganizationVerificationStatusID]
	,[DimOrganization_4714097884663766213].[DimPagaAccountID] AS [DimOrganizationDimPagaAccountID]
	,[DimOrganization_4714097884663766213].[DisplayName] AS [DimOrganizationDisplayName]
	,[DimOrganization_4714097884663766213].[Name] AS [DimOrganizationName]
	,[DimOrganization_4714097884663766213].[OrganizationCode] AS [DimOrganizationOrganizationCode]
	,[DimOrganization_4714097884663766213].[RcName] AS [DimOrganizationRcName]
	,[DimOrganization_4714097884663766213].[ReferenceNumber] AS [DimOrganizationReferenceNumber]
	,[DimOrganization_4714097884663766213].[SourceKey] AS [DimOrganizationSourceKey]
	,[DimOrganization_4714097884663766213].[TaxIDNumber] AS [DimOrganizationTaxIDNumber]
	,[DimOrganization_4714097884663766213].[TextDesciption] AS [DimOrganizationTextDesciption]
	,[DimOrganization_4714097884663766213].[VATCertificationNumber] AS [DimOrganizationVATCertificationNumber]
	,[DimOrganization_4714097884663766213].[WebsiteURL] AS [DimOrganizationWebsiteURL]
	,[DimBusinessType_9130161546334797668].[Name] AS [DimBusinessTypeName]
	,[DimBusinessType_9130161546334797668].[SourceKey] AS [DimBusinessTypeSourceKey]
	,[DimChannel_1777908332590351568].[Name] AS [DimChannelName]
	,[DimChannel_1777908332590351568].[SourceKey] AS [DimChannelSourceKey]
	,[DimChannel_1777908332590351568].[TextDesciption] AS [DimChannelTextDesciption]
	,[DimOrganizationSubscriptionStatus_8633035042609791716].[Name] AS [DimOrganizationSubscriptionStatusName]
	,[DimOrganizationSubscriptionStatus_8633035042609791716].[SourceKey] AS [DimOrganizationSubscriptionStatusSourceKey]
	,[DimOrganizationVerificationStatus_873183846487268792].[Name] AS [DimOrganizationVerificationStatusName]
	,[DimOrganizationVerificationStatus_873183846487268792].[SourceKey] AS [DimOrganizationVerificationStatusSourceKey]
	,[DimCurrency_4677503920125390753].[ISOCode] AS [DimCurrencyISOCode]
	,[DimCurrency_4677503920125390753].[Name] AS [DimCurrencyName]
	,[DimCurrency_4677503920125390753].[SourceKey] AS [DimCurrencySourceKey]
	,[DimCurrency_4677503920125390753].[Symbol] AS [DimCurrencySymbol]
	,[DimFinancialAccountType_3881567826262423435].[DimGLCodeID] AS [DimFinancialAccountTypeDimGLCodeID]
	,[DimFinancialAccountType_3881567826262423435].[Name] AS [DimFinancialAccountTypeName]
	,[DimFinancialAccountType_3881567826262423435].[SourceKey] AS [DimFinancialAccountTypeSourceKey]
	,[DimFinancialAccountType_3881567826262423435].[TextDesciption] AS [DimFinancialAccountTypeTextDesciption]
	,[DimGLCode_6297516543257002500].[DimGLCodeSubGroupID] AS [DimGLCodeSubGroupID]
	,[DimGLCode_6297516543257002500].[GLCode] AS [DimGLCodeGLCode]
	,[DimGLCode_6297516543257002500].[IsNormalDebit] AS [DimGLCodeIsNormalDebit]
	,[DimGLCode_6297516543257002500].[Name] AS [DimGLCodeName]
	,[DimGLCode_6297516543257002500].[SourceKey] AS [DimGLCodeSourceKey]
	,[DimGLCode_6297516543257002500].[TextDesciption] AS [DimGLCodeTextDesciption]
	,[DimGLCodeSubGroup_6796418661287905673].[DimGLCodeGroupID] AS [DimGLCodeSubGroupDimGLCodeGroupID]
	,[DimGLCodeSubGroup_6796418661287905673].[GLCodeRange] AS [DimGLCodeSubGroupGLCodeRange]
	,[DimGLCodeSubGroup_6796418661287905673].[Name] AS [DimGLCodeSubGroupName]
	,[DimGLCodeSubGroup_6796418661287905673].[SourceKey] AS [DimGLCodeSubGroupSourceKey]
	,[DimGLCodeGroup_451899396352653528].[DimChartofAccountsID] AS [DimGLCodeGroupDimChartofAccountsID]
	,[DimGLCodeGroup_451899396352653528].[GLCodeRange] AS [DimGLCodeGroupGLCodeRange]
	,[DimGLCodeGroup_451899396352653528].[Name] AS [DimGLCodeGroupName]
	,[DimGLCodeGroup_451899396352653528].[SourceKey] AS [DimGLCodeGroupSourceKey]
	,[DimChartOfAccounts_1827048939649317877].[DimChartOfAccountsID] AS [DimChartOfAccountsID]
	,[DimChartOfAccounts_1827048939649317877].[GLCodeRange] AS [DimChartOfAccountsGLCodeRange]
	,[DimChartOfAccounts_1827048939649317877].[Name] AS [DimChartOfAccountsName]
	,[DimChartOfAccounts_1827048939649317877].[SourceKey] AS [DimChartOfAccountsSourceKey]
	,[DimFinancialHoldingAccount_8695639440075633573].[AccountNumber] AS [DimFinancialHoldingAccountAccountNumber]
	,[DimFinancialHoldingAccount_8695639440075633573].[Name] AS [DimFinancialHoldingAccountName]
	,[DimFinancialHoldingAccount_8695639440075633573].[OpeningBalance] AS [DimFinancialHoldingAccountOpeningBalance]
	,[DimFinancialHoldingAccount_8695639440075633573].[RestrictedBalance] AS [DimFinancialHoldingAccountRestrictedBalance]
	,[DimFinancialHoldingAccount_8695639440075633573].[SourceKey] AS [DimFinancialHoldingAccountSourceKey]
	,[DimFinancialHoldingAccount_8695639440075633573].[TotalBalance] AS [DimFinancialHoldingAccountTotalBalance]
	,[DimPagaAccount_8845679522549133637].[BankingStatus] AS [DimPagaAccountBankingStatus]
	,[DimPagaAccount_8845679522549133637].[CreatedDateID] AS [DimPagaAccountCreatedDateID]
	,[DimPagaAccount_8845679522549133637].[DimPagaAccountStatusID] AS [DimPagaAccountStatusID]
	,[DimPagaAccount_8845679522549133637].[ExternalAccountNumber] AS [DimPagaAccountExternalAccountNumber]
	,[DimPagaAccount_8845679522549133637].[hasOnlineAccount] AS [DimPagaAccounthasOnlineAccount]
	,[DimPagaAccount_8845679522549133637].[IsActive] AS [DimPagaAccountIsActive]
	,[DimPagaAccount_8845679522549133637].[IsAffiliate] AS [DimPagaAccountIsAffiliate]
	,[DimPagaAccount_8845679522549133637].[IsAgent] AS [DimPagaAccountIsAgent]
	,[DimPagaAccount_8845679522549133637].[IsBank] AS [DimPagaAccountIsBank]
	,[DimPagaAccount_8845679522549133637].[IsBusiness] AS [DimPagaAccountIsBusiness]
	,[DimPagaAccount_8845679522549133637].[IsCardProcessor] AS [DimPagaAccountIsCardProcessor]
	,[DimPagaAccount_8845679522549133637].[IsCashCollector] AS [DimPagaAccountIsCashCollector]
	,[DimPagaAccount_8845679522549133637].[IsCustomer] AS [DimPagaAccountIsCustomer]
	,[DimPagaAccount_8845679522549133637].[IsEnabled] AS [DimPagaAccountIsEnabled]
	,[DimPagaAccount_8845679522549133637].[IsMerchant] AS [DimPagaAccountIsMerchant]
	,[DimPagaAccount_8845679522549133637].[IsMobileOperator] AS [DimPagaAccountIsMobileOperator]
	,[DimPagaAccount_8845679522549133637].[IsPaga] AS [DimPagaAccountIsPaga]
	,[DimPagaAccount_8845679522549133637].[IsRemittanceProcessor] AS [DimPagaAccountIsRemittanceProcessor]
	,[DimPagaAccount_8845679522549133637].[IsServiceAggregator] AS [DimPagaAccountIsServiceAggregator]
	,[DimPagaAccount_8845679522549133637].[Name] AS [DimPagaAccountName]
	,[DimPagaAccount_8845679522549133637].[PagaAccountNumber] AS [DimPagaAccountPagaAccountNumber]
	,[DimPagaAccount_8845679522549133637].[RegistrationDateID] AS [DimPagaAccountRegistrationDateID]
	,[DimPagaAccount_8845679522549133637].[SourceKey] AS [DimPagaAccountSourceKey]
	,[DimPagaAccountStatus_5363005659559740896].[Name] AS [DimPagaAccountStatusName]
	,[DimPagaAccountStatus_5363005659559740896].[SourceKey] AS [DimPagaAccountStatusSourceKey]
FROM [Finance].[DimFinancialAccount] AS [DimFinancialAccount_5479953088314597640]

    JOIN [Finance].[DimBankAccount] AS [DimBankAccount_775377134276959563] 
    
    JOIN [Finance].[DimBank] AS [DimBank_4349602419228696364] 
    
    JOIN [Shared].[DimOrganization] AS [DimOrganization_4714097884663766213] 
    
    JOIN [Classification].[DimBusinessType] AS [DimBusinessType_9130161546334797668] 
    
        ON  [DimOrganization_4714097884663766213].[DimBusinessTypeID] = [DimBusinessType_9130161546334797668].[DimBusinessTypeID]

    JOIN [Activity].[DimChannel] AS [DimChannel_1777908332590351568] 
    
        ON  [DimOrganization_4714097884663766213].[DimChannelID] = [DimChannel_1777908332590351568].[DimChannelID]

    JOIN [Classification].[DimOrganizationSubscriptionStatus] AS [DimOrganizationSubscriptionStatus_8633035042609791716] 
    
        ON  [DimOrganization_4714097884663766213].[DimOrganizationSubscriptionStatusID] = [DimOrganizationSubscriptionStatus_8633035042609791716].[DimOrganizationSubscriptionStatusID]

    JOIN [Classification].[DimOrganizationVerificationStatus] AS [DimOrganizationVerificationStatus_873183846487268792] 
    
        ON  [DimOrganization_4714097884663766213].[DimOrganizationVerificationStatusID] = [DimOrganizationVerificationStatus_873183846487268792].[DimOrganizationVerificationStatusID]

        ON  [DimBank_4349602419228696364].[DimOrganizationID] = [DimOrganization_4714097884663766213].[DimOrganizationID]

        ON  [DimBankAccount_775377134276959563].[DimBankID] = [DimBank_4349602419228696364].[DimBankID]

        ON  [DimFinancialAccount_5479953088314597640].[DimBankAccountID] = [DimBankAccount_775377134276959563].[DimBankAccountID]

    JOIN [Finance].[DimCurrency] AS [DimCurrency_4677503920125390753] 
    
        ON  [DimFinancialAccount_5479953088314597640].[DimCurrencyID] = [DimCurrency_4677503920125390753].[DimCurrencyID]

    JOIN [Finance].[DimFinancialAccountType] AS [DimFinancialAccountType_3881567826262423435] 
    
    JOIN [Finance].[DimGLCode] AS [DimGLCode_6297516543257002500] 
    
    JOIN [Finance].[DimGLCodeSubGroup] AS [DimGLCodeSubGroup_6796418661287905673] 
    
    JOIN [Finance].[DimGLCodeGroup] AS [DimGLCodeGroup_451899396352653528] 
    
    JOIN [Finance].[DimChartOfAccounts] AS [DimChartOfAccounts_1827048939649317877] 
    
        ON  [DimGLCodeGroup_451899396352653528].[DimChartofAccountsID] = [DimChartOfAccounts_1827048939649317877].[DimChartOfAccountsID]

        ON  [DimGLCodeSubGroup_6796418661287905673].[DimGLCodeGroupID] = [DimGLCodeGroup_451899396352653528].[DimGLCodeGroupID]

        ON  [DimGLCode_6297516543257002500].[DimGLCodeSubGroupID] = [DimGLCodeSubGroup_6796418661287905673].[DimGLCodeSubGroupID]

        ON  [DimFinancialAccountType_3881567826262423435].[DimGLCodeID] = [DimGLCode_6297516543257002500].[DimGLCodeID]

        ON  [DimFinancialAccount_5479953088314597640].[DimFinancialAccountTypeID] = [DimFinancialAccountType_3881567826262423435].[DimFinancialAccountTypeID]

    LEFT JOIN [Finance].[DimFinancialHoldingAccount] AS [DimFinancialHoldingAccount_8695639440075633573] 
    
    ON  [DimFinancialAccount_5479953088314597640].[DimFinancialHoldingAccountID] = [DimFinancialHoldingAccount_8695639440075633573].[DimFinancialHoldingAccountID]
        

    JOIN [Shared].[DimPagaAccount] AS [DimPagaAccount_8845679522549133637] 
    
    JOIN [Classification].[DimPagaAccountStatus] AS [DimPagaAccountStatus_5363005659559740896] 
    
        ON  [DimPagaAccount_8845679522549133637].[DimPagaAccountStatusID] = [DimPagaAccountStatus_5363005659559740896].[DimPagaAccountStatusID]

        ON  [DimFinancialAccount_5479953088314597640].[DimPagaAccountID] = [DimPagaAccount_8845679522549133637].[DimPagaAccountID]
GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccountStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccountStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountRegistrationDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountRegistrationDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'RegistrationDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountRegistrationDateID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountRegistrationDateID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'RegistrationDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountRegistrationDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountPagaAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountPagaAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'PagaAccountNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountPagaAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountPagaAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'PagaAccountNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountPagaAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsServiceAggregator';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsServiceAggregator';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsServiceAggregator', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsServiceAggregator';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsServiceAggregator';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsRemittanceProcessor';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsRemittanceProcessor';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsRemittanceProcessor', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsRemittanceProcessor';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsRemittanceProcessor';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsPaga';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsPaga';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsPaga', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsPaga';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsPaga';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsMobileOperator';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsMobileOperator';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsMobileOperator', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsMobileOperator';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsMobileOperator';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsMerchant';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsMerchant';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsMerchant', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsMerchant';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsMerchant';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsEnabled', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'IsEnabled', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsCustomer';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsCustomer';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsCustomer', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsCustomer';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsCustomer';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsCashCollector';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsCashCollector';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsCashCollector', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsCashCollector';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsCashCollector';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsCardProcessor';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsCardProcessor';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsCardProcessor', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsCardProcessor';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsCardProcessor';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsBusiness';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsBusiness';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsBusiness', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsBusiness';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsBusiness';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsBank';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsBank';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsBank', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsBank';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsBank';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsAgent';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsAgent';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsAgent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsAgent';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsAgent';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsAffiliate';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsAffiliate';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsAffiliate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsAffiliate';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsAffiliate';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsActive';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsActive';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsActive', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsActive';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsActive';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'IsActive', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsActive';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccounthasOnlineAccount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccounthasOnlineAccount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'hasOnlineAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccounthasOnlineAccount';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccounthasOnlineAccount';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'hasOnlineAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccounthasOnlineAccount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountExternalAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountExternalAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ExternalAccountNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountExternalAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountExternalAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'ExternalAccountNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountExternalAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimPagaAccountStatusID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimPagaAccountStatusID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'CreatedDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountBankingStatus';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountBankingStatus';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'BankingStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountBankingStatus';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountBankingStatus';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'BankingStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountBankingStatus';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialHoldingAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialHoldingAccountTotalBalance';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialHoldingAccountTotalBalance';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'TotalBalance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialHoldingAccountTotalBalance';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialHoldingAccountTotalBalance';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialHoldingAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialHoldingAccountSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialHoldingAccountSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialHoldingAccountSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialHoldingAccountSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialHoldingAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialHoldingAccountRestrictedBalance';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialHoldingAccountRestrictedBalance';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'RestrictedBalance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialHoldingAccountRestrictedBalance';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialHoldingAccountRestrictedBalance';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialHoldingAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialHoldingAccountOpeningBalance';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialHoldingAccountOpeningBalance';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'OpeningBalance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialHoldingAccountOpeningBalance';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialHoldingAccountOpeningBalance';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialHoldingAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialHoldingAccountName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialHoldingAccountName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialHoldingAccountName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialHoldingAccountName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialHoldingAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialHoldingAccountAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialHoldingAccountAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'AccountNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialHoldingAccountAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialHoldingAccountAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimChartOfAccounts', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimChartOfAccountsSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimChartOfAccountsSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimChartOfAccountsSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimChartOfAccountsSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimChartOfAccounts', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimChartOfAccountsName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimChartOfAccountsName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimChartOfAccountsName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimChartOfAccountsName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimChartOfAccounts', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimChartOfAccountsGLCodeRange';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimChartOfAccountsGLCodeRange';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'GLCodeRange', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimChartOfAccountsGLCodeRange';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimChartOfAccountsGLCodeRange';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimChartOfAccounts', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimChartOfAccountsID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimChartOfAccountsID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimChartOfAccountsID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimChartOfAccountsID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimChartOfAccountsID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimGLCodeGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeGroupSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeGroupSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeGroupSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeGroupSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeGroupSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimGLCodeGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeGroupName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeGroupName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeGroupName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeGroupName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeGroupName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimGLCodeGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeGroupGLCodeRange';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeGroupGLCodeRange';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'GLCodeRange', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeGroupGLCodeRange';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeGroupGLCodeRange';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'GLCodeRange', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeGroupGLCodeRange';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimGLCodeGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeGroupDimChartofAccountsID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeGroupDimChartofAccountsID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimChartofAccountsID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeGroupDimChartofAccountsID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeGroupDimChartofAccountsID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimGLHeadingID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeGroupDimChartofAccountsID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimGLCodeSubGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeSubGroupSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeSubGroupSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeSubGroupSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeSubGroupSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeSubGroupSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimGLCodeSubGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeSubGroupName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeSubGroupName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeSubGroupName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeSubGroupName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeSubGroupName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimGLCodeSubGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeSubGroupGLCodeRange';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeSubGroupGLCodeRange';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'GLCodeRange', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeSubGroupGLCodeRange';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeSubGroupGLCodeRange';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'GLCodeRange', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeSubGroupGLCodeRange';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimGLCodeSubGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeSubGroupDimGLCodeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeSubGroupDimGLCodeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimGLCodeGroupID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeSubGroupDimGLCodeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeSubGroupDimGLCodeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimGLCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'TextDesciption', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'Description', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimGLCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimGLCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimGLCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeIsNormalDebit';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeIsNormalDebit';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsNormalDebit', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeIsNormalDebit';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeIsNormalDebit';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'IsNormalDebit', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeIsNormalDebit';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimGLCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeGLCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeGLCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'GLCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeGLCode';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeGLCode';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'GLCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeGLCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimGLCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeSubGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeSubGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimGLCodeSubGroupID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeSubGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeSubGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimGLCodeGroupID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeSubGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialAccountType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountTypeTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountTypeTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'TextDesciption', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountTypeTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountTypeTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialAccountType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialAccountType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialAccountType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountTypeDimGLCodeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountTypeDimGLCodeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimGLCodeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountTypeDimGLCodeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountTypeDimGLCodeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimCurrency', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimCurrencySymbol';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimCurrencySymbol';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Symbol', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimCurrencySymbol';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimCurrencySymbol';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'Symbol', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimCurrencySymbol';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimCurrency', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimCurrencySourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimCurrencySourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimCurrencySourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimCurrencySourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimCurrencySourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimCurrency', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimCurrencyName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimCurrencyName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimCurrencyName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimCurrencyName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimCurrencyName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimCurrency', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimCurrencyISOCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimCurrencyISOCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ISOCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimCurrencyISOCode';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimCurrencyISOCode';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'ISOCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimCurrencyISOCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationVerificationStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationVerificationStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationSubscriptionStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationSubscriptionStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimChannel', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimChannelTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimChannelTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'TextDesciption', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimChannelTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimChannelTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'Description', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimChannelTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimChannel', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimChannelSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimChannelSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimChannelSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimChannelSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimChannelSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimChannel', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimChannelName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimChannelName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimChannelName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimChannelName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimChannelName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimBusinessType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBusinessTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBusinessTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBusinessTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBusinessTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBusinessTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimBusinessType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBusinessTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBusinessTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBusinessTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBusinessTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBusinessTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationWebsiteURL';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationWebsiteURL';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'WebsiteURL', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationWebsiteURL';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationWebsiteURL';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'WebsiteURL', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationWebsiteURL';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationVATCertificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationVATCertificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'VATCertificationNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationVATCertificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationVATCertificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'VATCertificationNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationVATCertificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'TextDesciption', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'Description', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationTaxIDNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationTaxIDNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'TaxIDNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationTaxIDNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationTaxIDNumber';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'TaxIDNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationTaxIDNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ReferenceNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'ReferenceNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationRcName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationRcName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'RcName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationRcName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationRcName';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'RcName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationRcName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationOrganizationCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationOrganizationCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'OrganizationCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationOrganizationCode';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationOrganizationCode';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'OrganizationCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationOrganizationCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationDisplayName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationDisplayName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DisplayName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationDisplayName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationDisplayName';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DisplayName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationDisplayName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimPagaAccountID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationVerificationStatusID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimOrganizationVerificationStatusID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationSubscriptionStatusID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimOrganizationSubscriptionStatusID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimMerchantCategoryID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimMerchantCategoryID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimMerchantCategoryID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimMerchantCategoryID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimMerchantCategoryID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimChannelID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimBusinessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimBusinessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimBusinessTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimBusinessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimBusinessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimBusinessTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimBusinessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimBank', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankSupportsDebit';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankSupportsDebit';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SupportsDebit', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankSupportsDebit';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankSupportsDebit';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'SupportsDebit', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankSupportsDebit';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimBank', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankSupportsCredit';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankSupportsCredit';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SupportsCredit', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankSupportsCredit';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankSupportsCredit';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'SupportsCredit', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankSupportsCredit';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimBank', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimBank', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimBank', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankDimOrganizationID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankDimOrganizationID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankDimOrganizationID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankDimOrganizationID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimOrganizationID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankDimOrganizationID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimBank', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankBankAccountLinkType';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankBankAccountLinkType';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'BankAccountLinkType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankBankAccountLinkType';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankBankAccountLinkType';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'BankAccountLinkType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankBankAccountLinkType';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimBankAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountTransactionLimit';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountTransactionLimit';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'TransactionLimit', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountTransactionLimit';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountTransactionLimit';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'TransactionLimit', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountTransactionLimit';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimBankAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'TextDesciption', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'Description', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimBankAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimBankAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimBankAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountMobilePhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountMobilePhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'MobilePhoneNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountMobilePhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountMobilePhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'MobilePhoneNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountMobilePhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimBankAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountKYC_Rating';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountKYC_Rating';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'KYC_Rating', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountKYC_Rating';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountKYC_Rating';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'KYC_Rating', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountKYC_Rating';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimBankAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsEnabled', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'IsEnabled', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimBankAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountDurationLimitSeconds';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountDurationLimitSeconds';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DurationLimitSeconds', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountDurationLimitSeconds';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountDurationLimitSeconds';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DurationLimitSeconds', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountDurationLimitSeconds';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimBankAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountDurationLimit';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountDurationLimit';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DurationLimit', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountDurationLimit';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountDurationLimit';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DurationLimit', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountDurationLimit';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimBankAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountDimBankID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountDimBankID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimBankID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountDimBankID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountDimBankID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimBankID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountDimBankID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimBankAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountBranchName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountBranchName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'BranchName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountBranchName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountBranchName';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'BranchName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountBranchName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimBankAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountBankAccountLinkStatusType';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountBankAccountLinkStatusType';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'BankAccountLinkStatusType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountBankAccountLinkStatusType';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountBankAccountLinkStatusType';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'BankAccountLinkStatusType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountBankAccountLinkStatusType';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimBankAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountBankAccountLinkStatusComment';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountBankAccountLinkStatusComment';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'BankAccountLinkStatusComment', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountBankAccountLinkStatusComment';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountBankAccountLinkStatusComment';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'BankAccountLinkStatusComment', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountBankAccountLinkStatusComment';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimBankAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'AccountNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'AccountNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimBankAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountAccountLinkIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountAccountLinkIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'AccountLinkIdentifier', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountAccountLinkIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountAccountLinkIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'AccountLinkIdentifier', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountAccountLinkIdentifier';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimBankAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountAccountHolderName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountAccountHolderName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'AccountHolderName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountAccountHolderName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountAccountHolderName';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'AccountHolderName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountAccountHolderName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimBankAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountAccountAlias';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountAccountAlias';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'AccountAlias', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountAccountAlias';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountAccountAlias';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'AccountAlias', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountAccountAlias';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountTotalBalance';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountTotalBalance';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'TotalBalance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountTotalBalance';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountTotalBalance';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountRestrictedBalance';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountRestrictedBalance';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'RestrictedBalance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountRestrictedBalance';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountRestrictedBalance';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountOpeningBalance';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountOpeningBalance';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'OpeningBalance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountOpeningBalance';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountOpeningBalance';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimPagaAccountID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountDimFinancialHoldingAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountDimFinancialHoldingAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimFinancialHoldingAccountID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountDimFinancialHoldingAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountDimFinancialHoldingAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimFinancialAccountTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimFinancialAccountID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountDimCurrencyID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountDimCurrencyID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimCurrencyID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountDimCurrencyID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountDimCurrencyID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountDimBankAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountDimBankAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimBankAccountID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountDimBankAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountDimBankAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'AccountNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountAccountNumber';

