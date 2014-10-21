  

CREATE VIEW [OLAP].[FactAirtimeTxHeader]
AS

SELECT 
	[FactAirtimeTxHeader_6775545701600586158].[Amount] AS [FactAirtimeTxHeaderAmount]
	,[FactAirtimeTxHeader_6775545701600586158].[DimCreatedDateID] AS [FactAirtimeTxHeaderDimCreatedDateID]
	,[FactAirtimeTxHeader_6775545701600586158].[DimCreatedTimeID] AS [FactAirtimeTxHeaderDimCreatedTimeID]
	,[FactAirtimeTxHeader_6775545701600586158].[DimCurrencyID] AS [FactAirtimeTxHeaderDimCurrencyID]
	,[FactAirtimeTxHeader_6775545701600586158].[DimEffectiveDateID] AS [FactAirtimeTxHeaderDimEffectiveDateID]
	,[FactAirtimeTxHeader_6775545701600586158].[DimEffectiveTimeID] AS [FactAirtimeTxHeaderDimEffectiveTimeID]
	,[FactAirtimeTxHeader_6775545701600586158].[DimFinancialTxSubTypeID] AS [FactAirtimeTxHeaderDimFinancialTxSubTypeID]
	,[FactAirtimeTxHeader_6775545701600586158].[DimFinancialTxTypeID] AS [FactAirtimeTxHeaderDimFinancialTxTypeID]
	,[FactAirtimeTxHeader_6775545701600586158].[DimOrganizationUnitLevel4ID] AS [FactAirtimeTxHeaderDimOrganizationUnitLevel4ID]
	,[FactAirtimeTxHeader_6775545701600586158].[DimTransactionDateID] AS [FactAirtimeTxHeaderDimTransactionDateID]
	,[FactAirtimeTxHeader_6775545701600586158].[DimTransactionTimeID] AS [FactAirtimeTxHeaderDimTransactionTimeID]
	,[FactAirtimeTxHeader_6775545701600586158].[DimUserID] AS [FactAirtimeTxHeaderDimUserID]
	,[FactAirtimeTxHeader_6775545701600586158].[ExchangeRate] AS [FactAirtimeTxHeaderExchangeRate]
	,[FactAirtimeTxHeader_6775545701600586158].[ExternalReferenceNumber] AS [FactAirtimeTxHeaderExternalReferenceNumber]
	,[FactAirtimeTxHeader_6775545701600586158].[FactAirtimeTxHeaderID] AS [FactAirtimeTxHeaderID]
	,[FactAirtimeTxHeader_6775545701600586158].[FactProcessTxID] AS [FactAirtimeTxHeaderFactProcessTxID]
	,[FactAirtimeTxHeader_6775545701600586158].[Fee] AS [FactAirtimeTxHeaderFee]
	,[FactAirtimeTxHeader_6775545701600586158].[ForeignCurrencyAmount] AS [FactAirtimeTxHeaderForeignCurrencyAmount]
	,[FactAirtimeTxHeader_6775545701600586158].[OriginalFactAirtimeTxHeaderID] AS [FactAirtimeTxHeaderOriginalFactAirtimeTxHeaderID]
	,[FactAirtimeTxHeader_6775545701600586158].[ReferenceNumber] AS [FactAirtimeTxHeaderReferenceNumber]
	,[FactAirtimeTxHeader_6775545701600586158].[RelatedFactAirtimeTxHeaderID] AS [FactAirtimeTxHeaderRelatedFactAirtimeTxHeaderID]
	,[FactAirtimeTxHeader_6775545701600586158].[ShortCode] AS [FactAirtimeTxHeaderShortCode]
	,[FactAirtimeTxHeader_6775545701600586158].[SourceKey] AS [FactAirtimeTxHeaderSourceKey]
	,[FactAirtimeTxHeader_6775545701600586158].[TextDescription] AS [FactAirtimeTxHeaderTextDescription]
	,[DimCurrency_4634268615095996103].[ISOCode] AS [DimCurrencyISOCode]
	,[DimCurrency_4634268615095996103].[Name] AS [DimCurrencyName]
	,[DimCurrency_4634268615095996103].[SourceKey] AS [DimCurrencySourceKey]
	,[DimCurrency_4634268615095996103].[Symbol] AS [DimCurrencySymbol]
	,[DimFinancialTxSubType_2231754890401264373].[Name] AS [DimFinancialTxSubTypeName]
	,[DimFinancialTxSubType_2231754890401264373].[SourceKey] AS [DimFinancialTxSubTypeSourceKey]
	,[DimFinancialTxType_3659782866023293407].[FinancialTxCategory] AS [DimFinancialTxTypeFinancialTxCategory]
	,[DimFinancialTxType_3659782866023293407].[Name] AS [DimFinancialTxTypeName]
	,[DimFinancialTxType_3659782866023293407].[SourceKey] AS [DimFinancialTxTypeSourceKey]
	,[DimOrganizationUnitLevel4_4937489994670192663].[DimOrganizationUnitLevel3ID] AS [DimOrganizationUnitLevel4DimOrganizationUnitLevel3ID]
	,[DimOrganizationUnitLevel4_4937489994670192663].[DimOrganizationUnitTypeID] AS [DimOrganizationUnitLevel4DimOrganizationUnitTypeID]
	,[DimOrganizationUnitLevel4_4937489994670192663].[IdentificationNumber] AS [DimOrganizationUnitLevel4IdentificationNumber]
	,[DimOrganizationUnitLevel4_4937489994670192663].[Name] AS [DimOrganizationUnitLevel4Name]
	,[DimOrganizationUnitLevel4_4937489994670192663].[SourceKey] AS [DimOrganizationUnitLevel4SourceKey]
	,[DimOrganizationUnitLevel3_143050592154461658].[DimOrganizationUnitLevel2ID] AS [DimOrganizationUnitLevel3DimOrganizationUnitLevel2ID]
	,[DimOrganizationUnitLevel3_143050592154461658].[DimOrganizationUnitTypeID] AS [DimOrganizationUnitLevel3DimOrganizationUnitTypeID]
	,[DimOrganizationUnitLevel3_143050592154461658].[IdentificationNumber] AS [DimOrganizationUnitLevel3IdentificationNumber]
	,[DimOrganizationUnitLevel3_143050592154461658].[Name] AS [DimOrganizationUnitLevel3Name]
	,[DimOrganizationUnitLevel3_143050592154461658].[SourceKey] AS [DimOrganizationUnitLevel3SourceKey]
	,[DimOrganizationUnitLevel2_8847877411916963599].[DimOrganizationUnitLevel1ID] AS [DimOrganizationUnitLevel2DimOrganizationUnitLevel1ID]
	,[DimOrganizationUnitLevel2_8847877411916963599].[DimOrganizationUnitTypeID] AS [DimOrganizationUnitLevel2DimOrganizationUnitTypeID]
	,[DimOrganizationUnitLevel2_8847877411916963599].[IdentificationNumber] AS [DimOrganizationUnitLevel2IdentificationNumber]
	,[DimOrganizationUnitLevel2_8847877411916963599].[Name] AS [DimOrganizationUnitLevel2Name]
	,[DimOrganizationUnitLevel2_8847877411916963599].[SourceKey] AS [DimOrganizationUnitLevel2SourceKey]
	,[DimOrganizationUnitLevel1_6095352436062490506].[DimOrganizationID] AS [DimOrganizationUnitLevel1DimOrganizationID]
	,[DimOrganizationUnitLevel1_6095352436062490506].[DimOrganizationUnitTypeID] AS [DimOrganizationUnitLevel1DimOrganizationUnitTypeID]
	,[DimOrganizationUnitLevel1_6095352436062490506].[IdentificationNumber] AS [DimOrganizationUnitLevel1IdentificationNumber]
	,[DimOrganizationUnitLevel1_6095352436062490506].[Name] AS [DimOrganizationUnitLevel1Name]
	,[DimOrganizationUnitLevel1_6095352436062490506].[SourceKey] AS [DimOrganizationUnitLevel1SourceKey]
	,[DimOrganization_1803545937681862703].[DimBusinessTypeID] AS [DimOrganizationDimBusinessTypeID]
	,[DimOrganization_1803545937681862703].[DimChannelID] AS [DimOrganizationDimChannelID]
	,[DimOrganization_1803545937681862703].[DimMerchantCategoryID] AS [DimOrganizationDimMerchantCategoryID]
	,[DimOrganization_1803545937681862703].[DimOrganizationSubscriptionStatusID] AS [DimOrganizationSubscriptionStatusID]
	,[DimOrganization_1803545937681862703].[DimOrganizationVerificationStatusID] AS [DimOrganizationVerificationStatusID]
	,[DimOrganization_1803545937681862703].[DimPagaAccountID] AS [DimOrganizationDimPagaAccountID]
	,[DimOrganization_1803545937681862703].[DisplayName] AS [DimOrganizationDisplayName]
	,[DimOrganization_1803545937681862703].[Name] AS [DimOrganizationName]
	,[DimOrganization_1803545937681862703].[OrganizationCode] AS [DimOrganizationOrganizationCode]
	,[DimOrganization_1803545937681862703].[RcName] AS [DimOrganizationRcName]
	,[DimOrganization_1803545937681862703].[ReferenceNumber] AS [DimOrganizationReferenceNumber]
	,[DimOrganization_1803545937681862703].[SourceKey] AS [DimOrganizationSourceKey]
	,[DimOrganization_1803545937681862703].[TaxIDNumber] AS [DimOrganizationTaxIDNumber]
	,[DimOrganization_1803545937681862703].[TextDesciption] AS [DimOrganizationTextDesciption]
	,[DimOrganization_1803545937681862703].[VATCertificationNumber] AS [DimOrganizationVATCertificationNumber]
	,[DimOrganization_1803545937681862703].[WebsiteURL] AS [DimOrganizationWebsiteURL]
	,[DimBusinessType_4429880301486440326].[Name] AS [DimBusinessTypeName]
	,[DimBusinessType_4429880301486440326].[SourceKey] AS [DimBusinessTypeSourceKey]
	,[DimChannel_1521407055781503906].[Name] AS [DimChannelName]
	,[DimChannel_1521407055781503906].[SourceKey] AS [DimChannelSourceKey]
	,[DimChannel_1521407055781503906].[TextDesciption] AS [DimChannelTextDesciption]
	,[DimMerchantCategory_7206653432744459454].[Name] AS [DimMerchantCategoryName]
	,[DimMerchantCategory_7206653432744459454].[SourceKey] AS [DimMerchantCategorySourceKey]
	,[DimOrganizationSubscriptionStatus_7481463204382858226].[Name] AS [DimOrganizationSubscriptionStatusName]
	,[DimOrganizationSubscriptionStatus_7481463204382858226].[SourceKey] AS [DimOrganizationSubscriptionStatusSourceKey]
	,[DimOrganizationVerificationStatus_1621291357625186662].[Name] AS [DimOrganizationVerificationStatusName]
	,[DimOrganizationVerificationStatus_1621291357625186662].[SourceKey] AS [DimOrganizationVerificationStatusSourceKey]
	,[DimPagaAccount_7736498911970237068].[BankingStatus] AS [DimPagaAccountBankingStatus]
	,[DimPagaAccount_7736498911970237068].[CreatedDateID] AS [DimPagaAccountCreatedDateID]
	,[DimPagaAccount_7736498911970237068].[DimPagaAccountStatusID] AS [DimPagaAccountStatusID]
	,[DimPagaAccount_7736498911970237068].[ExternalAccountNumber] AS [DimPagaAccountExternalAccountNumber]
	,[DimPagaAccount_7736498911970237068].[hasOnlineAccount] AS [DimPagaAccounthasOnlineAccount]
	,[DimPagaAccount_7736498911970237068].[IsActive] AS [DimPagaAccountIsActive]
	,[DimPagaAccount_7736498911970237068].[IsAffiliate] AS [DimPagaAccountIsAffiliate]
	,[DimPagaAccount_7736498911970237068].[IsAgent] AS [DimPagaAccountIsAgent]
	,[DimPagaAccount_7736498911970237068].[IsBank] AS [DimPagaAccountIsBank]
	,[DimPagaAccount_7736498911970237068].[IsBusiness] AS [DimPagaAccountIsBusiness]
	,[DimPagaAccount_7736498911970237068].[IsCardProcessor] AS [DimPagaAccountIsCardProcessor]
	,[DimPagaAccount_7736498911970237068].[IsCashCollector] AS [DimPagaAccountIsCashCollector]
	,[DimPagaAccount_7736498911970237068].[IsCustomer] AS [DimPagaAccountIsCustomer]
	,[DimPagaAccount_7736498911970237068].[IsEnabled] AS [DimPagaAccountIsEnabled]
	,[DimPagaAccount_7736498911970237068].[IsMerchant] AS [DimPagaAccountIsMerchant]
	,[DimPagaAccount_7736498911970237068].[IsMobileOperator] AS [DimPagaAccountIsMobileOperator]
	,[DimPagaAccount_7736498911970237068].[IsPaga] AS [DimPagaAccountIsPaga]
	,[DimPagaAccount_7736498911970237068].[IsRemittanceProcessor] AS [DimPagaAccountIsRemittanceProcessor]
	,[DimPagaAccount_7736498911970237068].[IsServiceAggregator] AS [DimPagaAccountIsServiceAggregator]
	,[DimPagaAccount_7736498911970237068].[Name] AS [DimPagaAccountName]
	,[DimPagaAccount_7736498911970237068].[PagaAccountNumber] AS [DimPagaAccountPagaAccountNumber]
	,[DimPagaAccount_7736498911970237068].[RegistrationDateID] AS [DimPagaAccountRegistrationDateID]
	,[DimPagaAccount_7736498911970237068].[SourceKey] AS [DimPagaAccountSourceKey]
	,[DimPagaAccountStatus_7043496299571182465].[Name] AS [DimPagaAccountStatusName]
	,[DimPagaAccountStatus_7043496299571182465].[SourceKey] AS [DimPagaAccountStatusSourceKey]
	,[DimOrganizationUnitType_6243362842002666861].[Name] AS [DimOrganizationUnitTypeName]
	,[DimOrganizationUnitType_6243362842002666861].[SourceKey] AS [DimOrganizationUnitTypeSourceKey]
	,[DimUser_34513551534482989].[CreatedDateID] AS [DimUserCreatedDateID]
	,[DimUser_34513551534482989].[DateOfBirthID] AS [DimUserDateOfBirthID]
	,[DimUser_34513551534482989].[DimOrganizationUnitLevel4ID] AS [DimUserDimOrganizationUnitLevel4ID]
	,[DimUser_34513551534482989].[DimPagaAccountID] AS [DimUserDimPagaAccountID]
	,[DimUser_34513551534482989].[Email] AS [DimUserEmail]
	,[DimUser_34513551534482989].[FirstName] AS [DimUserFirstName]
	,[DimUser_34513551534482989].[IsEnabled] AS [DimUserIsEnabled]
	,[DimUser_34513551534482989].[LastName] AS [DimUserLastName]
	,[DimUser_34513551534482989].[MiddleName] AS [DimUserMiddleName]
	,[DimUser_34513551534482989].[Name] AS [DimUserName]
	,[DimUser_34513551534482989].[PhoneNumber] AS [DimUserPhoneNumber]
	,[DimUser_34513551534482989].[Sex] AS [DimUserSex]
	,[DimUser_34513551534482989].[SourceKey] AS [DimUserSourceKey]
	,[FactProcessTx_5263212493767213787].[AgentCommissionAmount] AS [FactProcessTxAgentCommissionAmount]
	,[FactProcessTx_5263212493767213787].[ATMReferenceNumber] AS [FactProcessTxATMReferenceNumber]
	,[FactProcessTx_5263212493767213787].[CardProcessorName] AS [FactProcessTxCardProcessorName]
	,[FactProcessTx_5263212493767213787].[CustomerBillerAccount] AS [FactProcessTxCustomerBillerAccount]
	,[FactProcessTx_5263212493767213787].[CustomerPhoneNumber] AS [FactProcessTxCustomerPhoneNumber]
	,[FactProcessTx_5263212493767213787].[DependentFactProcessTxID] AS [FactProcessTxDependentFactProcessTxID]
	,[FactProcessTx_5263212493767213787].[DepositNumber] AS [FactProcessTxDepositNumber]
	,[FactProcessTx_5263212493767213787].[DimAgentCommissionTypeID] AS [FactProcessTxDimAgentCommissionTypeID]
	,[FactProcessTx_5263212493767213787].[DimApprovedByUserID] AS [FactProcessTxDimApprovedByUserID]
	,[FactProcessTx_5263212493767213787].[DimCancellationApprovedByUserID] AS [FactProcessTxDimCancellationApprovedByUserID]
	,[FactProcessTx_5263212493767213787].[DimChannelID] AS [FactProcessTxDimChannelID]
	,[FactProcessTx_5263212493767213787].[DimCompletedDateID] AS [FactProcessTxDimCompletedDateID]
	,[FactProcessTx_5263212493767213787].[DimCompletedTimeID] AS [FactProcessTxDimCompletedTimeID]
	,[FactProcessTx_5263212493767213787].[DimCreatedDateID] AS [FactProcessTxDimCreatedDateID]
	,[FactProcessTx_5263212493767213787].[DimCreatedTimeID] AS [FactProcessTxDimCreatedTimeID]
	,[FactProcessTx_5263212493767213787].[DimInitiatingUserID] AS [FactProcessTxDimInitiatingUserID]
	,[FactProcessTx_5263212493767213787].[DimOnBehalffUserID] AS [FactProcessTxDimOnBehalffUserID]
	,[FactProcessTx_5263212493767213787].[DimProcessStatusID] AS [FactProcessTxDimProcessStatusID]
	,[FactProcessTx_5263212493767213787].[DimProcessTypeID] AS [FactProcessTxDimProcessTypeID]
	,[FactProcessTx_5263212493767213787].[DimReceivingUserID] AS [FactProcessTxDimReceivingUserID]
	,[FactProcessTx_5263212493767213787].[DimStartedDateID] AS [FactProcessTxDimStartedDateID]
	,[FactProcessTx_5263212493767213787].[DimStartedTimeID] AS [FactProcessTxDimStartedTimeID]
	,[FactProcessTx_5263212493767213787].[DimVerifiedByUserID] AS [FactProcessTxDimVerifiedByUserID]
	,[FactProcessTx_5263212493767213787].[IntegrationReferenceNumber] AS [FactProcessTxIntegrationReferenceNumber]
	,[FactProcessTx_5263212493767213787].[LinkedPhoneNumber] AS [FactProcessTxLinkedPhoneNumber]
	,[FactProcessTx_5263212493767213787].[MerchantConfirmationCode] AS [FactProcessTxMerchantConfirmationCode]
	,[FactProcessTx_5263212493767213787].[MerchantCustomerAccountNumber] AS [FactProcessTxMerchantCustomerAccountNumber]
	,[FactProcessTx_5263212493767213787].[OriginalFactProcessTxID] AS [FactProcessTxOriginalFactProcessTxID]
	,[FactProcessTx_5263212493767213787].[PaymentSource] AS [FactProcessTxPaymentSource]
	,[FactProcessTx_5263212493767213787].[ProcessAmount] AS [FactProcessTxProcessAmount]
	,[FactProcessTx_5263212493767213787].[ProcessCode] AS [FactProcessTxProcessCode]
	,[FactProcessTx_5263212493767213787].[ProcessFee] AS [FactProcessTxProcessFee]
	,[FactProcessTx_5263212493767213787].[ReferenceNumber] AS [FactProcessTxReferenceNumber]
	,[FactProcessTx_5263212493767213787].[SenderPhoneNumber] AS [FactProcessTxSenderPhoneNumber]
	,[FactProcessTx_5263212493767213787].[SourceKey] AS [FactProcessTxSourceKey]
	,[FactProcessTx_5263212493767213787].[VerificationStatus] AS [FactProcessTxVerificationStatus]
	,[FactProcessTx_5263212493767213787].[WithdrawalCode] AS [FactProcessTxWithdrawalCode]
	,[DimAgentCommissionType_8357012722581114300].[Name] AS [DimAgentCommissionTypeName]
	,[DimAgentCommissionType_8357012722581114300].[SourceKey] AS [DimAgentCommissionTypeSourceKey]
	,[DimProcessStatus_6898510153863627082].[Name] AS [DimProcessStatusName]
	,[DimProcessStatus_6898510153863627082].[SourceKey] AS [DimProcessStatusSourceKey]
	,[DimProcessType_8280238015634398926].[DescriptionText] AS [DimProcessTypeDescriptionText]
	,[DimProcessType_8280238015634398926].[DimProcessTypeGroupID] AS [DimProcessTypeGroupID]
	,[DimProcessType_8280238015634398926].[Name] AS [DimProcessTypeName]
	,[DimProcessType_8280238015634398926].[SourceKey] AS [DimProcessTypeSourceKey]
	,[DimProcessTypeGroup_4303359284168953259].[Name] AS [DimProcessTypeGroupName]
	,[DimProcessTypeGroup_4303359284168953259].[SourceKey] AS [DimProcessTypeGroupSourceKey]
