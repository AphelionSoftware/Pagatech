  

CREATE VIEW [OLAP].[DimFinancialAccount]
AS

SELECT 
	[DimFinancialAccount_5479953088314597640].[AccountNumber] AS [DimFinancialAccountAccountNumber]
	,[DimFinancialAccount_5479953088314597640].[Code] AS [DimFinancialAccountCode]
	,[DimFinancialAccount_5479953088314597640].[DimBankAccountID] AS [DimFinancialAccountDimBankAccountID]
	,[DimFinancialAccount_5479953088314597640].[DimCurrencyID] AS [DimFinancialAccountDimCurrencyID]
	,[DimFinancialAccount_5479953088314597640].[DimFinancialAccountID] AS [DimFinancialAccountID]
	,[DimFinancialAccount_5479953088314597640].[DimFinancialHoldingAccountID] AS [DimFinancialAccountDimFinancialHoldingAccountID]
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
	,[DimBankAccount_775377134276959563].[Code] AS [DimBankAccountCode]
	,[DimBankAccount_775377134276959563].[Description] AS [DimBankAccountDescription]
	,[DimBankAccount_775377134276959563].[DimBankID] AS [DimBankAccountDimBankID]
	,[DimBankAccount_775377134276959563].[DurationLimit] AS [DimBankAccountDurationLimit]
	,[DimBankAccount_775377134276959563].[DurationLimitSeconds] AS [DimBankAccountDurationLimitSeconds]
	,[DimBankAccount_775377134276959563].[IsEnabled] AS [DimBankAccountIsEnabled]
	,[DimBankAccount_775377134276959563].[KYC_Rating] AS [DimBankAccountKYC_Rating]
	,[DimBankAccount_775377134276959563].[MobilePhoneNumber] AS [DimBankAccountMobilePhoneNumber]
	,[DimBankAccount_775377134276959563].[Name] AS [DimBankAccountName]
	,[DimBankAccount_775377134276959563].[SourceKey] AS [DimBankAccountSourceKey]
	,[DimBankAccount_775377134276959563].[TransactionLimit] AS [DimBankAccountTransactionLimit]
	,[DimBank_4349602419228696364].[BankAccountLinkType] AS [DimBankBankAccountLinkType]
	,[DimBank_4349602419228696364].[Code] AS [DimBankCode]
	,[DimBank_4349602419228696364].[DimOrganizationID] AS [DimBankDimOrganizationID]
	,[DimBank_4349602419228696364].[Name] AS [DimBankName]
	,[DimBank_4349602419228696364].[SourceKey] AS [DimBankSourceKey]
	,[DimBank_4349602419228696364].[SupportsCredit] AS [DimBankSupportsCredit]
	,[DimBank_4349602419228696364].[SupportsDebit] AS [DimBankSupportsDebit]
	,[DimOrganization_4714097884663766213].[Code] AS [DimOrganizationCode]
	,[DimOrganization_4714097884663766213].[Description] AS [DimOrganizationDescription]
	,[DimOrganization_4714097884663766213].[DimBusinessTypeID] AS [DimOrganizationDimBusinessTypeID]
	,[DimOrganization_4714097884663766213].[DimMerchantPagaAccountID] AS [DimOrganizationDimMerchantPagaAccountID]
	,[DimOrganization_4714097884663766213].[DimOrganizationSubscriptionStatusID] AS [DimOrganizationSubscriptionStatusID]
	,[DimOrganization_4714097884663766213].[DimOrganizationVerificationStatusID] AS [DimOrganizationVerificationStatusID]
	,[DimOrganization_4714097884663766213].[DisplayName] AS [DimOrganizationDisplayName]
	,[DimOrganization_4714097884663766213].[Name] AS [DimOrganizationName]
	,[DimOrganization_4714097884663766213].[OrganizationCode] AS [DimOrganizationOrganizationCode]
	,[DimOrganization_4714097884663766213].[RcName] AS [DimOrganizationRcName]
	,[DimOrganization_4714097884663766213].[ReferenceNumber] AS [DimOrganizationReferenceNumber]
	,[DimOrganization_4714097884663766213].[SourceKey] AS [DimOrganizationSourceKey]
	,[DimOrganization_4714097884663766213].[TaxIDNumber] AS [DimOrganizationTaxIDNumber]
	,[DimOrganization_4714097884663766213].[VATCertificationNumber] AS [DimOrganizationVATCertificationNumber]
	,[DimOrganization_4714097884663766213].[WebsiteURL] AS [DimOrganizationWebsiteURL]
	,[DimBusinessType_9130161546334797668].[Name] AS [DimBusinessTypeName]
	,[DimBusinessType_9130161546334797668].[SourceKey] AS [DimBusinessTypeSourceKey]
	,[DimMerchantPagaAccount_6118195557670189290].[BankingStatus] AS [DimMerchantPagaAccountBankingStatus]
	,[DimMerchantPagaAccount_6118195557670189290].[Code] AS [DimMerchantPagaAccountCode]
	,[DimMerchantPagaAccount_6118195557670189290].[DimDealerID] AS [DimMerchantPagaAccountDimDealerID]
	,[DimMerchantPagaAccount_6118195557670189290].[DimPagaAccountStatusID] AS [DimMerchantPagaAccountDimPagaAccountStatusID]
	,[DimMerchantPagaAccount_6118195557670189290].[DimPagaAccountUserTypeID] AS [DimMerchantPagaAccountDimPagaAccountUserTypeID]
	,[DimMerchantPagaAccount_6118195557670189290].[ExternalAccountNumber] AS [DimMerchantPagaAccountExternalAccountNumber]
	,[DimMerchantPagaAccount_6118195557670189290].[hasOnlineAccount] AS [DimMerchantPagaAccounthasOnlineAccount]
	,[DimMerchantPagaAccount_6118195557670189290].[IsActive] AS [DimMerchantPagaAccountIsActive]
	,[DimMerchantPagaAccount_6118195557670189290].[IsEnabled] AS [DimMerchantPagaAccountIsEnabled]
	,[DimMerchantPagaAccount_6118195557670189290].[Name] AS [DimMerchantPagaAccountName]
	,[DimMerchantPagaAccount_6118195557670189290].[PagaAccountNumber] AS [DimMerchantPagaAccountPagaAccountNumber]
	,[DimMerchantPagaAccount_6118195557670189290].[SourceKey] AS [DimMerchantPagaAccountSourceKey]
	,[DimDealer_6154864251516054895].[Code] AS [DimDealerCode]
	,[DimDealer_6154864251516054895].[DimRoleID] AS [DimDealerDimRoleID]
	,[DimDealer_6154864251516054895].[Email] AS [DimDealerEmail]
	,[DimDealer_6154864251516054895].[FirstName] AS [DimDealerFirstName]
	,[DimDealer_6154864251516054895].[IsEnabled] AS [DimDealerIsEnabled]
	,[DimDealer_6154864251516054895].[LastName] AS [DimDealerLastName]
	,[DimDealer_6154864251516054895].[MiddleName] AS [DimDealerMiddleName]
	,[DimDealer_6154864251516054895].[Name] AS [DimDealerName]
	,[DimDealer_6154864251516054895].[PhoneNumber] AS [DimDealerPhoneNumber]
	,[DimDealer_6154864251516054895].[Sex] AS [DimDealerSex]
	,[DimDealer_6154864251516054895].[SourceKey] AS [DimDealerSourceKey]
	,[DimRole_3279364310370414610].[Code] AS [DimRoleCode]
	,[DimRole_3279364310370414610].[Description] AS [DimRoleDescription]
	,[DimRole_3279364310370414610].[Name] AS [DimRoleName]
	,[DimRole_3279364310370414610].[SourceKey] AS [DimRoleSourceKey]
	,[DimPagaAccountStatus_46175522557615117].[Name] AS [DimPagaAccountStatusName]
	,[DimPagaAccountStatus_46175522557615117].[SourceKey] AS [DimPagaAccountStatusSourceKey]
	,[DimPagaAccountUserType_8449387538462939919].[Description] AS [DimPagaAccountUserTypeDescription]
	,[DimPagaAccountUserType_8449387538462939919].[Name] AS [DimPagaAccountUserTypeName]
	,[DimPagaAccountUserType_8449387538462939919].[SourceKey] AS [DimPagaAccountUserTypeSourceKey]
	,[DimOrganizationSubscriptionStatus_8633035042609791716].[Name] AS [DimOrganizationSubscriptionStatusName]
	,[DimOrganizationSubscriptionStatus_8633035042609791716].[SourceKey] AS [DimOrganizationSubscriptionStatusSourceKey]
	,[DimOrganizationVerificationStatus_873183846487268792].[Name] AS [DimOrganizationVerificationStatusName]
	,[DimOrganizationVerificationStatus_873183846487268792].[SourceKey] AS [DimOrganizationVerificationStatusSourceKey]
	,[DimCurrency_4677503920125390753].[Code] AS [DimCurrencyCode]
	,[DimCurrency_4677503920125390753].[ISOCode] AS [DimCurrencyISOCode]
	,[DimCurrency_4677503920125390753].[Name] AS [DimCurrencyName]
	,[DimCurrency_4677503920125390753].[SourceKey] AS [DimCurrencySourceKey]
	,[DimCurrency_4677503920125390753].[Symbol] AS [DimCurrencySymbol]
	,[DimFinancialHoldingAccount_8695639440075633573].[AccountNumber] AS [DimFinancialHoldingAccountAccountNumber]
	,[DimFinancialHoldingAccount_8695639440075633573].[Code] AS [DimFinancialHoldingAccountCode]
	,[DimFinancialHoldingAccount_8695639440075633573].[DimBankAccountID] AS [DimFinancialHoldingAccountDimBankAccountID]
	,[DimFinancialHoldingAccount_8695639440075633573].[DimCurrencyID] AS [DimFinancialHoldingAccountDimCurrencyID]
	,[DimFinancialHoldingAccount_8695639440075633573].[DimFinancialAccountTypeID] AS [DimFinancialHoldingAccountDimFinancialAccountTypeID]
	,[DimFinancialHoldingAccount_8695639440075633573].[Name] AS [DimFinancialHoldingAccountName]
	,[DimFinancialHoldingAccount_8695639440075633573].[OpeningBalance] AS [DimFinancialHoldingAccountOpeningBalance]
	,[DimFinancialHoldingAccount_8695639440075633573].[RestrictedBalance] AS [DimFinancialHoldingAccountRestrictedBalance]
	,[DimFinancialHoldingAccount_8695639440075633573].[SourceKey] AS [DimFinancialHoldingAccountSourceKey]
	,[DimFinancialHoldingAccount_8695639440075633573].[TotalBalance] AS [DimFinancialHoldingAccountTotalBalance]
	,[DimFinancialAccountType_1556043497441462480].[Code] AS [DimFinancialAccountTypeCode]
	,[DimFinancialAccountType_1556043497441462480].[Description] AS [DimFinancialAccountTypeDescription]
	,[DimFinancialAccountType_1556043497441462480].[DimGLCodeID] AS [DimFinancialAccountTypeDimGLCodeID]
	,[DimFinancialAccountType_1556043497441462480].[Name] AS [DimFinancialAccountTypeName]
	,[DimFinancialAccountType_1556043497441462480].[SourceKey] AS [DimFinancialAccountTypeSourceKey]
	,[DimGLCode_7919271736353563679].[Code] AS [DimGLCodeCode]
	,[DimGLCode_7919271736353563679].[Description] AS [DimGLCodeDescription]
	,[DimGLCode_7919271736353563679].[DimGLCodeGroupID] AS [DimGLCodeGroupID]
	,[DimGLCode_7919271736353563679].[GLCode] AS [DimGLCodeGLCode]
	,[DimGLCode_7919271736353563679].[IsNormalDebit] AS [DimGLCodeIsNormalDebit]
	,[DimGLCode_7919271736353563679].[Name] AS [DimGLCodeName]
	,[DimGLCode_7919271736353563679].[SourceKey] AS [DimGLCodeSourceKey]
	,[DimGLCodeGroup_8272746684754739664].[Code] AS [DimGLCodeGroupCode]
	,[DimGLCodeGroup_8272746684754739664].[DimChartofAccountsID] AS [DimGLCodeGroupDimChartofAccountsID]
	,[DimGLCodeGroup_8272746684754739664].[GLCodeRange] AS [DimGLCodeGroupGLCodeRange]
	,[DimGLCodeGroup_8272746684754739664].[Name] AS [DimGLCodeGroupName]
	,[DimGLCodeGroup_8272746684754739664].[SourceKey] AS [DimGLCodeGroupSourceKey]
	,[DimChartOfAccounts_5155107035827169715].[Code] AS [DimChartOfAccountsCode]
	,[DimChartOfAccounts_5155107035827169715].[DimChartOfAccountsID] AS [DimChartOfAccountsID]
	,[DimChartOfAccounts_5155107035827169715].[GLCodeRange] AS [DimChartOfAccountsGLCodeRange]
	,[DimChartOfAccounts_5155107035827169715].[Name] AS [DimChartOfAccountsName]
	,[DimChartOfAccounts_5155107035827169715].[SourceKey] AS [DimChartOfAccountsSourceKey]
