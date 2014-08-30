  

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
	,[DimBusinessType_9130161546334797668].[Code] AS [DimBusinessTypeCode]
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
	,[DimPagaAccountStatus_46175522557615117].[Code] AS [DimPagaAccountStatusCode]
	,[DimPagaAccountStatus_46175522557615117].[Name] AS [DimPagaAccountStatusName]
	,[DimPagaAccountStatus_46175522557615117].[SourceKey] AS [DimPagaAccountStatusSourceKey]
	,[DimPagaAccountUserType_8449387538462939919].[Code] AS [DimPagaAccountUserTypeCode]
	,[DimPagaAccountUserType_8449387538462939919].[Description] AS [DimPagaAccountUserTypeDescription]
	,[DimPagaAccountUserType_8449387538462939919].[Name] AS [DimPagaAccountUserTypeName]
	,[DimPagaAccountUserType_8449387538462939919].[SourceKey] AS [DimPagaAccountUserTypeSourceKey]
	,[DimOrganizationSubscriptionStatus_8633035042609791716].[Code] AS [DimOrganizationSubscriptionStatusCode]
	,[DimOrganizationSubscriptionStatus_8633035042609791716].[Name] AS [DimOrganizationSubscriptionStatusName]
	,[DimOrganizationSubscriptionStatus_8633035042609791716].[SourceKey] AS [DimOrganizationSubscriptionStatusSourceKey]
	,[DimOrganizationVerificationStatus_873183846487268792].[Code] AS [DimOrganizationVerificationStatusCode]
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
	,[DimGLCodeGroup_8272746684754739664].[DimGLHeadingID] AS [DimGLCodeGroupDimGLHeadingID]
	,[DimGLCodeGroup_8272746684754739664].[GLCodeRange] AS [DimGLCodeGroupGLCodeRange]
	,[DimGLCodeGroup_8272746684754739664].[Name] AS [DimGLCodeGroupName]
	,[DimGLCodeGroup_8272746684754739664].[SourceKey] AS [DimGLCodeGroupSourceKey]
	,[DimGLHeading_4157285151552775443].[Code] AS [DimGLHeadingCode]
	,[DimGLHeading_4157285151552775443].[DimChartOfAccountsID] AS [DimGLHeadingDimChartOfAccountsID]
	,[DimGLHeading_4157285151552775443].[GLCodeRange] AS [DimGLHeadingGLCodeRange]
	,[DimGLHeading_4157285151552775443].[Name] AS [DimGLHeadingName]
	,[DimGLHeading_4157285151552775443].[SourceKey] AS [DimGLHeadingSourceKey]
	,[DimChartOfAccounts_8117584451780001944].[Code] AS [DimChartOfAccountsCode]
	,[DimChartOfAccounts_8117584451780001944].[GLCodeRange] AS [DimChartOfAccountsGLCodeRange]
	,[DimChartOfAccounts_8117584451780001944].[Name] AS [DimChartOfAccountsName]
	,[DimChartOfAccounts_8117584451780001944].[SourceKey] AS [DimChartOfAccountsSourceKey]
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
    
    JOIN [Finance].[DimGLHeading] AS [DimGLHeading_4157285151552775443] 
    
    JOIN [Finance].[DimChartOfAccounts] AS [DimChartOfAccounts_8117584451780001944] 
    
        ON  [DimGLHeading_4157285151552775443].[DimChartOfAccountsID] = [DimChartOfAccounts_8117584451780001944].[DimChartOfAccountsID]

        ON  [DimGLCodeGroup_8272746684754739664].[DimGLHeadingID] = [DimGLHeading_4157285151552775443].[DimGLHeadingID]

        ON  [DimGLCode_7919271736353563679].[DimGLCodeGroupID] = [DimGLCodeGroup_8272746684754739664].[DimGLCodeGroupID]

        ON  [DimFinancialAccountType_1556043497441462480].[DimGLCodeID] = [DimGLCode_7919271736353563679].[DimGLCodeID]

        ON  [DimFinancialHoldingAccount_8695639440075633573].[DimFinancialAccountTypeID] = [DimFinancialAccountType_1556043497441462480].[DimFinancialAccountTypeID]

    ON  [DimFinancialAccount_5479953088314597640].[DimFinancialHoldingAccountID] = [DimFinancialHoldingAccount_8695639440075633573].[DimFinancialHoldingAccountID]
        



    