FROM [Airtime].[FactAirtimeTxHeader] AS [FactAirtimeTxHeader_6775545701600586158]

    LEFT JOIN [Finance].[DimCurrency] AS [DimCurrency_4634268615095996103] 
    
    ON  [FactAirtimeTxHeader_6775545701600586158].[DimCurrencyID] = [DimCurrency_4634268615095996103].[DimCurrencyID]
        

    LEFT JOIN [Classification].[DimFinancialTxSubType] AS [DimFinancialTxSubType_2231754890401264373] 
    
    ON  [FactAirtimeTxHeader_6775545701600586158].[DimFinancialTxSubTypeID] = [DimFinancialTxSubType_2231754890401264373].[DimFinancialTxSubTypeID]
        

    JOIN [Classification].[DimFinancialTxType] AS [DimFinancialTxType_3659782866023293407] 
    
        ON  [FactAirtimeTxHeader_6775545701600586158].[DimFinancialTxTypeID] = [DimFinancialTxType_3659782866023293407].[DimFinancialTxTypeID]

    LEFT JOIN [Shared].[DimOrganizationUnitLevel4] AS [DimOrganizationUnitLevel4_4937489994670192663] 
    
    JOIN [Shared].[DimOrganizationUnitLevel3] AS [DimOrganizationUnitLevel3_143050592154461658] 
    
    JOIN [Shared].[DimOrganizationUnitLevel2] AS [DimOrganizationUnitLevel2_8847877411916963599] 
    
    JOIN [Shared].[DimOrganizationUnitLevel1] AS [DimOrganizationUnitLevel1_6095352436062490506] 
    
    JOIN [Shared].[DimOrganization] AS [DimOrganization_1803545937681862703] 
    
    JOIN [Classification].[DimBusinessType] AS [DimBusinessType_4429880301486440326] 
    
        ON  [DimOrganization_1803545937681862703].[DimBusinessTypeID] = [DimBusinessType_4429880301486440326].[DimBusinessTypeID]

    JOIN [Activity].[DimChannel] AS [DimChannel_1521407055781503906] 
    
        ON  [DimOrganization_1803545937681862703].[DimChannelID] = [DimChannel_1521407055781503906].[DimChannelID]

    JOIN [Classification].[DimMerchantCategory] AS [DimMerchantCategory_7206653432744459454] 
    
        ON  [DimOrganization_1803545937681862703].[DimMerchantCategoryID] = [DimMerchantCategory_7206653432744459454].[DimMerchantCategoryID]

    JOIN [Classification].[DimOrganizationSubscriptionStatus] AS [DimOrganizationSubscriptionStatus_7481463204382858226] 
    
        ON  [DimOrganization_1803545937681862703].[DimOrganizationSubscriptionStatusID] = [DimOrganizationSubscriptionStatus_7481463204382858226].[DimOrganizationSubscriptionStatusID]

    JOIN [Classification].[DimOrganizationVerificationStatus] AS [DimOrganizationVerificationStatus_1621291357625186662] 
    
        ON  [DimOrganization_1803545937681862703].[DimOrganizationVerificationStatusID] = [DimOrganizationVerificationStatus_1621291357625186662].[DimOrganizationVerificationStatusID]

    JOIN [Shared].[DimPagaAccount] AS [DimPagaAccount_7736498911970237068] 
    
    JOIN [Classification].[DimPagaAccountStatus] AS [DimPagaAccountStatus_7043496299571182465] 
    
        ON  [DimPagaAccount_7736498911970237068].[DimPagaAccountStatusID] = [DimPagaAccountStatus_7043496299571182465].[DimPagaAccountStatusID]

        ON  [DimOrganization_1803545937681862703].[DimPagaAccountID] = [DimPagaAccount_7736498911970237068].[DimPagaAccountID]

        ON  [DimOrganizationUnitLevel1_6095352436062490506].[DimOrganizationID] = [DimOrganization_1803545937681862703].[DimOrganizationID]

    JOIN [Classification].[DimOrganizationUnitType] AS [DimOrganizationUnitType_6243362842002666861] 
    
        ON  [DimOrganizationUnitLevel1_6095352436062490506].[DimOrganizationUnitTypeID] = [DimOrganizationUnitType_6243362842002666861].[DimOrganizationUnitTypeID]

        ON  [DimOrganizationUnitLevel2_8847877411916963599].[DimOrganizationUnitLevel1ID] = [DimOrganizationUnitLevel1_6095352436062490506].[DimOrganizationUnitLevel1ID]

    JOIN [Classification].[DimOrganizationUnitType] AS [DimOrganizationUnitType_1586901166843806226] 
    
        ON  [DimOrganizationUnitLevel2_8847877411916963599].[DimOrganizationUnitTypeID] = [DimOrganizationUnitType_1586901166843806226].[DimOrganizationUnitTypeID]

        ON  [DimOrganizationUnitLevel3_143050592154461658].[DimOrganizationUnitLevel2ID] = [DimOrganizationUnitLevel2_8847877411916963599].[DimOrganizationUnitLevel2ID]

    JOIN [Classification].[DimOrganizationUnitType] AS [DimOrganizationUnitType_4283843461505932159] 
    
        ON  [DimOrganizationUnitLevel3_143050592154461658].[DimOrganizationUnitTypeID] = [DimOrganizationUnitType_4283843461505932159].[DimOrganizationUnitTypeID]

        ON  [DimOrganizationUnitLevel4_4937489994670192663].[DimOrganizationUnitLevel3ID] = [DimOrganizationUnitLevel3_143050592154461658].[DimOrganizationUnitLevel3ID]

    JOIN [Classification].[DimOrganizationUnitType] AS [DimOrganizationUnitType_8301396306685612138] 
    
        ON  [DimOrganizationUnitLevel4_4937489994670192663].[DimOrganizationUnitTypeID] = [DimOrganizationUnitType_8301396306685612138].[DimOrganizationUnitTypeID]

    ON  [FactAirtimeTxHeader_6775545701600586158].[DimOrganizationUnitLevel4ID] = [DimOrganizationUnitLevel4_4937489994670192663].[DimOrganizationUnitLevel4ID]
        

    LEFT JOIN [Shared].[DimUser] AS [DimUser_34513551534482989] 
    
    LEFT JOIN [Shared].[DimOrganizationUnitLevel4] AS [DimOrganizationUnitLevel4_7949188258461032606] 
    
    JOIN [Shared].[DimOrganizationUnitLevel3] AS [DimOrganizationUnitLevel3_1496752679249243951] 
    
    JOIN [Shared].[DimOrganizationUnitLevel2] AS [DimOrganizationUnitLevel2_9221588265931599646] 
    
    JOIN [Shared].[DimOrganizationUnitLevel1] AS [DimOrganizationUnitLevel1_7996387110745567859] 
    
    JOIN [Shared].[DimOrganization] AS [DimOrganization_6813960895521386094] 
    
    JOIN [Classification].[DimBusinessType] AS [DimBusinessType_6230438344720873973] 
    
        ON  [DimOrganization_6813960895521386094].[DimBusinessTypeID] = [DimBusinessType_6230438344720873973].[DimBusinessTypeID]

    JOIN [Activity].[DimChannel] AS [DimChannel_4956045245256180313] 
    
        ON  [DimOrganization_6813960895521386094].[DimChannelID] = [DimChannel_4956045245256180313].[DimChannelID]

    JOIN [Classification].[DimMerchantCategory] AS [DimMerchantCategory_2368935709394929321] 
    
        ON  [DimOrganization_6813960895521386094].[DimMerchantCategoryID] = [DimMerchantCategory_2368935709394929321].[DimMerchantCategoryID]

    JOIN [Classification].[DimOrganizationSubscriptionStatus] AS [DimOrganizationSubscriptionStatus_5292784806562059997] 
    
        ON  [DimOrganization_6813960895521386094].[DimOrganizationSubscriptionStatusID] = [DimOrganizationSubscriptionStatus_5292784806562059997].[DimOrganizationSubscriptionStatusID]

    JOIN [Classification].[DimOrganizationVerificationStatus] AS [DimOrganizationVerificationStatus_96966134787116809] 
    
        ON  [DimOrganization_6813960895521386094].[DimOrganizationVerificationStatusID] = [DimOrganizationVerificationStatus_96966134787116809].[DimOrganizationVerificationStatusID]

    JOIN [Shared].[DimPagaAccount] AS [DimPagaAccount_3969687768887875229] 
    
        ON  [DimOrganization_6813960895521386094].[DimPagaAccountID] = [DimPagaAccount_3969687768887875229].[DimPagaAccountID]

        ON  [DimOrganizationUnitLevel1_7996387110745567859].[DimOrganizationID] = [DimOrganization_6813960895521386094].[DimOrganizationID]

    JOIN [Classification].[DimOrganizationUnitType] AS [DimOrganizationUnitType_4488991550183189630] 
    
        ON  [DimOrganizationUnitLevel1_7996387110745567859].[DimOrganizationUnitTypeID] = [DimOrganizationUnitType_4488991550183189630].[DimOrganizationUnitTypeID]

        ON  [DimOrganizationUnitLevel2_9221588265931599646].[DimOrganizationUnitLevel1ID] = [DimOrganizationUnitLevel1_7996387110745567859].[DimOrganizationUnitLevel1ID]

    JOIN [Classification].[DimOrganizationUnitType] AS [DimOrganizationUnitType_3226554464350592681] 
    
        ON  [DimOrganizationUnitLevel2_9221588265931599646].[DimOrganizationUnitTypeID] = [DimOrganizationUnitType_3226554464350592681].[DimOrganizationUnitTypeID]

        ON  [DimOrganizationUnitLevel3_1496752679249243951].[DimOrganizationUnitLevel2ID] = [DimOrganizationUnitLevel2_9221588265931599646].[DimOrganizationUnitLevel2ID]

    JOIN [Classification].[DimOrganizationUnitType] AS [DimOrganizationUnitType_8238542822710063666] 
    
        ON  [DimOrganizationUnitLevel3_1496752679249243951].[DimOrganizationUnitTypeID] = [DimOrganizationUnitType_8238542822710063666].[DimOrganizationUnitTypeID]

        ON  [DimOrganizationUnitLevel4_7949188258461032606].[DimOrganizationUnitLevel3ID] = [DimOrganizationUnitLevel3_1496752679249243951].[DimOrganizationUnitLevel3ID]

    JOIN [Classification].[DimOrganizationUnitType] AS [DimOrganizationUnitType_7758231706877891543] 
    
        ON  [DimOrganizationUnitLevel4_7949188258461032606].[DimOrganizationUnitTypeID] = [DimOrganizationUnitType_7758231706877891543].[DimOrganizationUnitTypeID]

    ON  [DimUser_34513551534482989].[DimOrganizationUnitLevel4ID] = [DimOrganizationUnitLevel4_7949188258461032606].[DimOrganizationUnitLevel4ID]
        

    LEFT JOIN [Shared].[DimPagaAccount] AS [DimPagaAccount_5960421970807043856] 
    
    JOIN [Classification].[DimPagaAccountStatus] AS [DimPagaAccountStatus_9020864826342165997] 
    
        ON  [DimPagaAccount_5960421970807043856].[DimPagaAccountStatusID] = [DimPagaAccountStatus_9020864826342165997].[DimPagaAccountStatusID]

    ON  [DimUser_34513551534482989].[DimPagaAccountID] = [DimPagaAccount_5960421970807043856].[DimPagaAccountID]
        

    ON  [FactAirtimeTxHeader_6775545701600586158].[DimUserID] = [DimUser_34513551534482989].[DimUserID]
        

    JOIN [Activity].[FactProcessTx] AS [FactProcessTx_5263212493767213787] 
    
    LEFT JOIN [Classification].[DimAgentCommissionType] AS [DimAgentCommissionType_8357012722581114300] 
    
    ON  [FactProcessTx_5263212493767213787].[DimAgentCommissionTypeID] = [DimAgentCommissionType_8357012722581114300].[DimAgentCommissionTypeID]
        

    LEFT JOIN [Shared].[DimUser] AS [DimUser_5038550800128331544] 
    
    LEFT JOIN [Shared].[DimOrganizationUnitLevel4] AS [DimOrganizationUnitLevel4_928054258248934991] 
    
    JOIN [Shared].[DimOrganizationUnitLevel3] AS [DimOrganizationUnitLevel3_7307211607271297212] 
    
    JOIN [Shared].[DimOrganizationUnitLevel2] AS [DimOrganizationUnitLevel2_7700467098167299751] 
    
    JOIN [Shared].[DimOrganizationUnitLevel1] AS [DimOrganizationUnitLevel1_3368042552966019768] 
    
    JOIN [Shared].[DimOrganization] AS [DimOrganization_1438500092895270361] 
    
        ON  [DimOrganizationUnitLevel1_3368042552966019768].[DimOrganizationID] = [DimOrganization_1438500092895270361].[DimOrganizationID]

    JOIN [Classification].[DimOrganizationUnitType] AS [DimOrganizationUnitType_1467364328426004141] 
    
        ON  [DimOrganizationUnitLevel1_3368042552966019768].[DimOrganizationUnitTypeID] = [DimOrganizationUnitType_1467364328426004141].[DimOrganizationUnitTypeID]

        ON  [DimOrganizationUnitLevel2_7700467098167299751].[DimOrganizationUnitLevel1ID] = [DimOrganizationUnitLevel1_3368042552966019768].[DimOrganizationUnitLevel1ID]

    JOIN [Classification].[DimOrganizationUnitType] AS [DimOrganizationUnitType_6866661969895637900] 
    
        ON  [DimOrganizationUnitLevel2_7700467098167299751].[DimOrganizationUnitTypeID] = [DimOrganizationUnitType_6866661969895637900].[DimOrganizationUnitTypeID]

        ON  [DimOrganizationUnitLevel3_7307211607271297212].[DimOrganizationUnitLevel2ID] = [DimOrganizationUnitLevel2_7700467098167299751].[DimOrganizationUnitLevel2ID]

    JOIN [Classification].[DimOrganizationUnitType] AS [DimOrganizationUnitType_8013192392883138271] 
    
        ON  [DimOrganizationUnitLevel3_7307211607271297212].[DimOrganizationUnitTypeID] = [DimOrganizationUnitType_8013192392883138271].[DimOrganizationUnitTypeID]

        ON  [DimOrganizationUnitLevel4_928054258248934991].[DimOrganizationUnitLevel3ID] = [DimOrganizationUnitLevel3_7307211607271297212].[DimOrganizationUnitLevel3ID]

    JOIN [Classification].[DimOrganizationUnitType] AS [DimOrganizationUnitType_6954536473688404596] 
    
        ON  [DimOrganizationUnitLevel4_928054258248934991].[DimOrganizationUnitTypeID] = [DimOrganizationUnitType_6954536473688404596].[DimOrganizationUnitTypeID]

    ON  [DimUser_5038550800128331544].[DimOrganizationUnitLevel4ID] = [DimOrganizationUnitLevel4_928054258248934991].[DimOrganizationUnitLevel4ID]
        

    LEFT JOIN [Shared].[DimPagaAccount] AS [DimPagaAccount_5107115553331143851] 
    
    JOIN [Classification].[DimPagaAccountStatus] AS [DimPagaAccountStatus_9064914489635353968] 
    
        ON  [DimPagaAccount_5107115553331143851].[DimPagaAccountStatusID] = [DimPagaAccountStatus_9064914489635353968].[DimPagaAccountStatusID]

    ON  [DimUser_5038550800128331544].[DimPagaAccountID] = [DimPagaAccount_5107115553331143851].[DimPagaAccountID]
        

    ON  [FactProcessTx_5263212493767213787].[DimApprovedByUserID] = [DimUser_5038550800128331544].[DimUserID]
        

    LEFT JOIN [Shared].[DimUser] AS [DimUser_4743804449567080437] 
    
    LEFT JOIN [Shared].[DimOrganizationUnitLevel4] AS [DimOrganizationUnitLevel4_2211293810469767414] 
    
    JOIN [Shared].[DimOrganizationUnitLevel3] AS [DimOrganizationUnitLevel3_7864255312421201127] 
    
    JOIN [Shared].[DimOrganizationUnitLevel2] AS [DimOrganizationUnitLevel2_8983833568563682218] 
    
    JOIN [Shared].[DimOrganizationUnitLevel1] AS [DimOrganizationUnitLevel1_3215926487328908661] 
    
    JOIN [Shared].[DimOrganization] AS [DimOrganization_4643716431703196506] 
    
        ON  [DimOrganizationUnitLevel1_3215926487328908661].[DimOrganizationID] = [DimOrganization_4643716431703196506].[DimOrganizationID]

    JOIN [Classification].[DimOrganizationUnitType] AS [DimOrganizationUnitType_7789961810308851206] 
    
        ON  [DimOrganizationUnitLevel1_3215926487328908661].[DimOrganizationUnitTypeID] = [DimOrganizationUnitType_7789961810308851206].[DimOrganizationUnitTypeID]

        ON  [DimOrganizationUnitLevel2_8983833568563682218].[DimOrganizationUnitLevel1ID] = [DimOrganizationUnitLevel1_3215926487328908661].[DimOrganizationUnitLevel1ID]

    JOIN [Classification].[DimOrganizationUnitType] AS [DimOrganizationUnitType_7612754919124178545] 
    
        ON  [DimOrganizationUnitLevel2_8983833568563682218].[DimOrganizationUnitTypeID] = [DimOrganizationUnitType_7612754919124178545].[DimOrganizationUnitTypeID]

        ON  [DimOrganizationUnitLevel3_7864255312421201127].[DimOrganizationUnitLevel2ID] = [DimOrganizationUnitLevel2_8983833568563682218].[DimOrganizationUnitLevel2ID]

    JOIN [Classification].[DimOrganizationUnitType] AS [DimOrganizationUnitType_4118965469713272506] 
    
        ON  [DimOrganizationUnitLevel3_7864255312421201127].[DimOrganizationUnitTypeID] = [DimOrganizationUnitType_4118965469713272506].[DimOrganizationUnitTypeID]

        ON  [DimOrganizationUnitLevel4_2211293810469767414].[DimOrganizationUnitLevel3ID] = [DimOrganizationUnitLevel3_7864255312421201127].[DimOrganizationUnitLevel3ID]

    JOIN [Classification].[DimOrganizationUnitType] AS [DimOrganizationUnitType_4270348186097483247] 
    
        ON  [DimOrganizationUnitLevel4_2211293810469767414].[DimOrganizationUnitTypeID] = [DimOrganizationUnitType_4270348186097483247].[DimOrganizationUnitTypeID]

    ON  [DimUser_4743804449567080437].[DimOrganizationUnitLevel4ID] = [DimOrganizationUnitLevel4_2211293810469767414].[DimOrganizationUnitLevel4ID]
        

    LEFT JOIN [Shared].[DimPagaAccount] AS [DimPagaAccount_8921324760489681048] 
    
    JOIN [Classification].[DimPagaAccountStatus] AS [DimPagaAccountStatus_2508327603780695445] 
    
        ON  [DimPagaAccount_8921324760489681048].[DimPagaAccountStatusID] = [DimPagaAccountStatus_2508327603780695445].[DimPagaAccountStatusID]

    ON  [DimUser_4743804449567080437].[DimPagaAccountID] = [DimPagaAccount_8921324760489681048].[DimPagaAccountID]
        

    ON  [FactProcessTx_5263212493767213787].[DimCancellationApprovedByUserID] = [DimUser_4743804449567080437].[DimUserID]
        

    JOIN [Activity].[DimChannel] AS [DimChannel_6460871672155903418] 
    
        ON  [FactProcessTx_5263212493767213787].[DimChannelID] = [DimChannel_6460871672155903418].[DimChannelID]

    LEFT JOIN [Shared].[DimUser] AS [DimUser_4478212065021833270] 
    
    LEFT JOIN [Shared].[DimOrganizationUnitLevel4] AS [DimOrganizationUnitLevel4_806168322773854235] 
    
    JOIN [Shared].[DimOrganizationUnitLevel3] AS [DimOrganizationUnitLevel3_8996214192919434278] 
    
    JOIN [Shared].[DimOrganizationUnitLevel2] AS [DimOrganizationUnitLevel2_2304751649784171971] 
    
    JOIN [Shared].[DimOrganizationUnitLevel1] AS [DimOrganizationUnitLevel1_139701367730413262] 
    
    JOIN [Shared].[DimOrganization] AS [DimOrganization_6559760741413403651] 
    
        ON  [DimOrganizationUnitLevel1_139701367730413262].[DimOrganizationID] = [DimOrganization_6559760741413403651].[DimOrganizationID]

    JOIN [Classification].[DimOrganizationUnitType] AS [DimOrganizationUnitType_3038928791290465639] 
    
        ON  [DimOrganizationUnitLevel1_139701367730413262].[DimOrganizationUnitTypeID] = [DimOrganizationUnitType_3038928791290465639].[DimOrganizationUnitTypeID]

        ON  [DimOrganizationUnitLevel2_2304751649784171971].[DimOrganizationUnitLevel1ID] = [DimOrganizationUnitLevel1_139701367730413262].[DimOrganizationUnitLevel1ID]

    JOIN [Classification].[DimOrganizationUnitType] AS [DimOrganizationUnitType_7187058202311155278] 
    
        ON  [DimOrganizationUnitLevel2_2304751649784171971].[DimOrganizationUnitTypeID] = [DimOrganizationUnitType_7187058202311155278].[DimOrganizationUnitTypeID]

        ON  [DimOrganizationUnitLevel3_8996214192919434278].[DimOrganizationUnitLevel2ID] = [DimOrganizationUnitLevel2_2304751649784171971].[DimOrganizationUnitLevel2ID]

    JOIN [Classification].[DimOrganizationUnitType] AS [DimOrganizationUnitType_3804222446517624125] 
    
        ON  [DimOrganizationUnitLevel3_8996214192919434278].[DimOrganizationUnitTypeID] = [DimOrganizationUnitType_3804222446517624125].[DimOrganizationUnitTypeID]

        ON  [DimOrganizationUnitLevel4_806168322773854235].[DimOrganizationUnitLevel3ID] = [DimOrganizationUnitLevel3_8996214192919434278].[DimOrganizationUnitLevel3ID]

    JOIN [Classification].[DimOrganizationUnitType] AS [DimOrganizationUnitType_6322760183277702378] 
    
        ON  [DimOrganizationUnitLevel4_806168322773854235].[DimOrganizationUnitTypeID] = [DimOrganizationUnitType_6322760183277702378].[DimOrganizationUnitTypeID]

    ON  [DimUser_4478212065021833270].[DimOrganizationUnitLevel4ID] = [DimOrganizationUnitLevel4_806168322773854235].[DimOrganizationUnitLevel4ID]
        

    LEFT JOIN [Shared].[DimPagaAccount] AS [DimPagaAccount_5327659471496176475] 
    
    JOIN [Classification].[DimPagaAccountStatus] AS [DimPagaAccountStatus_256651654988459662] 
    
        ON  [DimPagaAccount_5327659471496176475].[DimPagaAccountStatusID] = [DimPagaAccountStatus_256651654988459662].[DimPagaAccountStatusID]

    ON  [DimUser_4478212065021833270].[DimPagaAccountID] = [DimPagaAccount_5327659471496176475].[DimPagaAccountID]
        

    ON  [FactProcessTx_5263212493767213787].[DimInitiatingUserID] = [DimUser_4478212065021833270].[DimUserID]
        

    LEFT JOIN [Shared].[DimUser] AS [DimUser_3255779230394657435] 
    
    LEFT JOIN [Shared].[DimOrganizationUnitLevel4] AS [DimOrganizationUnitLevel4_8339219384591190748] 
    
    JOIN [Shared].[DimOrganizationUnitLevel3] AS [DimOrganizationUnitLevel3_3965424240992625279] 
    
    JOIN [Shared].[DimOrganizationUnitLevel2] AS [DimOrganizationUnitLevel2_6133984485814502028] 
    
    JOIN [Shared].[DimOrganizationUnitLevel1] AS [DimOrganizationUnitLevel1_7409324214932351267] 
    
    JOIN [Shared].[DimOrganization] AS [DimOrganization_7148664209903218332] 
    
        ON  [DimOrganizationUnitLevel1_7409324214932351267].[DimOrganizationID] = [DimOrganization_7148664209903218332].[DimOrganizationID]

    JOIN [Classification].[DimOrganizationUnitType] AS [DimOrganizationUnitType_2269074804439852760] 
    
        ON  [DimOrganizationUnitLevel1_7409324214932351267].[DimOrganizationUnitTypeID] = [DimOrganizationUnitType_2269074804439852760].[DimOrganizationUnitTypeID]

        ON  [DimOrganizationUnitLevel2_6133984485814502028].[DimOrganizationUnitLevel1ID] = [DimOrganizationUnitLevel1_7409324214932351267].[DimOrganizationUnitLevel1ID]

    JOIN [Classification].[DimOrganizationUnitType] AS [DimOrganizationUnitType_1795050756784334375] 
    
        ON  [DimOrganizationUnitLevel2_6133984485814502028].[DimOrganizationUnitTypeID] = [DimOrganizationUnitType_1795050756784334375].[DimOrganizationUnitTypeID]

        ON  [DimOrganizationUnitLevel3_3965424240992625279].[DimOrganizationUnitLevel2ID] = [DimOrganizationUnitLevel2_6133984485814502028].[DimOrganizationUnitLevel2ID]

    JOIN [Classification].[DimOrganizationUnitType] AS [DimOrganizationUnitType_7074098404597948100] 
    
        ON  [DimOrganizationUnitLevel3_3965424240992625279].[DimOrganizationUnitTypeID] = [DimOrganizationUnitType_7074098404597948100].[DimOrganizationUnitTypeID]

        ON  [DimOrganizationUnitLevel4_8339219384591190748].[DimOrganizationUnitLevel3ID] = [DimOrganizationUnitLevel3_3965424240992625279].[DimOrganizationUnitLevel3ID]

    JOIN [Classification].[DimOrganizationUnitType] AS [DimOrganizationUnitType_3013154376985235945] 
    
        ON  [DimOrganizationUnitLevel4_8339219384591190748].[DimOrganizationUnitTypeID] = [DimOrganizationUnitType_3013154376985235945].[DimOrganizationUnitTypeID]

    ON  [DimUser_3255779230394657435].[DimOrganizationUnitLevel4ID] = [DimOrganizationUnitLevel4_8339219384591190748].[DimOrganizationUnitLevel4ID]
        

    LEFT JOIN [Shared].[DimPagaAccount] AS [DimPagaAccount_476178094333917622] 
    
    JOIN [Classification].[DimPagaAccountStatus] AS [DimPagaAccountStatus_6379398753333063571] 
    
        ON  [DimPagaAccount_476178094333917622].[DimPagaAccountStatusID] = [DimPagaAccountStatus_6379398753333063571].[DimPagaAccountStatusID]

    ON  [DimUser_3255779230394657435].[DimPagaAccountID] = [DimPagaAccount_476178094333917622].[DimPagaAccountID]
        

    ON  [FactProcessTx_5263212493767213787].[DimOnBehalffUserID] = [DimUser_3255779230394657435].[DimUserID]
        

    JOIN [Classification].[DimProcessStatus] AS [DimProcessStatus_6898510153863627082] 
    
        ON  [FactProcessTx_5263212493767213787].[DimProcessStatusID] = [DimProcessStatus_6898510153863627082].[DimProcessStatusID]

    JOIN [Classification].[DimProcessType] AS [DimProcessType_8280238015634398926] 
    
    JOIN [Classification].[DimProcessTypeGroup] AS [DimProcessTypeGroup_4303359284168953259] 
    
        ON  [DimProcessType_8280238015634398926].[DimProcessTypeGroupID] = [DimProcessTypeGroup_4303359284168953259].[DimProcessTypeGroupID]

        ON  [FactProcessTx_5263212493767213787].[DimProcessTypeID] = [DimProcessType_8280238015634398926].[DimProcessTypeID]

    LEFT JOIN [Shared].[DimUser] AS [DimUser_598778366576537018] 
    
    LEFT JOIN [Shared].[DimOrganizationUnitLevel4] AS [DimOrganizationUnitLevel4_4593778254620764769] 
    
    JOIN [Shared].[DimOrganizationUnitLevel3] AS [DimOrganizationUnitLevel3_610907285151922510] 
    
    JOIN [Shared].[DimOrganizationUnitLevel2] AS [DimOrganizationUnitLevel2_5217956465274166281] 
    
    JOIN [Shared].[DimOrganizationUnitLevel1] AS [DimOrganizationUnitLevel1_6753167984615280562] 
    
    JOIN [Shared].[DimOrganization] AS [DimOrganization_3952256806841623735] 
    
        ON  [DimOrganizationUnitLevel1_6753167984615280562].[DimOrganizationID] = [DimOrganization_3952256806841623735].[DimOrganizationID]

    JOIN [Classification].[DimOrganizationUnitType] AS [DimOrganizationUnitType_3305206895121466459] 
    
        ON  [DimOrganizationUnitLevel1_6753167984615280562].[DimOrganizationUnitTypeID] = [DimOrganizationUnitType_3305206895121466459].[DimOrganizationUnitTypeID]

        ON  [DimOrganizationUnitLevel2_5217956465274166281].[DimOrganizationUnitLevel1ID] = [DimOrganizationUnitLevel1_6753167984615280562].[DimOrganizationUnitLevel1ID]

    JOIN [Classification].[DimOrganizationUnitType] AS [DimOrganizationUnitType_3699797465144290890] 
    
        ON  [DimOrganizationUnitLevel2_5217956465274166281].[DimOrganizationUnitTypeID] = [DimOrganizationUnitType_3699797465144290890].[DimOrganizationUnitTypeID]

        ON  [DimOrganizationUnitLevel3_610907285151922510].[DimOrganizationUnitLevel2ID] = [DimOrganizationUnitLevel2_5217956465274166281].[DimOrganizationUnitLevel2ID]

    JOIN [Classification].[DimOrganizationUnitType] AS [DimOrganizationUnitType_8155447828446457575] 
    
        ON  [DimOrganizationUnitLevel3_610907285151922510].[DimOrganizationUnitTypeID] = [DimOrganizationUnitType_8155447828446457575].[DimOrganizationUnitTypeID]

        ON  [DimOrganizationUnitLevel4_4593778254620764769].[DimOrganizationUnitLevel3ID] = [DimOrganizationUnitLevel3_610907285151922510].[DimOrganizationUnitLevel3ID]

    JOIN [Classification].[DimOrganizationUnitType] AS [DimOrganizationUnitType_4383228166792509214] 
    
        ON  [DimOrganizationUnitLevel4_4593778254620764769].[DimOrganizationUnitTypeID] = [DimOrganizationUnitType_4383228166792509214].[DimOrganizationUnitTypeID]

    ON  [DimUser_598778366576537018].[DimOrganizationUnitLevel4ID] = [DimOrganizationUnitLevel4_4593778254620764769].[DimOrganizationUnitLevel4ID]
        

    LEFT JOIN [Shared].[DimPagaAccount] AS [DimPagaAccount_705578799258161129] 
    
    JOIN [Classification].[DimPagaAccountStatus] AS [DimPagaAccountStatus_3466988879387003646] 
    
        ON  [DimPagaAccount_705578799258161129].[DimPagaAccountStatusID] = [DimPagaAccountStatus_3466988879387003646].[DimPagaAccountStatusID]

    ON  [DimUser_598778366576537018].[DimPagaAccountID] = [DimPagaAccount_705578799258161129].[DimPagaAccountID]
        

    ON  [FactProcessTx_5263212493767213787].[DimReceivingUserID] = [DimUser_598778366576537018].[DimUserID]
        

    LEFT JOIN [Shared].[DimUser] AS [DimUser_324419619734507131] 
    
    LEFT JOIN [Shared].[DimOrganizationUnitLevel4] AS [DimOrganizationUnitLevel4_8407640271567853562] 
    
    JOIN [Shared].[DimOrganizationUnitLevel3] AS [DimOrganizationUnitLevel3_8544634914902601047] 
    
    JOIN [Shared].[DimOrganizationUnitLevel2] AS [DimOrganizationUnitLevel2_7461965121632606682] 
    
    JOIN [Shared].[DimOrganizationUnitLevel1] AS [DimOrganizationUnitLevel1_5096478467799164219] 
    
    JOIN [Shared].[DimOrganization] AS [DimOrganization_1812789594706394358] 
    
        ON  [DimOrganizationUnitLevel1_5096478467799164219].[DimOrganizationID] = [DimOrganization_1812789594706394358].[DimOrganizationID]

    JOIN [Classification].[DimOrganizationUnitType] AS [DimOrganizationUnitType_7029789429200830410] 
    
        ON  [DimOrganizationUnitLevel1_5096478467799164219].[DimOrganizationUnitTypeID] = [DimOrganizationUnitType_7029789429200830410].[DimOrganizationUnitTypeID]

        ON  [DimOrganizationUnitLevel2_7461965121632606682].[DimOrganizationUnitLevel1ID] = [DimOrganizationUnitLevel1_5096478467799164219].[DimOrganizationUnitLevel1ID]

    JOIN [Classification].[DimOrganizationUnitType] AS [DimOrganizationUnitType_706828118374182783] 
    
        ON  [DimOrganizationUnitLevel2_7461965121632606682].[DimOrganizationUnitTypeID] = [DimOrganizationUnitType_706828118374182783].[DimOrganizationUnitTypeID]

        ON  [DimOrganizationUnitLevel3_8544634914902601047].[DimOrganizationUnitLevel2ID] = [DimOrganizationUnitLevel2_7461965121632606682].[DimOrganizationUnitLevel2ID]

    JOIN [Classification].[DimOrganizationUnitType] AS [DimOrganizationUnitType_1371420692884656214] 
    
        ON  [DimOrganizationUnitLevel3_8544634914902601047].[DimOrganizationUnitTypeID] = [DimOrganizationUnitType_1371420692884656214].[DimOrganizationUnitTypeID]

        ON  [DimOrganizationUnitLevel4_8407640271567853562].[DimOrganizationUnitLevel3ID] = [DimOrganizationUnitLevel3_8544634914902601047].[DimOrganizationUnitLevel3ID]

    JOIN [Classification].[DimOrganizationUnitType] AS [DimOrganizationUnitType_1603309798670999199] 
    
        ON  [DimOrganizationUnitLevel4_8407640271567853562].[DimOrganizationUnitTypeID] = [DimOrganizationUnitType_1603309798670999199].[DimOrganizationUnitTypeID]

    ON  [DimUser_324419619734507131].[DimOrganizationUnitLevel4ID] = [DimOrganizationUnitLevel4_8407640271567853562].[DimOrganizationUnitLevel4ID]
        

    LEFT JOIN [Shared].[DimPagaAccount] AS [DimPagaAccount_8444533188100257288] 
    
    JOIN [Classification].[DimPagaAccountStatus] AS [DimPagaAccountStatus_3364219304553899621] 
    
        ON  [DimPagaAccount_8444533188100257288].[DimPagaAccountStatusID] = [DimPagaAccountStatus_3364219304553899621].[DimPagaAccountStatusID]

    ON  [DimUser_324419619734507131].[DimPagaAccountID] = [DimPagaAccount_8444533188100257288].[DimPagaAccountID]
        

    ON  [FactProcessTx_5263212493767213787].[DimVerifiedByUserID] = [DimUser_324419619734507131].[DimUserID]
        

        ON  [FactAirtimeTxHeader_6775545701600586158].[FactProcessTxID] = [FactProcessTx_5263212493767213787].[FactProcessTxID]
GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimProcessTypeGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimProcessTypeGroupSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimProcessTypeGroupSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimProcessTypeGroupSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimProcessTypeGroupSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimProcessTypeGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimProcessTypeGroupName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimProcessTypeGroupName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimProcessTypeGroupName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimProcessTypeGroupName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimProcessType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimProcessTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimProcessTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimProcessTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimProcessTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimProcessType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimProcessTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimProcessTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimProcessTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimProcessTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimProcessType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimProcessTypeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimProcessTypeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimProcessTypeGroupID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimProcessTypeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimProcessTypeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimProcessType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimProcessTypeDescriptionText';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimProcessTypeDescriptionText';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DescriptionText', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimProcessTypeDescriptionText';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimProcessTypeDescriptionText';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimProcessStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimProcessStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimProcessStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimProcessStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimProcessStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimProcessStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimProcessStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimProcessStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimProcessStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimProcessStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimProcessStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimProcessStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimAgentCommissionType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimAgentCommissionTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimAgentCommissionTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimAgentCommissionTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimAgentCommissionTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimAgentCommissionTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimAgentCommissionType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimAgentCommissionTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimAgentCommissionTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimAgentCommissionTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimAgentCommissionTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimAgentCommissionTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxWithdrawalCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxWithdrawalCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'WithdrawalCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxWithdrawalCode';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxWithdrawalCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxVerificationStatus';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxVerificationStatus';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'VerificationStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxVerificationStatus';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxVerificationStatus';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxSenderPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxSenderPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SenderPhoneNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxSenderPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxSenderPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ReferenceNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxProcessFee';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxProcessFee';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ProcessFee', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxProcessFee';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxProcessFee';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxProcessCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxProcessCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ProcessCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxProcessCode';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxProcessCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxProcessAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxProcessAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ProcessAmount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxProcessAmount';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxProcessAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxPaymentSource';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxPaymentSource';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'PaymentSource', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxPaymentSource';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxPaymentSource';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxOriginalFactProcessTxID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxOriginalFactProcessTxID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'OriginalFactProcessTxID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxOriginalFactProcessTxID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxOriginalFactProcessTxID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxMerchantCustomerAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxMerchantCustomerAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'MerchantCustomerAccountNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxMerchantCustomerAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxMerchantCustomerAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxMerchantConfirmationCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxMerchantConfirmationCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'MerchantConfirmationCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxMerchantConfirmationCode';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxMerchantConfirmationCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxLinkedPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxLinkedPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'LinkedPhoneNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxLinkedPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxLinkedPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxIntegrationReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxIntegrationReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IntegrationReferenceNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxIntegrationReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxIntegrationReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimVerifiedByUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimVerifiedByUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimVerifiedByUserID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimVerifiedByUserID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimVerifiedByUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimStartedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimStartedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimStartedTimeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimStartedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimStartedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimStartedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimStartedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimStartedDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimStartedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimStartedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimReceivingUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimReceivingUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimReceivingUserID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimReceivingUserID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimReceivingUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimProcessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimProcessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimProcessTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimProcessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimProcessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimProcessStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimProcessStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimProcessStatusID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimProcessStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimProcessStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimOnBehalffUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimOnBehalffUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOnBehalffUserID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimOnBehalffUserID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimOnBehalffUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimInitiatingUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimInitiatingUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimInitiatingUserID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimInitiatingUserID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimInitiatingUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimCreatedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimCreatedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimCreatedTimeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimCreatedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimCreatedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimCreatedDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimCompletedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimCompletedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimCompletedTimeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimCompletedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimCompletedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimCompletedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimCompletedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimCompletedDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimCompletedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimCompletedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimChannelID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimCancellationApprovedByUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimCancellationApprovedByUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimCancellationApprovedByUserID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimCancellationApprovedByUserID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimCancellationApprovedByUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimApprovedByUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimApprovedByUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimApprovedByUserID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimApprovedByUserID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimApprovedByUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimAgentCommissionTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimAgentCommissionTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimAgentCommissionTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimAgentCommissionTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimAgentCommissionTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDepositNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDepositNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DepositNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDepositNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDepositNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDependentFactProcessTxID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDependentFactProcessTxID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DependentFactProcessTxID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDependentFactProcessTxID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDependentFactProcessTxID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxCustomerPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxCustomerPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'CustomerPhoneNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxCustomerPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxCustomerPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxCustomerBillerAccount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxCustomerBillerAccount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'CustomerBillerAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxCustomerBillerAccount';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxCustomerBillerAccount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxCardProcessorName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxCardProcessorName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'CardProcessorName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxCardProcessorName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxCardProcessorName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxATMReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxATMReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ATMReferenceNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxATMReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxATMReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxAgentCommissionAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxAgentCommissionAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'AgentCommissionAmount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxAgentCommissionAmount';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxAgentCommissionAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccountStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'7', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusSourceKey';




GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccountStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'7', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusName';




GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'6', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountSourceKey';




GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountRegistrationDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountRegistrationDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'RegistrationDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountRegistrationDateID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'6', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountRegistrationDateID';




GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'RegistrationDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountRegistrationDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountPagaAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountPagaAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'PagaAccountNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountPagaAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'6', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountPagaAccountNumber';




GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'PagaAccountNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountPagaAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'6', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountName';




GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsServiceAggregator';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsServiceAggregator';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsServiceAggregator', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsServiceAggregator';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'6', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsServiceAggregator';




GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsRemittanceProcessor';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsRemittanceProcessor';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsRemittanceProcessor', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsRemittanceProcessor';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'6', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsRemittanceProcessor';




GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsPaga';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsPaga';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsPaga', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsPaga';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'6', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsPaga';




GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsMobileOperator';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsMobileOperator';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsMobileOperator', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsMobileOperator';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'6', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsMobileOperator';




GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsMerchant';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsMerchant';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsMerchant', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsMerchant';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'6', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsMerchant';




GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsEnabled', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'6', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsEnabled';




GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'IsEnabled', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsCustomer';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsCustomer';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsCustomer', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsCustomer';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'6', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsCustomer';




GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsCashCollector';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsCashCollector';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsCashCollector', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsCashCollector';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'6', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsCashCollector';




GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsCardProcessor';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsCardProcessor';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsCardProcessor', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsCardProcessor';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'6', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsCardProcessor';




GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsBusiness';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsBusiness';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsBusiness', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsBusiness';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'6', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsBusiness';




GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsBank';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsBank';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsBank', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsBank';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'6', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsBank';




GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsAgent';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsAgent';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsAgent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsAgent';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'6', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsAgent';




GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsAffiliate';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsAffiliate';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsAffiliate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsAffiliate';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'6', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsAffiliate';




GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsActive';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsActive';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsActive', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsActive';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'6', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsActive';




GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'IsActive', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsActive';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccounthasOnlineAccount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccounthasOnlineAccount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'hasOnlineAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccounthasOnlineAccount';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'6', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccounthasOnlineAccount';




GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'hasOnlineAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccounthasOnlineAccount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountExternalAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountExternalAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ExternalAccountNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountExternalAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'6', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountExternalAccountNumber';




GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'ExternalAccountNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountExternalAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimPagaAccountStatusID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'6', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusID';




GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimPagaAccountStatusID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'CreatedDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'6', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountCreatedDateID';




GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountBankingStatus';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountBankingStatus';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'BankingStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountBankingStatus';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'6', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountBankingStatus';




GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'BankingStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountBankingStatus';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserSex';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserSex';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Sex', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserSex';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserSex';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'PhoneNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserMiddleName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserMiddleName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'MiddleName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserMiddleName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserMiddleName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserLastName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserLastName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'LastName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserLastName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserLastName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsEnabled', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FirstName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserEmail';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserEmail';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Email', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserEmail';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserEmail';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimPagaAccountID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserDimOrganizationUnitLevel4ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserDimOrganizationUnitLevel4ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationUnitLevel4ID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserDimOrganizationUnitLevel4ID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserDimOrganizationUnitLevel4ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserDateOfBirthID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserDateOfBirthID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DateOfBirthID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserDateOfBirthID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserDateOfBirthID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'CreatedDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationVerificationStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'6', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationVerificationStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'6', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationSubscriptionStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'6', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationSubscriptionStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'6', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimChannel', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimChannelTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimChannelTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'TextDesciption', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimChannelTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'6', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimChannelTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'Description', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimChannelTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimChannel', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimChannelSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimChannelSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimChannelSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimChannelSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'6', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimChannelSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimChannel', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimChannelName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimChannelName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimChannelName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimChannelName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'6', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimChannelName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimBusinessType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimBusinessTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimBusinessTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimBusinessTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimBusinessTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'6', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimBusinessTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimBusinessType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimBusinessTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimBusinessTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimBusinessTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimBusinessTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'6', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimBusinessTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationWebsiteURL';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationWebsiteURL';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'WebsiteURL', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationWebsiteURL';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationWebsiteURL';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'WebsiteURL', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationWebsiteURL';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationVATCertificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationVATCertificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'VATCertificationNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationVATCertificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationVATCertificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'VATCertificationNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationVATCertificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'TextDesciption', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'Description', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationTaxIDNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationTaxIDNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'TaxIDNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationTaxIDNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationTaxIDNumber';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'TaxIDNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationTaxIDNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ReferenceNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'ReferenceNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationRcName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationRcName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'RcName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationRcName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationRcName';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'RcName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationRcName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationOrganizationCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationOrganizationCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'OrganizationCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationOrganizationCode';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationOrganizationCode';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'OrganizationCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationOrganizationCode';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationDisplayName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationDisplayName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DisplayName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationDisplayName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationDisplayName';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DisplayName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationDisplayName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimPagaAccountID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationVerificationStatusID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimOrganizationVerificationStatusID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationSubscriptionStatusID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimOrganizationSubscriptionStatusID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimMerchantCategoryID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimMerchantCategoryID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimMerchantCategoryID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimMerchantCategoryID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimMerchantCategoryID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimChannelID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimBusinessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimBusinessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimBusinessTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimBusinessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimBusinessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimBusinessTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimBusinessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1Name';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1Name';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1IdentificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1IdentificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IdentificationNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1IdentificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1IdentificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1DimOrganizationUnitTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1DimOrganizationUnitTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationUnitTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1DimOrganizationUnitTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1DimOrganizationUnitTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimOrganizationUnitTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1DimOrganizationUnitTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1DimOrganizationID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1DimOrganizationID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1DimOrganizationID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1DimOrganizationID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimOrganizationID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1DimOrganizationID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2Name';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2Name';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2IdentificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2IdentificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IdentificationNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2IdentificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2IdentificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2DimOrganizationUnitTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2DimOrganizationUnitTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationUnitTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2DimOrganizationUnitTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2DimOrganizationUnitTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimOrganizationUnitTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2DimOrganizationUnitTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2DimOrganizationUnitLevel1ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2DimOrganizationUnitLevel1ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationUnitLevel1ID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2DimOrganizationUnitLevel1ID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2DimOrganizationUnitLevel1ID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimOrganizationUnitLevel1ID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2DimOrganizationUnitLevel1ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3Name';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3Name';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3IdentificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3IdentificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IdentificationNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3IdentificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3IdentificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3DimOrganizationUnitTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3DimOrganizationUnitTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationUnitTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3DimOrganizationUnitTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3DimOrganizationUnitTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimOrganizationUnitTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3DimOrganizationUnitTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3DimOrganizationUnitLevel2ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3DimOrganizationUnitLevel2ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationUnitLevel2ID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3DimOrganizationUnitLevel2ID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3DimOrganizationUnitLevel2ID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimOrganizationUnitLevel2ID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3DimOrganizationUnitLevel2ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4Name';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4Name';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4IdentificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4IdentificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IdentificationNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4IdentificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4IdentificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4DimOrganizationUnitTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4DimOrganizationUnitTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationUnitTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4DimOrganizationUnitTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4DimOrganizationUnitTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimOrganizationUnitTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4DimOrganizationUnitTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4DimOrganizationUnitLevel3ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4DimOrganizationUnitLevel3ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationUnitLevel3ID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4DimOrganizationUnitLevel3ID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4DimOrganizationUnitLevel3ID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimOrganizationUnitLevel3ID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4DimOrganizationUnitLevel3ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialTxType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimFinancialTxTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimFinancialTxTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimFinancialTxTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimFinancialTxTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimFinancialTxTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialTxType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimFinancialTxTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimFinancialTxTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimFinancialTxTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimFinancialTxTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimFinancialTxTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialTxType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimFinancialTxTypeFinancialTxCategory';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimFinancialTxTypeFinancialTxCategory';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FinancialTxCategory', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimFinancialTxTypeFinancialTxCategory';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimFinancialTxTypeFinancialTxCategory';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialTxSubType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimFinancialTxSubTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimFinancialTxSubTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimFinancialTxSubTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimFinancialTxSubTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimFinancialTxSubTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialTxSubType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimFinancialTxSubTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimFinancialTxSubTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimFinancialTxSubTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimFinancialTxSubTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimFinancialTxSubTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimCurrency', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimCurrencySymbol';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimCurrencySymbol';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Symbol', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimCurrencySymbol';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimCurrencySymbol';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'Symbol', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimCurrencySymbol';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimCurrency', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimCurrencySourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimCurrencySourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimCurrencySourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimCurrencySourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimCurrencySourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimCurrency', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimCurrencyName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimCurrencyName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimCurrencyName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimCurrencyName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimCurrencyName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimCurrency', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimCurrencyISOCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimCurrencyISOCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ISOCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimCurrencyISOCode';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimCurrencyISOCode';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'ISOCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimCurrencyISOCode';


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
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderTextDescription';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderTextDescription';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'TextDescription', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderTextDescription';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderTextDescription';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderShortCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderShortCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ShortCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderShortCode';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderShortCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderRelatedFactAirtimeTxHeaderID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderRelatedFactAirtimeTxHeaderID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'RelatedFactAirtimeTxHeaderID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderRelatedFactAirtimeTxHeaderID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderRelatedFactAirtimeTxHeaderID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'RelatedTransactionID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderRelatedFactAirtimeTxHeaderID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ReferenceNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderOriginalFactAirtimeTxHeaderID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderOriginalFactAirtimeTxHeaderID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'OriginalFactAirtimeTxHeaderID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderOriginalFactAirtimeTxHeaderID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderOriginalFactAirtimeTxHeaderID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'OriginalTransactionID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderOriginalFactAirtimeTxHeaderID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderForeignCurrencyAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderForeignCurrencyAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ForeignCurrencyAmount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderForeignCurrencyAmount';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderForeignCurrencyAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderFee';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderFee';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Fee', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderFee';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderFee';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderFactProcessTxID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderFactProcessTxID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FactProcessTxID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderFactProcessTxID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderFactProcessTxID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FactAirtimeTxHeaderID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderExternalReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderExternalReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ExternalReferenceNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderExternalReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderExternalReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderExchangeRate';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderExchangeRate';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ExchangeRate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderExchangeRate';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderExchangeRate';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimUserID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimUserID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimUserID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimUserID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimTransactionTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimTransactionTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimTransactionTimeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimTransactionTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimTransactionTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimTransactionTimeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimTransactionTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimTransactionDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimTransactionDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimTransactionDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimTransactionDateID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimTransactionDateID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimTransactionDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimTransactionDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimOrganizationUnitLevel4ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimOrganizationUnitLevel4ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationUnitLevel4ID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimOrganizationUnitLevel4ID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimOrganizationUnitLevel4ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimFinancialTxTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimFinancialTxTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimFinancialTxTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimFinancialTxTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimFinancialTxTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimFinancialTxTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimFinancialTxTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimFinancialTxSubTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimFinancialTxSubTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimFinancialTxSubTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimFinancialTxSubTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimFinancialTxSubTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimEffectiveTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimEffectiveTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimEffectiveTimeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimEffectiveTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimEffectiveTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimEffectiveTimeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimEffectiveTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimEffectiveDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimEffectiveDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimEffectiveDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimEffectiveDateID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimEffectiveDateID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimEffectiveDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimEffectiveDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimCurrencyID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimCurrencyID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimCurrencyID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimCurrencyID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimCurrencyID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimCreatedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimCreatedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimCreatedTimeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimCreatedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimCreatedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimCreatedTimeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimCreatedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimCreatedDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimCreatedDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderDimCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactAirtimeTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Amount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'FactAirtimeTxHeaderAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimMerchantCategory', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimMerchantCategorySourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimMerchantCategorySourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimMerchantCategorySourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'6', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimMerchantCategorySourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimMerchantCategory', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimMerchantCategoryName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Airtime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimMerchantCategoryName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimMerchantCategoryName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'6', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactAirtimeTxHeader', @level2type = N'COLUMN', @level2name = N'DimMerchantCategoryName';

