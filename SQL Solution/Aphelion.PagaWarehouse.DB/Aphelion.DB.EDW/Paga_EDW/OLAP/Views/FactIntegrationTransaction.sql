  

CREATE VIEW [OLAP].[FactIntegrationTransaction]
AS

SELECT 
	[FactIntegrationTransaction_5436629566424303598].[DimExternalOrganizationID] AS [FactIntegrationTransactionDimExternalOrganizationID]
	,[FactIntegrationTransaction_5436629566424303598].[DimIntegrationTxDateID] AS [FactIntegrationTransactionDimIntegrationTxDateID]
	,[FactIntegrationTransaction_5436629566424303598].[DimIntegrationTxResultID] AS [FactIntegrationTransactionDimIntegrationTxResultID]
	,[FactIntegrationTransaction_5436629566424303598].[DimIntegrationTxTimeID] AS [FactIntegrationTransactionDimIntegrationTxTimeID]
	,[FactIntegrationTransaction_5436629566424303598].[DimIntegrationTxTypeID] AS [FactIntegrationTransactionDimIntegrationTxTypeID]
	,[FactIntegrationTransaction_5436629566424303598].[DimProcessTypeID] AS [FactIntegrationTransactionDimProcessTypeID]
	,[FactIntegrationTransaction_5436629566424303598].[DimUserID] AS [FactIntegrationTransactionDimUserID]
	,[FactIntegrationTransaction_5436629566424303598].[ExternalReferenceNumber] AS [FactIntegrationTransactionExternalReferenceNumber]
	,[FactIntegrationTransaction_5436629566424303598].[FactFinancialTxID] AS [FactIntegrationTransactionFactFinancialTxID]
	,[FactIntegrationTransaction_5436629566424303598].[FactIntegrationTxID] AS [FactIntegrationTransactionFactIntegrationTxID]
	,[FactIntegrationTransaction_5436629566424303598].[HasFinancialTx] AS [FactIntegrationTransactionHasFinancialTx]
	,[FactIntegrationTransaction_5436629566424303598].[IntegrationTx_Amount] AS [FactIntegrationTransactionIntegrationTx_Amount]
	,[FactIntegrationTransaction_5436629566424303598].[MessageText] AS [FactIntegrationTransactionMessageText]
	,[FactIntegrationTransaction_5436629566424303598].[SourceKey] AS [FactIntegrationTransactionSourceKey]
	,[DimOrganization_2212032573990184476].[DimBusinessTypeID] AS [OrganizationDimBusinessTypeID]
	,[DimOrganization_2212032573990184476].[DimOrganizationID] AS [OrganizationDimOrganizationID]
	,[DimOrganization_2212032573990184476].[DimOrganizationSubscriptionStatusID] AS [OrganizationDimOrganizationSubscriptionStatusID]
	,[DimOrganization_2212032573990184476].[DimOrganizationVerificationStatusID] AS [OrganizationDimOrganizationVerificationStatusID]
	,[DimOrganization_2212032573990184476].[DimPagaAccountID] AS [OrganizationDimPagaAccountID]
	,[DimOrganization_2212032573990184476].[DisplayName] AS [OrganizationDisplayName]
	,[DimOrganization_2212032573990184476].[Name] AS [OrganizationName]
	,[DimOrganization_2212032573990184476].[OrganizationCode] AS [OrganizationOrganizationCode]
	,[DimOrganization_2212032573990184476].[RcName] AS [OrganizationRcName]
	,[DimOrganization_2212032573990184476].[ReferenceNumber] AS [OrganizationReferenceNumber]
	,[DimOrganization_2212032573990184476].[SourceKey] AS [OrganizationSourceKey]
	,[DimOrganization_2212032573990184476].[TaxIDNumber] AS [OrganizationTaxIDNumber]
	,[DimOrganization_2212032573990184476].[TextDesciption] AS [OrganizationTextDesciption]
	,[DimOrganization_2212032573990184476].[VATCertificationNumber] AS [OrganizationVATCertificationNumber]
	,[DimOrganization_2212032573990184476].[WebsiteURL] AS [OrganizationWebsiteURL]
	,[DimBusinessType_4213417106717567357].[DimBusinessTypeID] AS [BusinessTypeDimBusinessTypeID]
	,[DimBusinessType_4213417106717567357].[Name] AS [BusinessTypeName]
	,[DimBusinessType_4213417106717567357].[SourceKey] AS [BusinessTypeSourceKey]
	,[DimOrganizationSubscriptionStatus_7314017295520396891].[DimOrganizationSubscriptionStatusID] AS [OrganizationSubscriptionStatusDimOrganizationSubscriptionStatusID]
	,[DimOrganizationSubscriptionStatus_7314017295520396891].[Name] AS [OrganizationSubscriptionStatusName]
	,[DimOrganizationSubscriptionStatus_7314017295520396891].[SourceKey] AS [OrganizationSubscriptionStatusSourceKey]
	,[DimOrganizationVerificationStatus_2828131339024493057].[DimOrganizationVerificationStatusID] AS [OrganizationVerificationStatusDimOrganizationVerificationStatusID]
	,[DimOrganizationVerificationStatus_2828131339024493057].[Name] AS [OrganizationVerificationStatusName]
	,[DimOrganizationVerificationStatus_2828131339024493057].[SourceKey] AS [OrganizationVerificationStatusSourceKey]
	,[DimPagaAccount_5648661086151365743].[BankingStatus] AS [PagaAccountBankingStatus]
	,[DimPagaAccount_5648661086151365743].[CreatedDateID] AS [PagaAccountCreatedDateID]
	,[DimPagaAccount_5648661086151365743].[DimPagaAccountID] AS [PagaAccountDimPagaAccountID]
	,[DimPagaAccount_5648661086151365743].[DimPagaAccountStatusID] AS [PagaAccountDimPagaAccountStatusID]
	,[DimPagaAccount_5648661086151365743].[ExternalAccountNumber] AS [PagaAccountExternalAccountNumber]
	,[DimPagaAccount_5648661086151365743].[hasOnlineAccount] AS [PagaAccounthasOnlineAccount]
	,[DimPagaAccount_5648661086151365743].[IsActive] AS [PagaAccountIsActive]
	,[DimPagaAccount_5648661086151365743].[IsAffiliate] AS [PagaAccountIsAffiliate]
	,[DimPagaAccount_5648661086151365743].[IsAgent] AS [PagaAccountIsAgent]
	,[DimPagaAccount_5648661086151365743].[IsBank] AS [PagaAccountIsBank]
	,[DimPagaAccount_5648661086151365743].[IsBusiness] AS [PagaAccountIsBusiness]
	,[DimPagaAccount_5648661086151365743].[IsCardProcessor] AS [PagaAccountIsCardProcessor]
	,[DimPagaAccount_5648661086151365743].[IsCashCollector] AS [PagaAccountIsCashCollector]
	,[DimPagaAccount_5648661086151365743].[IsCustomer] AS [PagaAccountIsCustomer]
	,[DimPagaAccount_5648661086151365743].[IsEnabled] AS [PagaAccountIsEnabled]
	,[DimPagaAccount_5648661086151365743].[IsMerchant] AS [PagaAccountIsMerchant]
	,[DimPagaAccount_5648661086151365743].[IsMobileOperator] AS [PagaAccountIsMobileOperator]
	,[DimPagaAccount_5648661086151365743].[IsPaga] AS [PagaAccountIsPaga]
	,[DimPagaAccount_5648661086151365743].[IsRemittanceProcessor] AS [PagaAccountIsRemittanceProcessor]
	,[DimPagaAccount_5648661086151365743].[IsServiceAggregator] AS [PagaAccountIsServiceAggregator]
	,[DimPagaAccount_5648661086151365743].[Name] AS [PagaAccountName]
	,[DimPagaAccount_5648661086151365743].[PagaAccountNumber] AS [PagaAccountPagaAccountNumber]
	,[DimPagaAccount_5648661086151365743].[RegistrationDateID] AS [PagaAccountRegistrationDateID]
	,[DimPagaAccount_5648661086151365743].[SourceKey] AS [PagaAccountSourceKey]
	,[DimPagaAccountStatus_4045234746549200772].[DimPagaAccountStatusID] AS [PagaAccountStatusDimPagaAccountStatusID]
	,[DimPagaAccountStatus_4045234746549200772].[Name] AS [PagaAccountStatusName]
	,[DimPagaAccountStatus_4045234746549200772].[SourceKey] AS [PagaAccountStatusSourceKey]
	,[DimIntegrationTransactionResult_5071749880465820597].[DimIntegrationTxResultID] AS [IntegrationTransactionResultDimIntegrationTxResultID]
	,[DimIntegrationTransactionResult_5071749880465820597].[Name] AS [IntegrationTransactionResultName]
	,[DimIntegrationTransactionResult_5071749880465820597].[SourceKey] AS [IntegrationTransactionResultSourceKey]
	,[DimIntegrationTransactionType_998103327131681327].[DimIntegrationTxTypeID] AS [IntegrationTransactionTypeDimIntegrationTxTypeID]
	,[DimIntegrationTransactionType_998103327131681327].[Name] AS [IntegrationTransactionTypeName]
	,[DimIntegrationTransactionType_998103327131681327].[SourceKey] AS [IntegrationTransactionTypeSourceKey]
	,[DimProcessType_272560645890987253].[DescriptionText] AS [ProcessTypeDescriptionText]
	,[DimProcessType_272560645890987253].[DimProcessTypeID] AS [ProcessTypeDimProcessTypeID]
	,[DimProcessType_272560645890987253].[Name] AS [ProcessTypeName]
	,[DimProcessType_272560645890987253].[SourceKey] AS [ProcessTypeSourceKey]
	,[DimUser_1239846899628483053].[DimCreatedDateID] AS [UserDimCreatedDateID]
	,[DimUser_1239846899628483053].[DimDateOfBirthID] AS [UserDimDateOfBirthID]
	,[DimUser_1239846899628483053].[DimPrimaryRoleID] AS [UserDimPrimaryRoleID]
	,[DimUser_1239846899628483053].[DimUserID] AS [UserDimUserID]
	,[DimUser_1239846899628483053].[Email] AS [UserEmail]
	,[DimUser_1239846899628483053].[FirstName] AS [UserFirstName]
	,[DimUser_1239846899628483053].[Gender] AS [UserGender]
	,[DimUser_1239846899628483053].[IsEnabled] AS [UserIsEnabled]
	,[DimUser_1239846899628483053].[LastName] AS [UserLastName]
	,[DimUser_1239846899628483053].[MiddleName] AS [UserMiddleName]
	,[DimUser_1239846899628483053].[PhoneNumber] AS [UserPhoneNumber]
	,[DimUser_1239846899628483053].[SourceKey] AS [UserSourceKey]
	,[DimRole_7858950587404824176].[DimRoleID] AS [RoleDimRoleID]
	,[DimRole_7858950587404824176].[Name] AS [RoleName]
	,[DimRole_7858950587404824176].[SourceKey] AS [RoleSourceKey]
	,[DimRole_7858950587404824176].[SystemDescription] AS [RoleSystemDescription]
	,[DimRole_7858950587404824176].[TextDesciption] AS [RoleTextDesciption]
	,[FactFinancialTransaction_992232996979675561].[Cancelled] AS [FactFinancialTransactionCancelled]
	,[FactFinancialTransaction_992232996979675561].[DimBusinessTypeID] AS [FactFinancialTransactionDimBusinessTypeID]
	,[FactFinancialTransaction_992232996979675561].[DimCurrencyID] AS [FactFinancialTransactionDimCurrencyID]
	,[FactFinancialTransaction_992232996979675561].[DimEffectiveDateID] AS [FactFinancialTransactionDimEffectiveDateID]
	,[FactFinancialTransaction_992232996979675561].[DimEffectiveTimeID] AS [FactFinancialTransactionDimEffectiveTimeID]
	,[FactFinancialTransaction_992232996979675561].[DimFinancialTxDateID] AS [FactFinancialTransactionDimFinancialTxDateID]
	,[FactFinancialTransaction_992232996979675561].[DimFinancialTxTimeID] AS [FactFinancialTransactionDimFinancialTxTimeID]
	,[FactFinancialTransaction_992232996979675561].[DimFinancialTxTypeID] AS [FactFinancialTransactionDimFinancialTxTypeID]
	,[FactFinancialTransaction_992232996979675561].[DimUserID] AS [FactFinancialTransactionDimUserID]
	,[FactFinancialTransaction_992232996979675561].[ExchangeRate] AS [FactFinancialTransactionExchangeRate]
	,[FactFinancialTransaction_992232996979675561].[ExternalReferenceNumber] AS [FactFinancialTransactionExternalReferenceNumber]
	,[FactFinancialTransaction_992232996979675561].[FactFinancialTxID] AS [FactFinancialTransactionFactFinancialTxID]
	,[FactFinancialTransaction_992232996979675561].[FactIntegrationTxID] AS [FactFinancialTransactionFactIntegrationTxID]
	,[FactFinancialTransaction_992232996979675561].[FactOriginalFinancialTxID] AS [FactFinancialTransactionFactOriginalFinancialTxID]
	,[FactFinancialTransaction_992232996979675561].[FactProcessEventID] AS [FactFinancialTransactionFactProcessEventID]
	,[FactFinancialTransaction_992232996979675561].[FactRelatedFinancialTxID] AS [FactFinancialTransactionFactRelatedFinancialTxID]
	,[FactFinancialTransaction_992232996979675561].[FinancialTx_Amount] AS [FactFinancialTransactionFinancialTx_Amount]
	,[FactFinancialTransaction_992232996979675561].[FinancialTx_Fee] AS [FactFinancialTransactionFinancialTx_Fee]
	,[FactFinancialTransaction_992232996979675561].[ForeignCurrencyAmount] AS [FactFinancialTransactionForeignCurrencyAmount]
	,[FactFinancialTransaction_992232996979675561].[IsIntegrationTx] AS [FactFinancialTransactionIsIntegrationTx]
	,[FactFinancialTransaction_992232996979675561].[ReferenceNumber] AS [FactFinancialTransactionReferenceNumber]
	,[FactFinancialTransaction_992232996979675561].[Reversed] AS [FactFinancialTransactionReversed]
	,[FactFinancialTransaction_992232996979675561].[ShortCode] AS [FactFinancialTransactionShortCode]
	,[FactFinancialTransaction_992232996979675561].[SourceKey] AS [FactFinancialTransactionSourceKey]
	,[FactFinancialTransaction_992232996979675561].[TextDescription] AS [FactFinancialTransactionTextDescription]
	,[DimCurrency_5322148069047760344].[DimCurrencyID] AS [CurrencyDimCurrencyID]
	,[DimCurrency_5322148069047760344].[ISOCode] AS [CurrencyISOCode]
	,[DimCurrency_5322148069047760344].[Name] AS [CurrencyName]
	,[DimCurrency_5322148069047760344].[SourceKey] AS [CurrencySourceKey]
	,[DimCurrency_5322148069047760344].[Symbol] AS [CurrencySymbol]
	,[DimFinancialTransactionType_3529338626125494636].[DimFinancialTxTypeID] AS [FinancialTransactionTypeDimFinancialTxTypeID]
	,[DimFinancialTransactionType_3529338626125494636].[FinancialTxCategory] AS [FinancialTransactionTypeFinancialTxCategory]
	,[DimFinancialTransactionType_3529338626125494636].[Name] AS [FinancialTransactionTypeName]
	,[DimFinancialTransactionType_3529338626125494636].[SourceKey] AS [FinancialTransactionTypeSourceKey]
	,[FactProcessEvent_6405682912004183700].[AgentCommissionAmount] AS [FactProcessEventAgentCommissionAmount]
	,[FactProcessEvent_6405682912004183700].[ATMReferenceNumber] AS [FactProcessEventATMReferenceNumber]
	,[FactProcessEvent_6405682912004183700].[CardProcessorName] AS [FactProcessEventCardProcessorName]
	,[FactProcessEvent_6405682912004183700].[CustomerBillerAccount] AS [FactProcessEventCustomerBillerAccount]
	,[FactProcessEvent_6405682912004183700].[CustomerPhoneNumber] AS [FactProcessEventCustomerPhoneNumber]
	,[FactProcessEvent_6405682912004183700].[DepositNumber] AS [FactProcessEventDepositNumber]
	,[FactProcessEvent_6405682912004183700].[DimAgentCommissionTypeID] AS [FactProcessEventDimAgentCommissionTypeID]
	,[FactProcessEvent_6405682912004183700].[DimApprovedByUserID] AS [FactProcessEventDimApprovedByUserID]
	,[FactProcessEvent_6405682912004183700].[DimCancellationApprovedByUserID] AS [FactProcessEventDimCancellationApprovedByUserID]
	,[FactProcessEvent_6405682912004183700].[DimCompletedDateID] AS [FactProcessEventDimCompletedDateID]
	,[FactProcessEvent_6405682912004183700].[DimCompletedTimeID] AS [FactProcessEventDimCompletedTimeID]
	,[FactProcessEvent_6405682912004183700].[DimForUserID] AS [FactProcessEventDimForUserID]
	,[FactProcessEvent_6405682912004183700].[DimInitiatingUserID] AS [FactProcessEventDimInitiatingUserID]
	,[FactProcessEvent_6405682912004183700].[DimProcessChannelID] AS [FactProcessEventDimProcessChannelID]
	,[FactProcessEvent_6405682912004183700].[DimProcessStatusID] AS [FactProcessEventDimProcessStatusID]
	,[FactProcessEvent_6405682912004183700].[DimProcessTypeID] AS [FactProcessEventDimProcessTypeID]
	,[FactProcessEvent_6405682912004183700].[DimRequestedProcessChannelID] AS [FactProcessEventDimRequestedProcessChannelID]
	,[FactProcessEvent_6405682912004183700].[DimStartedDateID] AS [FactProcessEventDimStartedDateID]
	,[FactProcessEvent_6405682912004183700].[DimStartedTimeID] AS [FactProcessEventDimStartedTimeID]
	,[FactProcessEvent_6405682912004183700].[DimToUserID] AS [FactProcessEventDimToUserID]
	,[FactProcessEvent_6405682912004183700].[DimUserID] AS [FactProcessEventDimUserID]
	,[FactProcessEvent_6405682912004183700].[DimVerifiedByUserID] AS [FactProcessEventDimVerifiedByUserID]
	,[FactProcessEvent_6405682912004183700].[FactDependentProcessEventID] AS [FactProcessEventFactDependentProcessEventID]
	,[FactProcessEvent_6405682912004183700].[FactOriginalProcessEventID] AS [FactProcessEventFactOriginalProcessEventID]
	,[FactProcessEvent_6405682912004183700].[HasFinancialTransaction] AS [FactProcessEventHasFinancialTransaction]
	,[FactProcessEvent_6405682912004183700].[IntegrationReferenceNumber] AS [FactProcessEventIntegrationReferenceNumber]
	,[FactProcessEvent_6405682912004183700].[LinkedPhoneNumber] AS [FactProcessEventLinkedPhoneNumber]
	,[FactProcessEvent_6405682912004183700].[MerchantConfirmationCode] AS [FactProcessEventMerchantConfirmationCode]
	,[FactProcessEvent_6405682912004183700].[MerchantCustomerAccountNumber] AS [FactProcessEventMerchantCustomerAccountNumber]
	,[FactProcessEvent_6405682912004183700].[PaymentSource] AS [FactProcessEventPaymentSource]
	,[FactProcessEvent_6405682912004183700].[ProcessAmount] AS [FactProcessEventProcessAmount]
	,[FactProcessEvent_6405682912004183700].[ProcessCode] AS [FactProcessEventProcessCode]
	,[FactProcessEvent_6405682912004183700].[ProcessFee] AS [FactProcessEventProcessFee]
	,[FactProcessEvent_6405682912004183700].[ReferenceNumber] AS [FactProcessEventReferenceNumber]
	,[FactProcessEvent_6405682912004183700].[SenderPhoneNumber] AS [FactProcessEventSenderPhoneNumber]
	,[FactProcessEvent_6405682912004183700].[SourceKey] AS [FactProcessEventSourceKey]
	,[FactProcessEvent_6405682912004183700].[VerificationStatus] AS [FactProcessEventVerificationStatus]
	,[FactProcessEvent_6405682912004183700].[WithdrawalCode] AS [FactProcessEventWithdrawalCode]
	,[DimAgentCommissionType_5811028825421452951].[DimAgentCommissionTypeID] AS [AgentCommissionTypeDimAgentCommissionTypeID]
	,[DimAgentCommissionType_5811028825421452951].[Name] AS [AgentCommissionTypeName]
	,[DimAgentCommissionType_5811028825421452951].[SourceKey] AS [AgentCommissionTypeSourceKey]
	,[DimProcessChannel_190240215203245919].[DimProcessChannelID] AS [ProcessChannelDimProcessChannelID]
	,[DimProcessChannel_190240215203245919].[Name] AS [ProcessChannelName]
	,[DimProcessChannel_190240215203245919].[SourceKey] AS [ProcessChannelSourceKey]
	,[DimProcessChannel_190240215203245919].[TextDesciption] AS [ProcessChannelTextDesciption]
	,[DimProcessStatus_2172421730866971233].[DimProcessStatusID] AS [ProcessStatusDimProcessStatusID]
	,[DimProcessStatus_2172421730866971233].[Name] AS [ProcessStatusName]
	,[DimProcessStatus_2172421730866971233].[SourceKey] AS [ProcessStatusSourceKey]