FROM [Finance].[DimFinancialAccount] AS [DimFinancialAccount_5479953088314597640]

    JOIN [Finance].[DimBankAccount] AS [DimBankAccount_775377134276959563] 
    
    JOIN [Finance].[DimBank] AS [DimBank_4349602419228696364] 
    
    JOIN [Shared].[DimOrganization] AS [DimOrganization_4714097884663766213] 
    
    JOIN [Classification].[DimBusinessType] AS [DimBusinessType_9130161546334797668] 
    
        ON  [DimOrganization_4714097884663766213].[DimBusinessTypeID] = [DimBusinessType_9130161546334797668].[DimBusinessTypeID]

    JOIN [Shared].[DimMerchantPagaAccount] AS [DimMerchantPagaAccount_6118195557670189290] 
    
    JOIN [Shared].[DimDealer] AS [DimDealer_6154864251516054895] 
    
    JOIN [Shared].[DimRole] AS [DimRole_3279364310370414610] 
    
        ON  [DimDealer_6154864251516054895].[DimRoleID] = [DimRole_3279364310370414610].[DimRoleID]

        ON  [DimMerchantPagaAccount_6118195557670189290].[DimDealerID] = [DimDealer_6154864251516054895].[DimDealerID]

    JOIN [Classification].[DimPagaAccountStatus] AS [DimPagaAccountStatus_46175522557615117] 
    
        ON  [DimMerchantPagaAccount_6118195557670189290].[DimPagaAccountStatusID] = [DimPagaAccountStatus_46175522557615117].[DimPagaAccountStatusID]

    JOIN [Classification].[DimPagaAccountUserType] AS [DimPagaAccountUserType_8449387538462939919] 
    
        ON  [DimMerchantPagaAccount_6118195557670189290].[DimPagaAccountUserTypeID] = [DimPagaAccountUserType_8449387538462939919].[DimPagaAccountUserTypeID]

        ON  [DimOrganization_4714097884663766213].[DimMerchantPagaAccountID] = [DimMerchantPagaAccount_6118195557670189290].[DimMerchantPagaAccountID]

    JOIN [Classification].[DimOrganizationSubscriptionStatus] AS [DimOrganizationSubscriptionStatus_8633035042609791716] 
    
        ON  [DimOrganization_4714097884663766213].[DimOrganizationSubscriptionStatusID] = [DimOrganizationSubscriptionStatus_8633035042609791716].[DimOrganizationSubscriptionStatusID]

    JOIN [Classification].[DimOrganizationVerificationStatus] AS [DimOrganizationVerificationStatus_873183846487268792] 
    
        ON  [DimOrganization_4714097884663766213].[DimOrganizationVerificationStatusID] = [DimOrganizationVerificationStatus_873183846487268792].[DimOrganizationVerificationStatusID]

        ON  [DimBank_4349602419228696364].[DimOrganizationID] = [DimOrganization_4714097884663766213].[DimOrganizationID]

        ON  [DimBankAccount_775377134276959563].[DimBankID] = [DimBank_4349602419228696364].[DimBankID]

        ON  [DimFinancialAccount_5479953088314597640].[DimBankAccountID] = [DimBankAccount_775377134276959563].[DimBankAccountID]

    JOIN [Finance].[DimCurrency] AS [DimCurrency_4677503920125390753] 
    
        ON  [DimFinancialAccount_5479953088314597640].[DimCurrencyID] = [DimCurrency_4677503920125390753].[DimCurrencyID]

    LEFT JOIN [Finance].[DimFinancialHoldingAccount] AS [DimFinancialHoldingAccount_8695639440075633573] 
    
    JOIN [Finance].[DimBankAccount] AS [DimBankAccount_1082298246317360424] 
    
    JOIN [Finance].[DimBank] AS [DimBank_7273385373698617489] 
    
    JOIN [Shared].[DimOrganization] AS [DimOrganization_5992786877015671256] 
    
    JOIN [Classification].[DimBusinessType] AS [DimBusinessType_8791537523546565895] 
    
        ON  [DimOrganization_5992786877015671256].[DimBusinessTypeID] = [DimBusinessType_8791537523546565895].[DimBusinessTypeID]

    JOIN [Shared].[DimMerchantPagaAccount] AS [DimMerchantPagaAccount_5350511574349216735] 
    
    JOIN [Shared].[DimDealer] AS [DimDealer_4706814494623462782] 
    
    JOIN [Shared].[DimRole] AS [DimRole_2525946419161583255] 
    
        ON  [DimDealer_4706814494623462782].[DimRoleID] = [DimRole_2525946419161583255].[DimRoleID]

        ON  [DimMerchantPagaAccount_5350511574349216735].[DimDealerID] = [DimDealer_4706814494623462782].[DimDealerID]

    JOIN [Classification].[DimPagaAccountStatus] AS [DimPagaAccountStatus_6143088209574676460] 
    
        ON  [DimMerchantPagaAccount_5350511574349216735].[DimPagaAccountStatusID] = [DimPagaAccountStatus_6143088209574676460].[DimPagaAccountStatusID]

    JOIN [Classification].[DimPagaAccountUserType] AS [DimPagaAccountUserType_7109968441136591774] 
    
        ON  [DimMerchantPagaAccount_5350511574349216735].[DimPagaAccountUserTypeID] = [DimPagaAccountUserType_7109968441136591774].[DimPagaAccountUserTypeID]

        ON  [DimOrganization_5992786877015671256].[DimMerchantPagaAccountID] = [DimMerchantPagaAccount_5350511574349216735].[DimMerchantPagaAccountID]

    JOIN [Classification].[DimOrganizationSubscriptionStatus] AS [DimOrganizationSubscriptionStatus_8346283605277906257] 
    
        ON  [DimOrganization_5992786877015671256].[DimOrganizationSubscriptionStatusID] = [DimOrganizationSubscriptionStatus_8346283605277906257].[DimOrganizationSubscriptionStatusID]

    JOIN [Classification].[DimOrganizationVerificationStatus] AS [DimOrganizationVerificationStatus_1920158402930460179] 
    
        ON  [DimOrganization_5992786877015671256].[DimOrganizationVerificationStatusID] = [DimOrganizationVerificationStatus_1920158402930460179].[DimOrganizationVerificationStatusID]

        ON  [DimBank_7273385373698617489].[DimOrganizationID] = [DimOrganization_5992786877015671256].[DimOrganizationID]

        ON  [DimBankAccount_1082298246317360424].[DimBankID] = [DimBank_7273385373698617489].[DimBankID]

        ON  [DimFinancialHoldingAccount_8695639440075633573].[DimBankAccountID] = [DimBankAccount_1082298246317360424].[DimBankAccountID]

    JOIN [Finance].[DimCurrency] AS [DimCurrency_469159563065019412] 
    
        ON  [DimFinancialHoldingAccount_8695639440075633573].[DimCurrencyID] = [DimCurrency_469159563065019412].[DimCurrencyID]

    JOIN [Finance].[DimFinancialAccountType] AS [DimFinancialAccountType_1556043497441462480] 
    
    JOIN [Finance].[DimGLCode] AS [DimGLCode_7919271736353563679] 
    
    JOIN [Finance].[DimGLCodeGroup] AS [DimGLCodeGroup_8272746684754739664] 
    
    JOIN [Finance].[DimChartOfAccounts] AS [DimChartOfAccounts_5155107035827169715] 
    
        ON  [DimGLCodeGroup_8272746684754739664].[DimChartofAccountsID] = [DimChartOfAccounts_5155107035827169715].[DimChartOfAccountsID]

        ON  [DimGLCode_7919271736353563679].[DimGLCodeGroupID] = [DimGLCodeGroup_8272746684754739664].[DimGLCodeGroupID]

        ON  [DimFinancialAccountType_1556043497441462480].[DimGLCodeID] = [DimGLCode_7919271736353563679].[DimGLCodeID]

        ON  [DimFinancialHoldingAccount_8695639440075633573].[DimFinancialAccountTypeID] = [DimFinancialAccountType_1556043497441462480].[DimFinancialAccountTypeID]

    ON  [DimFinancialAccount_5479953088314597640].[DimFinancialHoldingAccountID] = [DimFinancialHoldingAccount_8695639440075633573].[DimFinancialHoldingAccountID]
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
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimChartOfAccounts', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimChartOfAccountsCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimChartOfAccountsCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Code', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimChartOfAccountsCode';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimChartOfAccountsCode';


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
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimGLCodeGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeGroupCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeGroupCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Code', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeGroupCode';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeGroupCode';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeGroupCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimGLCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimGLCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimGLCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeIsNormalDebit';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeIsNormalDebit';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsNormalDebit', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeIsNormalDebit';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeIsNormalDebit';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'IsNormalDebit', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeIsNormalDebit';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimGLCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeGLCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeGLCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'GLCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeGLCode';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeGLCode';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'GLCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeGLCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimGLCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimGLCodeGroupID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimGLCodeGroupID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimGLCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeDescription';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeDescription';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Description', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeDescription';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeDescription';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'Description', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeDescription';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimGLCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Code', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeCode';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeCode';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimGLCodeCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialAccountType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialAccountType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialAccountType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountTypeDimGLCodeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountTypeDimGLCodeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimGLCodeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountTypeDimGLCodeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountTypeDimGLCodeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialAccountType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountTypeDescription';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountTypeDescription';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Description', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountTypeDescription';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountTypeDescription';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialAccountType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountTypeCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountTypeCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Code', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountTypeCode';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountTypeCode';


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
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialHoldingAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialHoldingAccountDimFinancialAccountTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialHoldingAccountDimFinancialAccountTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimFinancialAccountTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialHoldingAccountDimFinancialAccountTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialHoldingAccountDimFinancialAccountTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialHoldingAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialHoldingAccountDimCurrencyID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialHoldingAccountDimCurrencyID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimCurrencyID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialHoldingAccountDimCurrencyID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialHoldingAccountDimCurrencyID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialHoldingAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialHoldingAccountDimBankAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialHoldingAccountDimBankAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimBankAccountID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialHoldingAccountDimBankAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialHoldingAccountDimBankAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialHoldingAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialHoldingAccountCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialHoldingAccountCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Code', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialHoldingAccountCode';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialHoldingAccountCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialHoldingAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialHoldingAccountAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialHoldingAccountAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'AccountNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialHoldingAccountAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialHoldingAccountAccountNumber';


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
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimCurrency', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimCurrencyCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimCurrencyCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Code', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimCurrencyCode';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimCurrencyCode';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimCurrencyCode';


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
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccountUserType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountUserTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountUserTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountUserTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountUserTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountUserTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccountUserType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountUserTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountUserTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountUserTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountUserTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountUserTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccountUserType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountUserTypeDescription';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountUserTypeDescription';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Description', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountUserTypeDescription';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountUserTypeDescription';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'Description', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountUserTypeDescription';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccountStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccountStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimRole', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimRoleSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimRoleSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimRoleSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimRoleSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'6', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimRoleSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimRole', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimRoleName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimRoleName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimRoleName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimRoleName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'6', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimRoleName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimRole', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimRoleDescription';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimRoleDescription';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Description', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimRoleDescription';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'6', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimRoleDescription';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'Description', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimRoleDescription';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimRole', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimRoleCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimRoleCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Code', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimRoleCode';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimRoleCode';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'6', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimRoleCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDealer', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimDealerSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimDealerSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimDealerSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimDealerSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDealer', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimDealerSex';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimDealerSex';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Sex', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimDealerSex';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimDealerSex';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDealer', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimDealerPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimDealerPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'PhoneNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimDealerPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimDealerPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDealer', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimDealerName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimDealerName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimDealerName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimDealerName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDealer', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimDealerMiddleName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimDealerMiddleName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'MiddleName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimDealerMiddleName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimDealerMiddleName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDealer', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimDealerLastName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimDealerLastName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'LastName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimDealerLastName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimDealerLastName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDealer', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimDealerIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimDealerIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsEnabled', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimDealerIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimDealerIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDealer', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimDealerFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimDealerFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FirstName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimDealerFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimDealerFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDealer', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimDealerEmail';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimDealerEmail';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Email', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimDealerEmail';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimDealerEmail';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDealer', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimDealerDimRoleID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimDealerDimRoleID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimRoleID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimDealerDimRoleID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimDealerDimRoleID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDealer', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimDealerCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimDealerCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Code', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimDealerCode';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimDealerCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimMerchantPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimMerchantPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountPagaAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountPagaAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'PagaAccountNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountPagaAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountPagaAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimMerchantPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimMerchantPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsEnabled', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimMerchantPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountIsActive';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountIsActive';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsActive', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountIsActive';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountIsActive';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimMerchantPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccounthasOnlineAccount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccounthasOnlineAccount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'hasOnlineAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccounthasOnlineAccount';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccounthasOnlineAccount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimMerchantPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountExternalAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountExternalAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ExternalAccountNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountExternalAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountExternalAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimMerchantPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountDimPagaAccountUserTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountDimPagaAccountUserTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimPagaAccountUserTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountDimPagaAccountUserTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountDimPagaAccountUserTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimMerchantPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountDimPagaAccountStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountDimPagaAccountStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimPagaAccountStatusID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountDimPagaAccountStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountDimPagaAccountStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimMerchantPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountDimDealerID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountDimDealerID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimDealerID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountDimDealerID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountDimDealerID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimMerchantPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Code', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountCode';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimMerchantPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountBankingStatus';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountBankingStatus';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'BankingStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountBankingStatus';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimMerchantPagaAccountBankingStatus';


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
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimMerchantPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimMerchantPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimMerchantPagaAccountID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimMerchantPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimMerchantPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimPagaAccountID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimMerchantPagaAccountID';


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
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationDescription';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationDescription';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Description', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationDescription';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationDescription';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'Description', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationDescription';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Code', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationCode';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationCode';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimOrganizationCode';


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
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimBank', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Code', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankCode';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankCode';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankCode';


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
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimBankAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountDescription';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountDescription';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Description', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountDescription';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountDescription';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'Description', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountDescription';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimBankAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Code', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountCode';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountCode';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimBankAccountCode';


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
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountDimFinancialHoldingAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountDimFinancialHoldingAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimFinancialHoldingAccountID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountDimFinancialHoldingAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountDimFinancialHoldingAccountID';


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
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Code', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountCode';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'AccountNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimFinancialAccount', @level2type = N'COLUMN', @level2name = N'DimFinancialAccountAccountNumber';