FROM [Shared].[FactIntegrationTransaction] AS [FactIntegrationTransaction_5436629566424303598]

    LEFT JOIN [Shared].[DimOrganization] AS [DimOrganization_2212032573990184476] 
    
    JOIN [Classification].[DimBusinessType] AS [DimBusinessType_4213417106717567357] 
    
        ON  [DimOrganization_2212032573990184476].[DimBusinessTypeID] = [DimBusinessType_4213417106717567357].[DimBusinessTypeID]

    JOIN [Classification].[DimOrganizationSubscriptionStatus] AS [DimOrganizationSubscriptionStatus_7314017295520396891] 
    
        ON  [DimOrganization_2212032573990184476].[DimOrganizationSubscriptionStatusID] = [DimOrganizationSubscriptionStatus_7314017295520396891].[DimOrganizationSubscriptionStatusID]

    JOIN [Classification].[DimOrganizationVerificationStatus] AS [DimOrganizationVerificationStatus_2828131339024493057] 
    
        ON  [DimOrganization_2212032573990184476].[DimOrganizationVerificationStatusID] = [DimOrganizationVerificationStatus_2828131339024493057].[DimOrganizationVerificationStatusID]

    JOIN [Shared].[DimPagaAccount] AS [DimPagaAccount_5648661086151365743] 
    
    JOIN [Classification].[DimPagaAccountStatus] AS [DimPagaAccountStatus_4045234746549200772] 
    
        ON  [DimPagaAccount_5648661086151365743].[DimPagaAccountStatusID] = [DimPagaAccountStatus_4045234746549200772].[DimPagaAccountStatusID]

        ON  [DimOrganization_2212032573990184476].[DimPagaAccountID] = [DimPagaAccount_5648661086151365743].[DimPagaAccountID]

    ON  [FactIntegrationTransaction_5436629566424303598].[DimExternalOrganizationID] = [DimOrganization_2212032573990184476].[DimOrganizationID]
        

    LEFT JOIN [Classification].[DimIntegrationTransactionResult] AS [DimIntegrationTransactionResult_5071749880465820597] 
    
    ON  [FactIntegrationTransaction_5436629566424303598].[DimIntegrationTxResultID] = [DimIntegrationTransactionResult_5071749880465820597].[DimIntegrationTxResultID]
        

    LEFT JOIN [Classification].[DimIntegrationTransactionType] AS [DimIntegrationTransactionType_998103327131681327] 
    
    ON  [FactIntegrationTransaction_5436629566424303598].[DimIntegrationTxTypeID] = [DimIntegrationTransactionType_998103327131681327].[DimIntegrationTxTypeID]
        

    JOIN [Classification].[DimProcessType] AS [DimProcessType_272560645890987253] 
    
        ON  [FactIntegrationTransaction_5436629566424303598].[DimProcessTypeID] = [DimProcessType_272560645890987253].[DimProcessTypeID]

    LEFT JOIN [Shared].[DimUser] AS [DimUser_1239846899628483053] 
    
    JOIN [Shared].[DimRole] AS [DimRole_7858950587404824176] 
    
        ON  [DimUser_1239846899628483053].[DimPrimaryRoleID] = [DimRole_7858950587404824176].[DimRoleID]

    ON  [FactIntegrationTransaction_5436629566424303598].[DimUserID] = [DimUser_1239846899628483053].[DimUserID]
        

    LEFT JOIN [Finance].[FactFinancialTransaction] AS [FactFinancialTransaction_992232996979675561] 
    
    LEFT JOIN [Classification].[DimBusinessType] AS [DimBusinessType_8319328951338521576] 
    
    ON  [FactFinancialTransaction_992232996979675561].[DimBusinessTypeID] = [DimBusinessType_8319328951338521576].[DimBusinessTypeID]
        

    LEFT JOIN [Finance].[DimCurrency] AS [DimCurrency_5322148069047760344] 
    
    ON  [FactFinancialTransaction_992232996979675561].[DimCurrencyID] = [DimCurrency_5322148069047760344].[DimCurrencyID]
        

    LEFT JOIN [Classification].[DimFinancialTransactionType] AS [DimFinancialTransactionType_3529338626125494636] 
    
    ON  [FactFinancialTransaction_992232996979675561].[DimFinancialTxTypeID] = [DimFinancialTransactionType_3529338626125494636].[DimFinancialTxTypeID]
        

    LEFT JOIN [Shared].[DimUser] AS [DimUser_3727791455074361796] 
    
    JOIN [Shared].[DimRole] AS [DimRole_4898803121627818015] 
    
        ON  [DimUser_3727791455074361796].[DimPrimaryRoleID] = [DimRole_4898803121627818015].[DimRoleID]

    ON  [FactFinancialTransaction_992232996979675561].[DimUserID] = [DimUser_3727791455074361796].[DimUserID]
        

    LEFT JOIN [Shared].[FactIntegrationTransaction] AS [FactIntegrationTransaction_3646661111449943758] 
    
    ON  [FactFinancialTransaction_992232996979675561].[FactIntegrationTxID] = [FactIntegrationTransaction_3646661111449943758].[FactIntegrationTxID]
        

    LEFT JOIN [Shared].[FactProcessEvent] AS [FactProcessEvent_6405682912004183700] 
    
    LEFT JOIN [Classification].[DimAgentCommissionType] AS [DimAgentCommissionType_5811028825421452951] 
    
    ON  [FactProcessEvent_6405682912004183700].[DimAgentCommissionTypeID] = [DimAgentCommissionType_5811028825421452951].[DimAgentCommissionTypeID]
        

    LEFT JOIN [Shared].[DimUser] AS [DimUser_1816957919720223655] 
    
    JOIN [Shared].[DimRole] AS [DimRole_5083463912587886268] 
    
        ON  [DimUser_1816957919720223655].[DimPrimaryRoleID] = [DimRole_5083463912587886268].[DimRoleID]

    ON  [FactProcessEvent_6405682912004183700].[DimApprovedByUserID] = [DimUser_1816957919720223655].[DimUserID]
        

    LEFT JOIN [Shared].[DimUser] AS [DimUser_2035737503331025660] 
    
    JOIN [Shared].[DimRole] AS [DimRole_301059571412229471] 
    
        ON  [DimUser_2035737503331025660].[DimPrimaryRoleID] = [DimRole_301059571412229471].[DimRoleID]

    ON  [FactProcessEvent_6405682912004183700].[DimCancellationApprovedByUserID] = [DimUser_2035737503331025660].[DimUserID]
        

    LEFT JOIN [Shared].[DimUser] AS [DimUser_6233348758898814178] 
    
    JOIN [Shared].[DimRole] AS [DimRole_5036268561883889223] 
    
        ON  [DimUser_6233348758898814178].[DimPrimaryRoleID] = [DimRole_5036268561883889223].[DimRoleID]

    ON  [FactProcessEvent_6405682912004183700].[DimForUserID] = [DimUser_6233348758898814178].[DimUserID]
        

    LEFT JOIN [Shared].[DimUser] AS [DimUser_830685641416273715] 
    
    JOIN [Shared].[DimRole] AS [DimRole_1160327584520616882] 
    
        ON  [DimUser_830685641416273715].[DimPrimaryRoleID] = [DimRole_1160327584520616882].[DimRoleID]

    ON  [FactProcessEvent_6405682912004183700].[DimInitiatingUserID] = [DimUser_830685641416273715].[DimUserID]
        

    LEFT JOIN [Classification].[DimProcessChannel] AS [DimProcessChannel_190240215203245919] 
    
    ON  [FactProcessEvent_6405682912004183700].[DimRequestedProcessChannelID] = [DimProcessChannel_190240215203245919].[DimProcessChannelID]
        

    JOIN [Classification].[DimProcessChannel] AS [DimProcessChannel_6703166958500104735] 
    
        ON  [FactProcessEvent_6405682912004183700].[DimProcessChannelID] = [DimProcessChannel_6703166958500104735].[DimProcessChannelID]

    LEFT JOIN [Classification].[DimProcessStatus] AS [DimProcessStatus_2172421730866971233] 
    
    ON  [FactProcessEvent_6405682912004183700].[DimProcessStatusID] = [DimProcessStatus_2172421730866971233].[DimProcessStatusID]
        

    LEFT JOIN [Classification].[DimProcessType] AS [DimProcessType_5735178802280039071] 
    
    ON  [FactProcessEvent_6405682912004183700].[DimProcessTypeID] = [DimProcessType_5735178802280039071].[DimProcessTypeID]
        

    LEFT JOIN [Shared].[DimUser] AS [DimUser_1746944941744237028] 
    
    JOIN [Shared].[DimRole] AS [DimRole_4945494603540124889] 
    
        ON  [DimUser_1746944941744237028].[DimPrimaryRoleID] = [DimRole_4945494603540124889].[DimRoleID]

    ON  [FactProcessEvent_6405682912004183700].[DimToUserID] = [DimUser_1746944941744237028].[DimUserID]
        

    LEFT JOIN [Shared].[DimUser] AS [DimUser_8516604537236897023] 
    
    JOIN [Shared].[DimRole] AS [DimRole_4966025965192727738] 
    
        ON  [DimUser_8516604537236897023].[DimPrimaryRoleID] = [DimRole_4966025965192727738].[DimRoleID]

    ON  [FactProcessEvent_6405682912004183700].[DimUserID] = [DimUser_8516604537236897023].[DimUserID]
        

    LEFT JOIN [Shared].[DimUser] AS [DimUser_4772638365357022012] 
    
    JOIN [Shared].[DimRole] AS [DimRole_4741278019841040671] 
    
        ON  [DimUser_4772638365357022012].[DimPrimaryRoleID] = [DimRole_4741278019841040671].[DimRoleID]

    ON  [FactProcessEvent_6405682912004183700].[DimVerifiedByUserID] = [DimUser_4772638365357022012].[DimUserID]
        

    ON  [FactFinancialTransaction_992232996979675561].[FactProcessEventID] = [FactProcessEvent_6405682912004183700].[FactProcessEventID]
        

    ON  [FactIntegrationTransaction_5436629566424303598].[FactFinancialTxID] = [FactFinancialTransaction_992232996979675561].[FactFinancialTxID]
GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimProcessStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'ProcessStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'ProcessStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'ProcessStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'ProcessStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'ProcessStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimProcessStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'ProcessStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'ProcessStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'ProcessStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'ProcessStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'ProcessStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimProcessStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'ProcessStatusDimProcessStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'ProcessStatusDimProcessStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimProcessStatusID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'ProcessStatusDimProcessStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'ProcessStatusDimProcessStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimProcessChannel', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'ProcessChannelTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'ProcessChannelTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'TextDesciption', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'ProcessChannelTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'ProcessChannelTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimProcessChannel', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'ProcessChannelSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'ProcessChannelSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'ProcessChannelSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'ProcessChannelSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'ProcessChannelSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimProcessChannel', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'ProcessChannelName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'ProcessChannelName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'ProcessChannelName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'ProcessChannelName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'ProcessChannelName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimProcessChannel', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'ProcessChannelDimProcessChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'ProcessChannelDimProcessChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimProcessChannelID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'ProcessChannelDimProcessChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'ProcessChannelDimProcessChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimAgentCommissionType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'AgentCommissionTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'AgentCommissionTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'AgentCommissionTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'AgentCommissionTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'AgentCommissionTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimAgentCommissionType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'AgentCommissionTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'AgentCommissionTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'AgentCommissionTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'AgentCommissionTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'AgentCommissionTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimAgentCommissionType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'AgentCommissionTypeDimAgentCommissionTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'AgentCommissionTypeDimAgentCommissionTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimAgentCommissionTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'AgentCommissionTypeDimAgentCommissionTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'AgentCommissionTypeDimAgentCommissionTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventWithdrawalCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventWithdrawalCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'WithdrawalCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventWithdrawalCode';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventWithdrawalCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventVerificationStatus';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventVerificationStatus';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'VerificationStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventVerificationStatus';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventVerificationStatus';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventSenderPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventSenderPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SenderPhoneNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventSenderPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventSenderPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ReferenceNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventProcessFee';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventProcessFee';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ProcessFee', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventProcessFee';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventProcessFee';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventProcessCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventProcessCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ProcessCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventProcessCode';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventProcessCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventProcessAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventProcessAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ProcessAmount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventProcessAmount';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventProcessAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventPaymentSource';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventPaymentSource';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'PaymentSource', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventPaymentSource';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventPaymentSource';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventMerchantCustomerAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventMerchantCustomerAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'MerchantCustomerAccountNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventMerchantCustomerAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventMerchantCustomerAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventMerchantConfirmationCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventMerchantConfirmationCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'MerchantConfirmationCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventMerchantConfirmationCode';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventMerchantConfirmationCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventLinkedPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventLinkedPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'LinkedPhoneNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventLinkedPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventLinkedPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventIntegrationReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventIntegrationReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IntegrationReferenceNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventIntegrationReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventIntegrationReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventHasFinancialTransaction';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventHasFinancialTransaction';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'HasFinancialTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventHasFinancialTransaction';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventHasFinancialTransaction';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventFactOriginalProcessEventID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventFactOriginalProcessEventID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FactOriginalProcessEventID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventFactOriginalProcessEventID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventFactOriginalProcessEventID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventFactDependentProcessEventID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventFactDependentProcessEventID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FactDependentProcessEventID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventFactDependentProcessEventID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventFactDependentProcessEventID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimVerifiedByUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimVerifiedByUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimVerifiedByUserID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimVerifiedByUserID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimVerifiedByUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimUserID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimUserID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimToUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimToUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimToUserID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimToUserID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimToUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimStartedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimStartedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimStartedTimeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimStartedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimStartedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimStartedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimStartedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimStartedDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimStartedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimStartedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimRequestedProcessChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimRequestedProcessChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimRequestedProcessChannelID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimRequestedProcessChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimRequestedProcessChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimProcessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimProcessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimProcessTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimProcessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimProcessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimProcessStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimProcessStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimProcessStatusID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimProcessStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimProcessStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimProcessChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimProcessChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimProcessChannelID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimProcessChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimProcessChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimInitiatingUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimInitiatingUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimInitiatingUserID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimInitiatingUserID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimInitiatingUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimForUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimForUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimForUserID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimForUserID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimForUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimCompletedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimCompletedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimCompletedTimeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimCompletedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimCompletedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimCompletedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimCompletedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimCompletedDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimCompletedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimCompletedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimCancellationApprovedByUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimCancellationApprovedByUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimCancellationApprovedByUserID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimCancellationApprovedByUserID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimCancellationApprovedByUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimApprovedByUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimApprovedByUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimApprovedByUserID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimApprovedByUserID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimApprovedByUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimAgentCommissionTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimAgentCommissionTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimAgentCommissionTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimAgentCommissionTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventDimAgentCommissionTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventDepositNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventDepositNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DepositNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventDepositNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventDepositNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventCustomerPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventCustomerPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'CustomerPhoneNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventCustomerPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventCustomerPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventCustomerBillerAccount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventCustomerBillerAccount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'CustomerBillerAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventCustomerBillerAccount';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventCustomerBillerAccount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventCardProcessorName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventCardProcessorName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'CardProcessorName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventCardProcessorName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventCardProcessorName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventATMReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventATMReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ATMReferenceNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventATMReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventATMReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessEvent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventAgentCommissionAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventAgentCommissionAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'AgentCommissionAmount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventAgentCommissionAmount';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactProcessEventAgentCommissionAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialTransactionType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FinancialTransactionTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FinancialTransactionTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FinancialTransactionTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FinancialTransactionTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FinancialTransactionTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialTransactionType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FinancialTransactionTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FinancialTransactionTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FinancialTransactionTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FinancialTransactionTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FinancialTransactionTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialTransactionType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FinancialTransactionTypeFinancialTxCategory';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FinancialTransactionTypeFinancialTxCategory';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FinancialTxCategory', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FinancialTransactionTypeFinancialTxCategory';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FinancialTransactionTypeFinancialTxCategory';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialTransactionType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FinancialTransactionTypeDimFinancialTxTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FinancialTransactionTypeDimFinancialTxTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimFinancialTxTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FinancialTransactionTypeDimFinancialTxTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FinancialTransactionTypeDimFinancialTxTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimCurrency', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'CurrencySymbol';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'CurrencySymbol';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Symbol', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'CurrencySymbol';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'CurrencySymbol';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimCurrency', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'CurrencySourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'CurrencySourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'CurrencySourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'CurrencySourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'CurrencySourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimCurrency', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'CurrencyName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'CurrencyName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'CurrencyName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'CurrencyName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'CurrencyName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimCurrency', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'CurrencyISOCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'CurrencyISOCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ISOCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'CurrencyISOCode';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'CurrencyISOCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimCurrency', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'CurrencyDimCurrencyID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'CurrencyDimCurrencyID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimCurrencyID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'CurrencyDimCurrencyID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'CurrencyDimCurrencyID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionTextDescription';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionTextDescription';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'TextDescription', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionTextDescription';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionTextDescription';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionShortCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionShortCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ShortCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionShortCode';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionShortCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionReversed';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionReversed';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Reversed', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionReversed';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionReversed';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ReferenceNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionIsIntegrationTx';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionIsIntegrationTx';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsIntegrationTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionIsIntegrationTx';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionIsIntegrationTx';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionForeignCurrencyAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionForeignCurrencyAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ForeignCurrencyAmount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionForeignCurrencyAmount';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionForeignCurrencyAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionFinancialTx_Fee';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionFinancialTx_Fee';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FinancialTx_Fee', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionFinancialTx_Fee';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionFinancialTx_Fee';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionFinancialTx_Amount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionFinancialTx_Amount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FinancialTx_Amount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionFinancialTx_Amount';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionFinancialTx_Amount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionFactRelatedFinancialTxID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionFactRelatedFinancialTxID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FactRelatedFinancialTxID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionFactRelatedFinancialTxID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionFactRelatedFinancialTxID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionFactProcessEventID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionFactProcessEventID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FactProcessEventID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionFactProcessEventID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionFactProcessEventID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionFactOriginalFinancialTxID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionFactOriginalFinancialTxID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FactOriginalFinancialTxID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionFactOriginalFinancialTxID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionFactOriginalFinancialTxID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionFactIntegrationTxID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionFactIntegrationTxID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FactIntegrationTxID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionFactIntegrationTxID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionFactIntegrationTxID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionFactFinancialTxID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionFactFinancialTxID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FactFinancialTxID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionFactFinancialTxID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionFactFinancialTxID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionExternalReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionExternalReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ExternalReferenceNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionExternalReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionExternalReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionExchangeRate';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionExchangeRate';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ExchangeRate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionExchangeRate';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionExchangeRate';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionDimUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionDimUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimUserID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionDimUserID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionDimUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionDimFinancialTxTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionDimFinancialTxTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimFinancialTxTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionDimFinancialTxTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionDimFinancialTxTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionDimFinancialTxTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionDimFinancialTxTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimFinancialTxTimeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionDimFinancialTxTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionDimFinancialTxTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionDimFinancialTxDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionDimFinancialTxDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimFinancialTxDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionDimFinancialTxDateID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionDimFinancialTxDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionDimEffectiveTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionDimEffectiveTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimEffectiveTimeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionDimEffectiveTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionDimEffectiveTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionDimEffectiveDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionDimEffectiveDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimEffectiveDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionDimEffectiveDateID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionDimEffectiveDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionDimCurrencyID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionDimCurrencyID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimCurrencyID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionDimCurrencyID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionDimCurrencyID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionDimBusinessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionDimBusinessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimBusinessTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionDimBusinessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionDimBusinessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionCancelled';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionCancelled';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Cancelled', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionCancelled';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactFinancialTransactionCancelled';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimRole', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'RoleTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'RoleTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'TextDesciption', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'RoleTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'RoleTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimRole', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'RoleSystemDescription';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'RoleSystemDescription';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SystemDescription', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'RoleSystemDescription';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'RoleSystemDescription';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimRole', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'RoleSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'RoleSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'RoleSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'RoleSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'RoleSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimRole', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'RoleName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'RoleName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'RoleName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'RoleName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'RoleName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimRole', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'RoleDimRoleID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'RoleDimRoleID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimRoleID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'RoleDimRoleID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'RoleDimRoleID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'UserSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'UserSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'UserSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'UserSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'UserPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'UserPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'PhoneNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'UserPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'UserPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'UserMiddleName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'UserMiddleName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'MiddleName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'UserMiddleName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'UserMiddleName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'UserLastName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'UserLastName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'LastName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'UserLastName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'UserLastName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'UserIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'UserIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsEnabled', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'UserIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'UserIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'UserGender';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'UserGender';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Gender', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'UserGender';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'UserGender';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'UserFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'UserFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FirstName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'UserFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'UserFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'UserEmail';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'UserEmail';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Email', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'UserEmail';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'UserEmail';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'UserDimUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'UserDimUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimUserID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'UserDimUserID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'UserDimUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'UserDimPrimaryRoleID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'UserDimPrimaryRoleID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimPrimaryRoleID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'UserDimPrimaryRoleID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'UserDimPrimaryRoleID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'UserDimDateOfBirthID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'UserDimDateOfBirthID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimDateOfBirthID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'UserDimDateOfBirthID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'UserDimDateOfBirthID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'UserDimCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'UserDimCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimCreatedDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'UserDimCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'UserDimCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimProcessType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'ProcessTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'ProcessTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'ProcessTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'ProcessTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimProcessType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'ProcessTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'ProcessTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'ProcessTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'ProcessTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimProcessType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'ProcessTypeDimProcessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'ProcessTypeDimProcessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimProcessTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'ProcessTypeDimProcessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'ProcessTypeDimProcessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimProcessType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'ProcessTypeDescriptionText';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'ProcessTypeDescriptionText';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DescriptionText', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'ProcessTypeDescriptionText';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'ProcessTypeDescriptionText';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimIntegrationTransactionType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'IntegrationTransactionTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'IntegrationTransactionTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'IntegrationTransactionTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'IntegrationTransactionTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimIntegrationTransactionType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'IntegrationTransactionTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'IntegrationTransactionTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'IntegrationTransactionTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'IntegrationTransactionTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimIntegrationTransactionType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'IntegrationTransactionTypeDimIntegrationTxTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'IntegrationTransactionTypeDimIntegrationTxTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimIntegrationTxTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'IntegrationTransactionTypeDimIntegrationTxTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'IntegrationTransactionTypeDimIntegrationTxTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimIntegrationTransactionResult', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'IntegrationTransactionResultSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'IntegrationTransactionResultSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'IntegrationTransactionResultSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'IntegrationTransactionResultSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimIntegrationTransactionResult', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'IntegrationTransactionResultName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'IntegrationTransactionResultName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'IntegrationTransactionResultName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'IntegrationTransactionResultName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimIntegrationTransactionResult', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'IntegrationTransactionResultDimIntegrationTxResultID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'IntegrationTransactionResultDimIntegrationTxResultID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimIntegrationTxResultID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'IntegrationTransactionResultDimIntegrationTxResultID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'IntegrationTransactionResultDimIntegrationTxResultID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccountStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccountStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccountStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountStatusDimPagaAccountStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountStatusDimPagaAccountStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimPagaAccountStatusID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountStatusDimPagaAccountStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountStatusDimPagaAccountStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountRegistrationDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountRegistrationDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'RegistrationDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountRegistrationDateID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountRegistrationDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountPagaAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountPagaAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'PagaAccountNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountPagaAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountPagaAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountIsServiceAggregator';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountIsServiceAggregator';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsServiceAggregator', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountIsServiceAggregator';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountIsServiceAggregator';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountIsRemittanceProcessor';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountIsRemittanceProcessor';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsRemittanceProcessor', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountIsRemittanceProcessor';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountIsRemittanceProcessor';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountIsPaga';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountIsPaga';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsPaga', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountIsPaga';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountIsPaga';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountIsMobileOperator';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountIsMobileOperator';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsMobileOperator', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountIsMobileOperator';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountIsMobileOperator';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountIsMerchant';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountIsMerchant';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsMerchant', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountIsMerchant';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountIsMerchant';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsEnabled', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountIsCustomer';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountIsCustomer';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsCustomer', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountIsCustomer';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountIsCustomer';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountIsCashCollector';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountIsCashCollector';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsCashCollector', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountIsCashCollector';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountIsCashCollector';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountIsCardProcessor';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountIsCardProcessor';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsCardProcessor', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountIsCardProcessor';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountIsCardProcessor';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountIsBusiness';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountIsBusiness';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsBusiness', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountIsBusiness';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountIsBusiness';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountIsBank';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountIsBank';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsBank', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountIsBank';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountIsBank';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountIsAgent';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountIsAgent';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsAgent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountIsAgent';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountIsAgent';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountIsAffiliate';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountIsAffiliate';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsAffiliate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountIsAffiliate';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountIsAffiliate';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountIsActive';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountIsActive';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsActive', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountIsActive';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountIsActive';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccounthasOnlineAccount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccounthasOnlineAccount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'hasOnlineAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccounthasOnlineAccount';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccounthasOnlineAccount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountExternalAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountExternalAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ExternalAccountNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountExternalAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountExternalAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountDimPagaAccountStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountDimPagaAccountStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimPagaAccountStatusID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountDimPagaAccountStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountDimPagaAccountStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimPagaAccountID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'CreatedDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountBankingStatus';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountBankingStatus';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'BankingStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountBankingStatus';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'PagaAccountBankingStatus';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationVerificationStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationVerificationStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationVerificationStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationVerificationStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationVerificationStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationVerificationStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationVerificationStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationVerificationStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationVerificationStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationVerificationStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationVerificationStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationVerificationStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationVerificationStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationVerificationStatusDimOrganizationVerificationStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationVerificationStatusDimOrganizationVerificationStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationVerificationStatusID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationVerificationStatusDimOrganizationVerificationStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationVerificationStatusDimOrganizationVerificationStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationSubscriptionStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationSubscriptionStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationSubscriptionStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationSubscriptionStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationSubscriptionStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationSubscriptionStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationSubscriptionStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationSubscriptionStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationSubscriptionStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationSubscriptionStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationSubscriptionStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationSubscriptionStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationSubscriptionStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationSubscriptionStatusDimOrganizationSubscriptionStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationSubscriptionStatusDimOrganizationSubscriptionStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationSubscriptionStatusID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationSubscriptionStatusDimOrganizationSubscriptionStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationSubscriptionStatusDimOrganizationSubscriptionStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimBusinessType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'BusinessTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'BusinessTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'BusinessTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'BusinessTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'BusinessTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimBusinessType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'BusinessTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'BusinessTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'BusinessTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'BusinessTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'BusinessTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimBusinessType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'BusinessTypeDimBusinessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'BusinessTypeDimBusinessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimBusinessTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'BusinessTypeDimBusinessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'BusinessTypeDimBusinessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationWebsiteURL';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationWebsiteURL';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'WebsiteURL', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationWebsiteURL';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationWebsiteURL';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationVATCertificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationVATCertificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'VATCertificationNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationVATCertificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationVATCertificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'TextDesciption', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationTaxIDNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationTaxIDNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'TaxIDNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationTaxIDNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationTaxIDNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ReferenceNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationRcName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationRcName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'RcName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationRcName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationRcName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationOrganizationCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationOrganizationCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'OrganizationCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationOrganizationCode';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationOrganizationCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationDisplayName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationDisplayName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DisplayName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationDisplayName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationDisplayName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimPagaAccountID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationDimOrganizationVerificationStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationDimOrganizationVerificationStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationVerificationStatusID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationDimOrganizationVerificationStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationDimOrganizationVerificationStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationDimOrganizationSubscriptionStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationDimOrganizationSubscriptionStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationSubscriptionStatusID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationDimOrganizationSubscriptionStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationDimOrganizationSubscriptionStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationDimOrganizationID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationDimOrganizationID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationDimOrganizationID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationDimOrganizationID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationDimBusinessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationDimBusinessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimBusinessTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationDimBusinessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'OrganizationDimBusinessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactIntegrationTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactIntegrationTransactionSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactIntegrationTransactionSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactIntegrationTransactionSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactIntegrationTransactionSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactIntegrationTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactIntegrationTransactionMessageText';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactIntegrationTransactionMessageText';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'MessageText', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactIntegrationTransactionMessageText';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactIntegrationTransactionMessageText';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactIntegrationTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactIntegrationTransactionIntegrationTx_Amount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactIntegrationTransactionIntegrationTx_Amount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IntegrationTx_Amount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactIntegrationTransactionIntegrationTx_Amount';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactIntegrationTransactionIntegrationTx_Amount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactIntegrationTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactIntegrationTransactionHasFinancialTx';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactIntegrationTransactionHasFinancialTx';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'HasFinancialTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactIntegrationTransactionHasFinancialTx';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactIntegrationTransactionHasFinancialTx';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactIntegrationTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactIntegrationTransactionFactIntegrationTxID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactIntegrationTransactionFactIntegrationTxID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FactIntegrationTxID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactIntegrationTransactionFactIntegrationTxID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactIntegrationTransactionFactIntegrationTxID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactIntegrationTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactIntegrationTransactionFactFinancialTxID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactIntegrationTransactionFactFinancialTxID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FactFinancialTxID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactIntegrationTransactionFactFinancialTxID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactIntegrationTransactionFactFinancialTxID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactIntegrationTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactIntegrationTransactionExternalReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactIntegrationTransactionExternalReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ExternalReferenceNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactIntegrationTransactionExternalReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactIntegrationTransactionExternalReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactIntegrationTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactIntegrationTransactionDimUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactIntegrationTransactionDimUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimUserID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactIntegrationTransactionDimUserID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactIntegrationTransactionDimUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactIntegrationTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactIntegrationTransactionDimProcessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactIntegrationTransactionDimProcessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimProcessTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactIntegrationTransactionDimProcessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactIntegrationTransactionDimProcessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactIntegrationTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactIntegrationTransactionDimIntegrationTxTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactIntegrationTransactionDimIntegrationTxTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimIntegrationTxTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactIntegrationTransactionDimIntegrationTxTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactIntegrationTransactionDimIntegrationTxTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactIntegrationTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactIntegrationTransactionDimIntegrationTxTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactIntegrationTransactionDimIntegrationTxTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimIntegrationTxTimeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactIntegrationTransactionDimIntegrationTxTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactIntegrationTransactionDimIntegrationTxTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactIntegrationTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactIntegrationTransactionDimIntegrationTxResultID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactIntegrationTransactionDimIntegrationTxResultID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimIntegrationTxResultID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactIntegrationTransactionDimIntegrationTxResultID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactIntegrationTransactionDimIntegrationTxResultID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactIntegrationTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactIntegrationTransactionDimIntegrationTxDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactIntegrationTransactionDimIntegrationTxDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimIntegrationTxDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactIntegrationTransactionDimIntegrationTxDateID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactIntegrationTransactionDimIntegrationTxDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactIntegrationTransaction', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactIntegrationTransactionDimExternalOrganizationID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactIntegrationTransactionDimExternalOrganizationID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimExternalOrganizationID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactIntegrationTransaction', @level2type = N'COLUMN', @level2name = N'FactIntegrationTransactionDimExternalOrganizationID';

