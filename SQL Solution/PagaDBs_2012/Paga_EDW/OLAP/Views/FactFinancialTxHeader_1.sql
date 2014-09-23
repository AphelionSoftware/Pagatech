  

CREATE VIEW [OLAP].[FactFinancialTxHeader]
AS

SELECT 
	[FactFinancialTxHeader_7515198397873413912].[Amount] AS [FactFinancialTxHeaderAmount]
	,[FactFinancialTxHeader_7515198397873413912].[DimCreatedDateID] AS [FactFinancialTxHeaderDimCreatedDateID]
	,[FactFinancialTxHeader_7515198397873413912].[DimCreatedTimeID] AS [FactFinancialTxHeaderDimCreatedTimeID]
	,[FactFinancialTxHeader_7515198397873413912].[DimCurrencyID] AS [FactFinancialTxHeaderDimCurrencyID]
	,[FactFinancialTxHeader_7515198397873413912].[DimEffectiveDateID] AS [FactFinancialTxHeaderDimEffectiveDateID]
	,[FactFinancialTxHeader_7515198397873413912].[DimEffectiveTimeID] AS [FactFinancialTxHeaderDimEffectiveTimeID]
	,[FactFinancialTxHeader_7515198397873413912].[DimFinancialTxSubTypeID] AS [FactFinancialTxHeaderDimFinancialTxSubTypeID]
	,[FactFinancialTxHeader_7515198397873413912].[DimFinancialTxTypeID] AS [FactFinancialTxHeaderDimFinancialTxTypeID]
	,[FactFinancialTxHeader_7515198397873413912].[DimOrganizationUnitLevel4ID] AS [FactFinancialTxHeaderDimOrganizationUnitLevel4ID]
	,[FactFinancialTxHeader_7515198397873413912].[DimTransactionDateID] AS [FactFinancialTxHeaderDimTransactionDateID]
	,[FactFinancialTxHeader_7515198397873413912].[DimTransactionTimeID] AS [FactFinancialTxHeaderDimTransactionTimeID]
	,[FactFinancialTxHeader_7515198397873413912].[DimUserID] AS [FactFinancialTxHeaderDimUserID]
	,[FactFinancialTxHeader_7515198397873413912].[ExchangeRate] AS [FactFinancialTxHeaderExchangeRate]
	,[FactFinancialTxHeader_7515198397873413912].[ExternalReferenceNumber] AS [FactFinancialTxHeaderExternalReferenceNumber]
	,[FactFinancialTxHeader_7515198397873413912].[FactFinancialTxHeaderID] AS [FactFinancialTxHeaderID]
	,[FactFinancialTxHeader_7515198397873413912].[FactProcessTxID] AS [FactFinancialTxHeaderFactProcessTxID]
	,[FactFinancialTxHeader_7515198397873413912].[Fee] AS [FactFinancialTxHeaderFee]
	,[FactFinancialTxHeader_7515198397873413912].[ForeignCurrencyAmount] AS [FactFinancialTxHeaderForeignCurrencyAmount]
	,[FactFinancialTxHeader_7515198397873413912].[OriginalFactFinancialTxHeaderID] AS [FactFinancialTxHeaderOriginalFactFinancialTxHeaderID]
	,[FactFinancialTxHeader_7515198397873413912].[ReferenceNumber] AS [FactFinancialTxHeaderReferenceNumber]
	,[FactFinancialTxHeader_7515198397873413912].[RelatedFactFinancialTxHeaderID] AS [FactFinancialTxHeaderRelatedFactFinancialTxHeaderID]
	,[FactFinancialTxHeader_7515198397873413912].[ShortCode] AS [FactFinancialTxHeaderShortCode]
	,[FactFinancialTxHeader_7515198397873413912].[SourceKey] AS [FactFinancialTxHeaderSourceKey]
	,[FactFinancialTxHeader_7515198397873413912].[TextDescription] AS [FactFinancialTxHeaderTextDescription]
	,[DimDate_4156311631668154543].[DayName] AS [DimDateDayName]
	,[DimDate_4156311631668154543].[DayOfMonth] AS [DimDateDayOfMonth]
	,[DimDate_4156311631668154543].[DayOfQuarter] AS [DimDateDayOfQuarter]
	,[DimDate_4156311631668154543].[DayOfWeekInMonth] AS [DimDateDayOfWeekInMonth]
	,[DimDate_4156311631668154543].[DayOfWeekInYear] AS [DimDateDayOfWeekInYear]
	,[DimDate_4156311631668154543].[DayOfWeekUK] AS [DimDateDayOfWeekUK]
	,[DimDate_4156311631668154543].[DayOfWeekUSA] AS [DimDateDayOfWeekUSA]
	,[DimDate_4156311631668154543].[DayOfYear] AS [DimDateDayOfYear]
	,[DimDate_4156311631668154543].[DaySuffix] AS [DimDateDaySuffix]
	,[DimDate_4156311631668154543].[DimDateID] AS [DimDateID]
	,[DimDate_4156311631668154543].[FirstDayOfMonth] AS [DimDateFirstDayOfMonth]
	,[DimDate_4156311631668154543].[FirstDayOfQuarter] AS [DimDateFirstDayOfQuarter]
	,[DimDate_4156311631668154543].[FirstDayOfYear] AS [DimDateFirstDayOfYear]
	,[DimDate_4156311631668154543].[FiscalDayOfYear] AS [DimDateFiscalDayOfYear]
	,[DimDate_4156311631668154543].[FiscalFirstDayOfMonth] AS [DimDateFiscalFirstDayOfMonth]
	,[DimDate_4156311631668154543].[FiscalFirstDayOfQuarter] AS [DimDateFiscalFirstDayOfQuarter]
	,[DimDate_4156311631668154543].[FiscalFirstDayOfYear] AS [DimDateFiscalFirstDayOfYear]
	,[DimDate_4156311631668154543].[FiscalLastDayOfMonth] AS [DimDateFiscalLastDayOfMonth]
	,[DimDate_4156311631668154543].[FiscalLastDayOfQuarter] AS [DimDateFiscalLastDayOfQuarter]
	,[DimDate_4156311631668154543].[FiscalLastDayOfYear] AS [DimDateFiscalLastDayOfYear]
	,[DimDate_4156311631668154543].[FiscalMMYYYY] AS [DimDateFiscalMMYYYY]
	,[DimDate_4156311631668154543].[FiscalMonth] AS [DimDateFiscalMonth]
	,[DimDate_4156311631668154543].[FiscalMonthYear] AS [DimDateFiscalMonthYear]
	,[DimDate_4156311631668154543].[FiscalQuarter] AS [DimDateFiscalQuarter]
	,[DimDate_4156311631668154543].[FiscalQuarterName] AS [DimDateFiscalQuarterName]
	,[DimDate_4156311631668154543].[FiscalWeekOfYear] AS [DimDateFiscalWeekOfYear]
	,[DimDate_4156311631668154543].[FiscalYear] AS [DimDateFiscalYear]
	,[DimDate_4156311631668154543].[FiscalYearName] AS [DimDateFiscalYearName]
	,[DimDate_4156311631668154543].[FullDate] AS [DimDateFullDate]
	,[DimDate_4156311631668154543].[FullDateUK] AS [DimDateFullDateUK]
	,[DimDate_4156311631668154543].[FullDateUSA] AS [DimDateFullDateUSA]
	,[DimDate_4156311631668154543].[HolidayNG] AS [DimDateHolidayNG]
	,[DimDate_4156311631668154543].[HolidayUK] AS [DimDateHolidayUK]
	,[DimDate_4156311631668154543].[HolidayUSA] AS [DimDateHolidayUSA]
	,[DimDate_4156311631668154543].[IsHolidayNG] AS [DimDateIsHolidayNG]
	,[DimDate_4156311631668154543].[IsHolidayUK] AS [DimDateIsHolidayUK]
	,[DimDate_4156311631668154543].[IsHolidayUSA] AS [DimDateIsHolidayUSA]
	,[DimDate_4156311631668154543].[IsWeekday] AS [DimDateIsWeekday]
	,[DimDate_4156311631668154543].[LastDayOfMonth] AS [DimDateLastDayOfMonth]
	,[DimDate_4156311631668154543].[LastDayOfQuarter] AS [DimDateLastDayOfQuarter]
	,[DimDate_4156311631668154543].[LastDayOfYear] AS [DimDateLastDayOfYear]
	,[DimDate_4156311631668154543].[MMYYYY] AS [DimDateMMYYYY]
	,[DimDate_4156311631668154543].[Month] AS [DimDateMonth]
	,[DimDate_4156311631668154543].[MonthName] AS [DimDateMonthName]
	,[DimDate_4156311631668154543].[MonthOfQuarter] AS [DimDateMonthOfQuarter]
	,[DimDate_4156311631668154543].[MonthYear] AS [DimDateMonthYear]
	,[DimDate_4156311631668154543].[Quarter] AS [DimDateQuarter]
	,[DimDate_4156311631668154543].[QuarterName] AS [DimDateQuarterName]
	,[DimDate_4156311631668154543].[WeekOfMonth] AS [DimDateWeekOfMonth]
	,[DimDate_4156311631668154543].[WeekOfQuarter] AS [DimDateWeekOfQuarter]
	,[DimDate_4156311631668154543].[WeekOfYear] AS [DimDateWeekOfYear]
	,[DimDate_4156311631668154543].[Year] AS [DimDateYear]
	,[DimDate_4156311631668154543].[YearName] AS [DimDateYearName]
	,[DimTime_7008775967541126551].[DayTimeBucket] AS [DimTimeDayTimeBucket]
	,[DimTime_7008775967541126551].[DayTimeBucketGroupKey] AS [DimTimeDayTimeBucketGroupKey]
	,[DimTime_7008775967541126551].[DimTimeID] AS [DimTimeID]
	,[DimTime_7008775967541126551].[FullTime] AS [DimTimeFullTime]
	,[DimTime_7008775967541126551].[HourlyBucket] AS [DimTimeHourlyBucket]
	,[DimTime_7008775967541126551].[HourNumber] AS [DimTimeHourNumber]
	,[DimTime_7008775967541126551].[MinuteNumber] AS [DimTimeMinuteNumber]
	,[DimTime_7008775967541126551].[SecondNumber] AS [DimTimeSecondNumber]
	,[DimTime_7008775967541126551].[TimeInSecond] AS [DimTimeTimeInSecond]
	,[DimCurrency_1684517319826807121].[ISOCode] AS [DimCurrencyISOCode]
	,[DimCurrency_1684517319826807121].[Name] AS [DimCurrencyName]
	,[DimCurrency_1684517319826807121].[SourceKey] AS [DimCurrencySourceKey]
	,[DimCurrency_1684517319826807121].[Symbol] AS [DimCurrencySymbol]
	,[DimFinancialTxSubType_4839284188148451003].[Name] AS [DimFinancialTxSubTypeName]
	,[DimFinancialTxSubType_4839284188148451003].[SourceKey] AS [DimFinancialTxSubTypeSourceKey]
	,[DimFinancialTxType_6938066203558696239].[FinancialTxCategory] AS [DimFinancialTxTypeFinancialTxCategory]
	,[DimFinancialTxType_6938066203558696239].[Name] AS [DimFinancialTxTypeName]
	,[DimFinancialTxType_6938066203558696239].[SourceKey] AS [DimFinancialTxTypeSourceKey]
	,[DimOrganizationUnitLevel4_8507064514487154255].[DimOrganizationUnitLevel3ID] AS [DimOrganizationUnitLevel4DimOrganizationUnitLevel3ID]
	,[DimOrganizationUnitLevel4_8507064514487154255].[DimOrganizationUnitTypeID] AS [DimOrganizationUnitLevel4DimOrganizationUnitTypeID]
	,[DimOrganizationUnitLevel4_8507064514487154255].[IdentificationNumber] AS [DimOrganizationUnitLevel4IdentificationNumber]
	,[DimOrganizationUnitLevel4_8507064514487154255].[Name] AS [DimOrganizationUnitLevel4Name]
	,[DimOrganizationUnitLevel4_8507064514487154255].[SourceKey] AS [DimOrganizationUnitLevel4SourceKey]
	,[DimOrganizationUnitLevel3_482172599628275524].[DimOrganizationUnitLevel2ID] AS [DimOrganizationUnitLevel3DimOrganizationUnitLevel2ID]
	,[DimOrganizationUnitLevel3_482172599628275524].[DimOrganizationUnitTypeID] AS [DimOrganizationUnitLevel3DimOrganizationUnitTypeID]
	,[DimOrganizationUnitLevel3_482172599628275524].[IdentificationNumber] AS [DimOrganizationUnitLevel3IdentificationNumber]
	,[DimOrganizationUnitLevel3_482172599628275524].[Name] AS [DimOrganizationUnitLevel3Name]
	,[DimOrganizationUnitLevel3_482172599628275524].[SourceKey] AS [DimOrganizationUnitLevel3SourceKey]
	,[DimOrganizationUnitLevel2_6228552347319688871].[DimOrganizationUnitLevel1ID] AS [DimOrganizationUnitLevel2DimOrganizationUnitLevel1ID]
	,[DimOrganizationUnitLevel2_6228552347319688871].[DimOrganizationUnitTypeID] AS [DimOrganizationUnitLevel2DimOrganizationUnitTypeID]
	,[DimOrganizationUnitLevel2_6228552347319688871].[IdentificationNumber] AS [DimOrganizationUnitLevel2IdentificationNumber]
	,[DimOrganizationUnitLevel2_6228552347319688871].[Name] AS [DimOrganizationUnitLevel2Name]
	,[DimOrganizationUnitLevel2_6228552347319688871].[SourceKey] AS [DimOrganizationUnitLevel2SourceKey]
	,[DimOrganizationUnitLevel1_321263415194416456].[DimOrganizationID] AS [DimOrganizationUnitLevel1DimOrganizationID]
	,[DimOrganizationUnitLevel1_321263415194416456].[DimOrganizationUnitTypeID] AS [DimOrganizationUnitLevel1DimOrganizationUnitTypeID]
	,[DimOrganizationUnitLevel1_321263415194416456].[IdentificationNumber] AS [DimOrganizationUnitLevel1IdentificationNumber]
	,[DimOrganizationUnitLevel1_321263415194416456].[Name] AS [DimOrganizationUnitLevel1Name]
	,[DimOrganizationUnitLevel1_321263415194416456].[SourceKey] AS [DimOrganizationUnitLevel1SourceKey]
	,[DimOrganization_5325699364756882905].[DimBusinessTypeID] AS [DimOrganizationDimBusinessTypeID]
	,[DimOrganization_5325699364756882905].[DimChannelID] AS [DimOrganizationDimChannelID]
	,[DimOrganization_5325699364756882905].[DimMerchantCategoryID] AS [DimOrganizationDimMerchantCategoryID]
	,[DimOrganization_5325699364756882905].[DimOrganizationSubscriptionStatusID] AS [DimOrganizationSubscriptionStatusID]
	,[DimOrganization_5325699364756882905].[DimOrganizationVerificationStatusID] AS [DimOrganizationVerificationStatusID]
	,[DimOrganization_5325699364756882905].[DimPagaAccountID] AS [DimOrganizationDimPagaAccountID]
	,[DimOrganization_5325699364756882905].[DisplayName] AS [DimOrganizationDisplayName]
	,[DimOrganization_5325699364756882905].[Name] AS [DimOrganizationName]
	,[DimOrganization_5325699364756882905].[OrganizationCode] AS [DimOrganizationOrganizationCode]
	,[DimOrganization_5325699364756882905].[RcName] AS [DimOrganizationRcName]
	,[DimOrganization_5325699364756882905].[ReferenceNumber] AS [DimOrganizationReferenceNumber]
	,[DimOrganization_5325699364756882905].[SourceKey] AS [DimOrganizationSourceKey]
	,[DimOrganization_5325699364756882905].[TaxIDNumber] AS [DimOrganizationTaxIDNumber]
	,[DimOrganization_5325699364756882905].[TextDesciption] AS [DimOrganizationTextDesciption]
	,[DimOrganization_5325699364756882905].[VATCertificationNumber] AS [DimOrganizationVATCertificationNumber]
	,[DimOrganization_5325699364756882905].[WebsiteURL] AS [DimOrganizationWebsiteURL]
	,[DimBusinessType_8503688253515579112].[Name] AS [DimBusinessTypeName]
	,[DimBusinessType_8503688253515579112].[SourceKey] AS [DimBusinessTypeSourceKey]
	,[DimChannel_5765008702733879604].[Name] AS [DimChannelName]
	,[DimChannel_5765008702733879604].[SourceKey] AS [DimChannelSourceKey]
	,[DimChannel_5765008702733879604].[TextDesciption] AS [DimChannelTextDesciption]
	,[DimOrganizationSubscriptionStatus_889771292917963984].[Name] AS [DimOrganizationSubscriptionStatusName]
	,[DimOrganizationSubscriptionStatus_889771292917963984].[SourceKey] AS [DimOrganizationSubscriptionStatusSourceKey]
	,[DimOrganizationVerificationStatus_5302628643283387452].[Name] AS [DimOrganizationVerificationStatusName]
	,[DimOrganizationVerificationStatus_5302628643283387452].[SourceKey] AS [DimOrganizationVerificationStatusSourceKey]
	,[DimOrganizationUnitType_926020212398837421].[Name] AS [DimOrganizationUnitTypeName]
	,[DimOrganizationUnitType_926020212398837421].[SourceKey] AS [DimOrganizationUnitTypeSourceKey]
	,[DimUser_5087606633587196461].[CreatedDateID] AS [DimUserCreatedDateID]
	,[DimUser_5087606633587196461].[DateOfBirthID] AS [DimUserDateOfBirthID]
	,[DimUser_5087606633587196461].[DimOrganizationUnitLevel4ID] AS [DimUserDimOrganizationUnitLevel4ID]
	,[DimUser_5087606633587196461].[DimPagaAccountID] AS [DimUserDimPagaAccountID]
	,[DimUser_5087606633587196461].[Email] AS [DimUserEmail]
	,[DimUser_5087606633587196461].[FirstName] AS [DimUserFirstName]
	,[DimUser_5087606633587196461].[IsEnabled] AS [DimUserIsEnabled]
	,[DimUser_5087606633587196461].[LastName] AS [DimUserLastName]
	,[DimUser_5087606633587196461].[MiddleName] AS [DimUserMiddleName]
	,[DimUser_5087606633587196461].[Name] AS [DimUserName]
	,[DimUser_5087606633587196461].[PhoneNumber] AS [DimUserPhoneNumber]
	,[DimUser_5087606633587196461].[Sex] AS [DimUserSex]
	,[DimUser_5087606633587196461].[SourceKey] AS [DimUserSourceKey]
	,[DimPagaAccount_4512684687473794082].[BankingStatus] AS [DimPagaAccountBankingStatus]
	,[DimPagaAccount_4512684687473794082].[CreatedDateID] AS [DimPagaAccountCreatedDateID]
	,[DimPagaAccount_4512684687473794082].[DimPagaAccountStatusID] AS [DimPagaAccountStatusID]
	,[DimPagaAccount_4512684687473794082].[ExternalAccountNumber] AS [DimPagaAccountExternalAccountNumber]
	,[DimPagaAccount_4512684687473794082].[hasOnlineAccount] AS [DimPagaAccounthasOnlineAccount]
	,[DimPagaAccount_4512684687473794082].[IsActive] AS [DimPagaAccountIsActive]
	,[DimPagaAccount_4512684687473794082].[IsAffiliate] AS [DimPagaAccountIsAffiliate]
	,[DimPagaAccount_4512684687473794082].[IsAgent] AS [DimPagaAccountIsAgent]
	,[DimPagaAccount_4512684687473794082].[IsBank] AS [DimPagaAccountIsBank]
	,[DimPagaAccount_4512684687473794082].[IsBusiness] AS [DimPagaAccountIsBusiness]
	,[DimPagaAccount_4512684687473794082].[IsCardProcessor] AS [DimPagaAccountIsCardProcessor]
	,[DimPagaAccount_4512684687473794082].[IsCashCollector] AS [DimPagaAccountIsCashCollector]
	,[DimPagaAccount_4512684687473794082].[IsCustomer] AS [DimPagaAccountIsCustomer]
	,[DimPagaAccount_4512684687473794082].[IsEnabled] AS [DimPagaAccountIsEnabled]
	,[DimPagaAccount_4512684687473794082].[IsMerchant] AS [DimPagaAccountIsMerchant]
	,[DimPagaAccount_4512684687473794082].[IsMobileOperator] AS [DimPagaAccountIsMobileOperator]
	,[DimPagaAccount_4512684687473794082].[IsPaga] AS [DimPagaAccountIsPaga]
	,[DimPagaAccount_4512684687473794082].[IsRemittanceProcessor] AS [DimPagaAccountIsRemittanceProcessor]
	,[DimPagaAccount_4512684687473794082].[IsServiceAggregator] AS [DimPagaAccountIsServiceAggregator]
	,[DimPagaAccount_4512684687473794082].[Name] AS [DimPagaAccountName]
	,[DimPagaAccount_4512684687473794082].[PagaAccountNumber] AS [DimPagaAccountPagaAccountNumber]
	,[DimPagaAccount_4512684687473794082].[RegistrationDateID] AS [DimPagaAccountRegistrationDateID]
	,[DimPagaAccount_4512684687473794082].[SourceKey] AS [DimPagaAccountSourceKey]
	,[DimPagaAccountStatus_7452431639649066059].[Name] AS [DimPagaAccountStatusName]
	,[DimPagaAccountStatus_7452431639649066059].[SourceKey] AS [DimPagaAccountStatusSourceKey]
	,[FactProcessTx_2155424918854536773].[AgentCommissionAmount] AS [FactProcessTxAgentCommissionAmount]
	,[FactProcessTx_2155424918854536773].[ATMReferenceNumber] AS [FactProcessTxATMReferenceNumber]
	,[FactProcessTx_2155424918854536773].[CardProcessorName] AS [FactProcessTxCardProcessorName]
	,[FactProcessTx_2155424918854536773].[CustomerBillerAccount] AS [FactProcessTxCustomerBillerAccount]
	,[FactProcessTx_2155424918854536773].[CustomerPhoneNumber] AS [FactProcessTxCustomerPhoneNumber]
	,[FactProcessTx_2155424918854536773].[DependentFactProcessTxID] AS [FactProcessTxDependentFactProcessTxID]
	,[FactProcessTx_2155424918854536773].[DepositNumber] AS [FactProcessTxDepositNumber]
	,[FactProcessTx_2155424918854536773].[DimAgentCommissionTypeID] AS [FactProcessTxDimAgentCommissionTypeID]
	,[FactProcessTx_2155424918854536773].[DimApprovedByUserID] AS [FactProcessTxDimApprovedByUserID]
	,[FactProcessTx_2155424918854536773].[DimCancellationApprovedByUserID] AS [FactProcessTxDimCancellationApprovedByUserID]
	,[FactProcessTx_2155424918854536773].[DimChannelID] AS [FactProcessTxDimChannelID]
	,[FactProcessTx_2155424918854536773].[DimCompletedDateID] AS [FactProcessTxDimCompletedDateID]
	,[FactProcessTx_2155424918854536773].[DimCompletedTimeID] AS [FactProcessTxDimCompletedTimeID]
	,[FactProcessTx_2155424918854536773].[DimCreatedDateID] AS [FactProcessTxDimCreatedDateID]
	,[FactProcessTx_2155424918854536773].[DimCreatedTimeID] AS [FactProcessTxDimCreatedTimeID]
	,[FactProcessTx_2155424918854536773].[DimInitiatingUserID] AS [FactProcessTxDimInitiatingUserID]
	,[FactProcessTx_2155424918854536773].[DimOnBehalffUserID] AS [FactProcessTxDimOnBehalffUserID]
	,[FactProcessTx_2155424918854536773].[DimProcessStatusID] AS [FactProcessTxDimProcessStatusID]
	,[FactProcessTx_2155424918854536773].[DimProcessTypeID] AS [FactProcessTxDimProcessTypeID]
	,[FactProcessTx_2155424918854536773].[DimReceivingUserID] AS [FactProcessTxDimReceivingUserID]
	,[FactProcessTx_2155424918854536773].[DimStartedDateID] AS [FactProcessTxDimStartedDateID]
	,[FactProcessTx_2155424918854536773].[DimStartedTimeID] AS [FactProcessTxDimStartedTimeID]
	,[FactProcessTx_2155424918854536773].[DimVerifiedByUserID] AS [FactProcessTxDimVerifiedByUserID]
	,[FactProcessTx_2155424918854536773].[IntegrationReferenceNumber] AS [FactProcessTxIntegrationReferenceNumber]
	,[FactProcessTx_2155424918854536773].[LinkedPhoneNumber] AS [FactProcessTxLinkedPhoneNumber]
	,[FactProcessTx_2155424918854536773].[MerchantConfirmationCode] AS [FactProcessTxMerchantConfirmationCode]
	,[FactProcessTx_2155424918854536773].[MerchantCustomerAccountNumber] AS [FactProcessTxMerchantCustomerAccountNumber]
	,[FactProcessTx_2155424918854536773].[OriginalFactProcessTxID] AS [FactProcessTxOriginalFactProcessTxID]
	,[FactProcessTx_2155424918854536773].[PaymentSource] AS [FactProcessTxPaymentSource]
	,[FactProcessTx_2155424918854536773].[ProcessAmount] AS [FactProcessTxProcessAmount]
	,[FactProcessTx_2155424918854536773].[ProcessCode] AS [FactProcessTxProcessCode]
	,[FactProcessTx_2155424918854536773].[ProcessFee] AS [FactProcessTxProcessFee]
	,[FactProcessTx_2155424918854536773].[ReferenceNumber] AS [FactProcessTxReferenceNumber]
	,[FactProcessTx_2155424918854536773].[SenderPhoneNumber] AS [FactProcessTxSenderPhoneNumber]
	,[FactProcessTx_2155424918854536773].[SourceKey] AS [FactProcessTxSourceKey]
	,[FactProcessTx_2155424918854536773].[VerificationStatus] AS [FactProcessTxVerificationStatus]
	,[FactProcessTx_2155424918854536773].[WithdrawalCode] AS [FactProcessTxWithdrawalCode]
	,[DimAgentCommissionType_8263617827253097558].[Name] AS [DimAgentCommissionTypeName]
	,[DimAgentCommissionType_8263617827253097558].[SourceKey] AS [DimAgentCommissionTypeSourceKey]
	,[DimProcessStatus_5084204647735337864].[Name] AS [DimProcessStatusName]
	,[DimProcessStatus_5084204647735337864].[SourceKey] AS [DimProcessStatusSourceKey]
	,[DimProcessType_7917521546185980192].[DescriptionText] AS [DimProcessTypeDescriptionText]
	,[DimProcessType_7917521546185980192].[DimProcessTypeGroupID] AS [DimProcessTypeGroupID]
	,[DimProcessType_7917521546185980192].[Name] AS [DimProcessTypeName]
	,[DimProcessType_7917521546185980192].[SourceKey] AS [DimProcessTypeSourceKey]
	,[DimProcessTypeGroup_8270232722657846277].[Name] AS [DimProcessTypeGroupName]
	,[DimProcessTypeGroup_8270232722657846277].[SourceKey] AS [DimProcessTypeGroupSourceKey]
FROM [Finance].[FactFinancialTxHeader] AS [FactFinancialTxHeader_7515198397873413912]

    JOIN [Shared].[DimDate] AS [DimDate_4156311631668154543] 
    
        ON  [FactFinancialTxHeader_7515198397873413912].[DimCreatedDateID] = [DimDate_4156311631668154543].[DimDateID]

    JOIN [Shared].[DimTime] AS [DimTime_7008775967541126551] 
    
        ON  [FactFinancialTxHeader_7515198397873413912].[DimCreatedTimeID] = [DimTime_7008775967541126551].[DimTimeID]

    LEFT JOIN [Finance].[DimCurrency] AS [DimCurrency_1684517319826807121] 
    
    ON  [FactFinancialTxHeader_7515198397873413912].[DimCurrencyID] = [DimCurrency_1684517319826807121].[DimCurrencyID]
        

    JOIN [Shared].[DimDate] AS [DimDate_706243611490475202] 
    
        ON  [FactFinancialTxHeader_7515198397873413912].[DimEffectiveDateID] = [DimDate_706243611490475202].[DimDateID]

    JOIN [Shared].[DimTime] AS [DimTime_8992419067520864668] 
    
        ON  [FactFinancialTxHeader_7515198397873413912].[DimEffectiveTimeID] = [DimTime_8992419067520864668].[DimTimeID]

    LEFT JOIN [Classification].[DimFinancialTxSubType] AS [DimFinancialTxSubType_4839284188148451003] 
    
    ON  [FactFinancialTxHeader_7515198397873413912].[DimFinancialTxSubTypeID] = [DimFinancialTxSubType_4839284188148451003].[DimFinancialTxSubTypeID]
        

    JOIN [Classification].[DimFinancialTxType] AS [DimFinancialTxType_6938066203558696239] 
    
        ON  [FactFinancialTxHeader_7515198397873413912].[DimFinancialTxTypeID] = [DimFinancialTxType_6938066203558696239].[DimFinancialTxTypeID]

    LEFT JOIN [Shared].[DimOrganizationUnitLevel4] AS [DimOrganizationUnitLevel4_8507064514487154255] 
    
    JOIN [Shared].[DimOrganizationUnitLevel3] AS [DimOrganizationUnitLevel3_482172599628275524] 
    
    JOIN [Shared].[DimOrganizationUnitLevel2] AS [DimOrganizationUnitLevel2_6228552347319688871] 
    
    JOIN [Shared].[DimOrganizationUnitLevel1] AS [DimOrganizationUnitLevel1_321263415194416456] 
    
    JOIN [Shared].[DimOrganization] AS [DimOrganization_5325699364756882905] 
    
    JOIN [Classification].[DimBusinessType] AS [DimBusinessType_8503688253515579112] 
    
        ON  [DimOrganization_5325699364756882905].[DimBusinessTypeID] = [DimBusinessType_8503688253515579112].[DimBusinessTypeID]

    JOIN [Activity].[DimChannel] AS [DimChannel_5765008702733879604] 
    
        ON  [DimOrganization_5325699364756882905].[DimChannelID] = [DimChannel_5765008702733879604].[DimChannelID]

    JOIN [Classification].[DimOrganizationSubscriptionStatus] AS [DimOrganizationSubscriptionStatus_889771292917963984] 
    
        ON  [DimOrganization_5325699364756882905].[DimOrganizationSubscriptionStatusID] = [DimOrganizationSubscriptionStatus_889771292917963984].[DimOrganizationSubscriptionStatusID]

    JOIN [Classification].[DimOrganizationVerificationStatus] AS [DimOrganizationVerificationStatus_5302628643283387452] 
    
        ON  [DimOrganization_5325699364756882905].[DimOrganizationVerificationStatusID] = [DimOrganizationVerificationStatus_5302628643283387452].[DimOrganizationVerificationStatusID]

        ON  [DimOrganizationUnitLevel1_321263415194416456].[DimOrganizationID] = [DimOrganization_5325699364756882905].[DimOrganizationID]

    JOIN [Classification].[DimOrganizationUnitType] AS [DimOrganizationUnitType_926020212398837421] 
    
        ON  [DimOrganizationUnitLevel1_321263415194416456].[DimOrganizationUnitTypeID] = [DimOrganizationUnitType_926020212398837421].[DimOrganizationUnitTypeID]

        ON  [DimOrganizationUnitLevel2_6228552347319688871].[DimOrganizationUnitLevel1ID] = [DimOrganizationUnitLevel1_321263415194416456].[DimOrganizationUnitLevel1ID]

    JOIN [Classification].[DimOrganizationUnitType] AS [DimOrganizationUnitType_8705623832120020084] 
    
        ON  [DimOrganizationUnitLevel2_6228552347319688871].[DimOrganizationUnitTypeID] = [DimOrganizationUnitType_8705623832120020084].[DimOrganizationUnitTypeID]

        ON  [DimOrganizationUnitLevel3_482172599628275524].[DimOrganizationUnitLevel2ID] = [DimOrganizationUnitLevel2_6228552347319688871].[DimOrganizationUnitLevel2ID]

    JOIN [Classification].[DimOrganizationUnitType] AS [DimOrganizationUnitType_1280268056435458337] 
    
        ON  [DimOrganizationUnitLevel3_482172599628275524].[DimOrganizationUnitTypeID] = [DimOrganizationUnitType_1280268056435458337].[DimOrganizationUnitTypeID]

        ON  [DimOrganizationUnitLevel4_8507064514487154255].[DimOrganizationUnitLevel3ID] = [DimOrganizationUnitLevel3_482172599628275524].[DimOrganizationUnitLevel3ID]

    JOIN [Classification].[DimOrganizationUnitType] AS [DimOrganizationUnitType_2843985685577440652] 
    
        ON  [DimOrganizationUnitLevel4_8507064514487154255].[DimOrganizationUnitTypeID] = [DimOrganizationUnitType_2843985685577440652].[DimOrganizationUnitTypeID]

    ON  [FactFinancialTxHeader_7515198397873413912].[DimOrganizationUnitLevel4ID] = [DimOrganizationUnitLevel4_8507064514487154255].[DimOrganizationUnitLevel4ID]
        

    JOIN [Shared].[DimDate] AS [DimDate_678638371090857577] 
    
        ON  [FactFinancialTxHeader_7515198397873413912].[DimTransactionDateID] = [DimDate_678638371090857577].[DimDateID]

    JOIN [Shared].[DimTime] AS [DimTime_5358609083782599463] 
    
        ON  [FactFinancialTxHeader_7515198397873413912].[DimTransactionTimeID] = [DimTime_5358609083782599463].[DimTimeID]

    LEFT JOIN [Shared].[DimUser] AS [DimUser_5087606633587196461] 
    
    JOIN [Shared].[DimDate] AS [DimDate_4510778095551597274] 
    
        ON  [DimUser_5087606633587196461].[CreatedDateID] = [DimDate_4510778095551597274].[DimDateID]

    LEFT JOIN [Shared].[DimDate] AS [DimDate_857524905900691416] 
    
    ON  [DimUser_5087606633587196461].[DateOfBirthID] = [DimDate_857524905900691416].[DimDateID]
        

    LEFT JOIN [Shared].[DimOrganizationUnitLevel4] AS [DimOrganizationUnitLevel4_8016196144375547596] 
    
    JOIN [Shared].[DimOrganizationUnitLevel3] AS [DimOrganizationUnitLevel3_4807737465927520393] 
    
    JOIN [Shared].[DimOrganizationUnitLevel2] AS [DimOrganizationUnitLevel2_7506152091235686204] 
    
    JOIN [Shared].[DimOrganizationUnitLevel1] AS [DimOrganizationUnitLevel1_1221682024612570107] 
    
    JOIN [Shared].[DimOrganization] AS [DimOrganization_6909454691673734420] 
    
    JOIN [Classification].[DimBusinessType] AS [DimBusinessType_7978317670337049747] 
    
        ON  [DimOrganization_6909454691673734420].[DimBusinessTypeID] = [DimBusinessType_7978317670337049747].[DimBusinessTypeID]

    JOIN [Activity].[DimChannel] AS [DimChannel_5620644154320001031] 
    
        ON  [DimOrganization_6909454691673734420].[DimChannelID] = [DimChannel_5620644154320001031].[DimChannelID]

    JOIN [Classification].[DimOrganizationSubscriptionStatus] AS [DimOrganizationSubscriptionStatus_7918796684033604757] 
    
        ON  [DimOrganization_6909454691673734420].[DimOrganizationSubscriptionStatusID] = [DimOrganizationSubscriptionStatus_7918796684033604757].[DimOrganizationSubscriptionStatusID]

    JOIN [Classification].[DimOrganizationVerificationStatus] AS [DimOrganizationVerificationStatus_7428858698565691663] 
    
        ON  [DimOrganization_6909454691673734420].[DimOrganizationVerificationStatusID] = [DimOrganizationVerificationStatus_7428858698565691663].[DimOrganizationVerificationStatusID]

        ON  [DimOrganizationUnitLevel1_1221682024612570107].[DimOrganizationID] = [DimOrganization_6909454691673734420].[DimOrganizationID]

    JOIN [Classification].[DimOrganizationUnitType] AS [DimOrganizationUnitType_8347344493119134496] 
    
        ON  [DimOrganizationUnitLevel1_1221682024612570107].[DimOrganizationUnitTypeID] = [DimOrganizationUnitType_8347344493119134496].[DimOrganizationUnitTypeID]

        ON  [DimOrganizationUnitLevel2_7506152091235686204].[DimOrganizationUnitLevel1ID] = [DimOrganizationUnitLevel1_1221682024612570107].[DimOrganizationUnitLevel1ID]

    JOIN [Classification].[DimOrganizationUnitType] AS [DimOrganizationUnitType_763355251037169313] 
    
        ON  [DimOrganizationUnitLevel2_7506152091235686204].[DimOrganizationUnitTypeID] = [DimOrganizationUnitType_763355251037169313].[DimOrganizationUnitTypeID]

        ON  [DimOrganizationUnitLevel3_4807737465927520393].[DimOrganizationUnitLevel2ID] = [DimOrganizationUnitLevel2_7506152091235686204].[DimOrganizationUnitLevel2ID]

    JOIN [Classification].[DimOrganizationUnitType] AS [DimOrganizationUnitType_8931772965209554940] 
    
        ON  [DimOrganizationUnitLevel3_4807737465927520393].[DimOrganizationUnitTypeID] = [DimOrganizationUnitType_8931772965209554940].[DimOrganizationUnitTypeID]

        ON  [DimOrganizationUnitLevel4_8016196144375547596].[DimOrganizationUnitLevel3ID] = [DimOrganizationUnitLevel3_4807737465927520393].[DimOrganizationUnitLevel3ID]

    JOIN [Classification].[DimOrganizationUnitType] AS [DimOrganizationUnitType_9014464091473843601] 
    
        ON  [DimOrganizationUnitLevel4_8016196144375547596].[DimOrganizationUnitTypeID] = [DimOrganizationUnitType_9014464091473843601].[DimOrganizationUnitTypeID]

    ON  [DimUser_5087606633587196461].[DimOrganizationUnitLevel4ID] = [DimOrganizationUnitLevel4_8016196144375547596].[DimOrganizationUnitLevel4ID]
        

    LEFT JOIN [Shared].[DimPagaAccount] AS [DimPagaAccount_4512684687473794082] 
    
    JOIN [Classification].[DimPagaAccountStatus] AS [DimPagaAccountStatus_7452431639649066059] 
    
        ON  [DimPagaAccount_4512684687473794082].[DimPagaAccountStatusID] = [DimPagaAccountStatus_7452431639649066059].[DimPagaAccountStatusID]

    ON  [DimUser_5087606633587196461].[DimPagaAccountID] = [DimPagaAccount_4512684687473794082].[DimPagaAccountID]
        

    ON  [FactFinancialTxHeader_7515198397873413912].[DimUserID] = [DimUser_5087606633587196461].[DimUserID]
        

    JOIN [Activity].[FactProcessTx] AS [FactProcessTx_2155424918854536773] 
    
    LEFT JOIN [Classification].[DimAgentCommissionType] AS [DimAgentCommissionType_8263617827253097558] 
    
    ON  [FactProcessTx_2155424918854536773].[DimAgentCommissionTypeID] = [DimAgentCommissionType_8263617827253097558].[DimAgentCommissionTypeID]
        

    LEFT JOIN [Shared].[DimUser] AS [DimUser_257973212340091938] 
    
    JOIN [Shared].[DimDate] AS [DimDate_4399300531642561543] 
    
        ON  [DimUser_257973212340091938].[CreatedDateID] = [DimDate_4399300531642561543].[DimDateID]

    LEFT JOIN [Shared].[DimDate] AS [DimDate_3296414234118962317] 
    
    ON  [DimUser_257973212340091938].[DateOfBirthID] = [DimDate_3296414234118962317].[DimDateID]
        

    LEFT JOIN [Shared].[DimOrganizationUnitLevel4] AS [DimOrganizationUnitLevel4_8916075031620595715] 
    
    JOIN [Shared].[DimOrganizationUnitLevel3] AS [DimOrganizationUnitLevel3_5408014228835672002] 
    
    JOIN [Shared].[DimOrganizationUnitLevel2] AS [DimOrganizationUnitLevel2_3680726505422395317] 
    
    JOIN [Shared].[DimOrganizationUnitLevel1] AS [DimOrganizationUnitLevel1_1469037469836617834] 
    
    JOIN [Shared].[DimOrganization] AS [DimOrganization_510818548711592331] 
    
        ON  [DimOrganizationUnitLevel1_1469037469836617834].[DimOrganizationID] = [DimOrganization_510818548711592331].[DimOrganizationID]

    JOIN [Classification].[DimOrganizationUnitType] AS [DimOrganizationUnitType_8601914099164895823] 
    
        ON  [DimOrganizationUnitLevel1_1469037469836617834].[DimOrganizationUnitTypeID] = [DimOrganizationUnitType_8601914099164895823].[DimOrganizationUnitTypeID]

        ON  [DimOrganizationUnitLevel2_3680726505422395317].[DimOrganizationUnitLevel1ID] = [DimOrganizationUnitLevel1_1469037469836617834].[DimOrganizationUnitLevel1ID]

    JOIN [Classification].[DimOrganizationUnitType] AS [DimOrganizationUnitType_5626562489410315322] 
    
        ON  [DimOrganizationUnitLevel2_3680726505422395317].[DimOrganizationUnitTypeID] = [DimOrganizationUnitType_5626562489410315322].[DimOrganizationUnitTypeID]

        ON  [DimOrganizationUnitLevel3_5408014228835672002].[DimOrganizationUnitLevel2ID] = [DimOrganizationUnitLevel2_3680726505422395317].[DimOrganizationUnitLevel2ID]

    JOIN [Classification].[DimOrganizationUnitType] AS [DimOrganizationUnitType_4072968659899524853] 
    
        ON  [DimOrganizationUnitLevel3_5408014228835672002].[DimOrganizationUnitTypeID] = [DimOrganizationUnitType_4072968659899524853].[DimOrganizationUnitTypeID]

        ON  [DimOrganizationUnitLevel4_8916075031620595715].[DimOrganizationUnitLevel3ID] = [DimOrganizationUnitLevel3_5408014228835672002].[DimOrganizationUnitLevel3ID]

    JOIN [Classification].[DimOrganizationUnitType] AS [DimOrganizationUnitType_1237669250741096590] 
    
        ON  [DimOrganizationUnitLevel4_8916075031620595715].[DimOrganizationUnitTypeID] = [DimOrganizationUnitType_1237669250741096590].[DimOrganizationUnitTypeID]

    ON  [DimUser_257973212340091938].[DimOrganizationUnitLevel4ID] = [DimOrganizationUnitLevel4_8916075031620595715].[DimOrganizationUnitLevel4ID]
        

    LEFT JOIN [Shared].[DimPagaAccount] AS [DimPagaAccount_660558365843530963] 
    
    JOIN [Classification].[DimPagaAccountStatus] AS [DimPagaAccountStatus_3686244504810171222] 
    
        ON  [DimPagaAccount_660558365843530963].[DimPagaAccountStatusID] = [DimPagaAccountStatus_3686244504810171222].[DimPagaAccountStatusID]

    ON  [DimUser_257973212340091938].[DimPagaAccountID] = [DimPagaAccount_660558365843530963].[DimPagaAccountID]
        

    ON  [FactProcessTx_2155424918854536773].[DimApprovedByUserID] = [DimUser_257973212340091938].[DimUserID]
        

    LEFT JOIN [Shared].[DimUser] AS [DimUser_9198092464201237191] 
    
    JOIN [Shared].[DimDate] AS [DimDate_4418195123223951010] 
    
        ON  [DimUser_9198092464201237191].[CreatedDateID] = [DimDate_4418195123223951010].[DimDateID]

    LEFT JOIN [Shared].[DimDate] AS [DimDate_788727317905513124] 
    
    ON  [DimUser_9198092464201237191].[DateOfBirthID] = [DimDate_788727317905513124].[DimDateID]
        

    LEFT JOIN [Shared].[DimOrganizationUnitLevel4] AS [DimOrganizationUnitLevel4_4715178511131083784] 
    
    JOIN [Shared].[DimOrganizationUnitLevel3] AS [DimOrganizationUnitLevel3_3040564685543401253] 
    
    JOIN [Shared].[DimOrganizationUnitLevel2] AS [DimOrganizationUnitLevel2_5718338828796781064] 
    
    JOIN [Shared].[DimOrganizationUnitLevel1] AS [DimOrganizationUnitLevel1_6968681674822591985] 
    
    JOIN [Shared].[DimOrganization] AS [DimOrganization_2880143524449847416] 
    
        ON  [DimOrganizationUnitLevel1_6968681674822591985].[DimOrganizationID] = [DimOrganization_2880143524449847416].[DimOrganizationID]

    JOIN [Classification].[DimOrganizationUnitType] AS [DimOrganizationUnitType_5971110158480137548] 
    
        ON  [DimOrganizationUnitLevel1_6968681674822591985].[DimOrganizationUnitTypeID] = [DimOrganizationUnitType_5971110158480137548].[DimOrganizationUnitTypeID]

        ON  [DimOrganizationUnitLevel2_5718338828796781064].[DimOrganizationUnitLevel1ID] = [DimOrganizationUnitLevel1_6968681674822591985].[DimOrganizationUnitLevel1ID]

    JOIN [Classification].[DimOrganizationUnitType] AS [DimOrganizationUnitType_4346255625115718803] 
    
        ON  [DimOrganizationUnitLevel2_5718338828796781064].[DimOrganizationUnitTypeID] = [DimOrganizationUnitType_4346255625115718803].[DimOrganizationUnitTypeID]

        ON  [DimOrganizationUnitLevel3_3040564685543401253].[DimOrganizationUnitLevel2ID] = [DimOrganizationUnitLevel2_5718338828796781064].[DimOrganizationUnitLevel2ID]

    JOIN [Classification].[DimOrganizationUnitType] AS [DimOrganizationUnitType_7424138092547433792] 
    
        ON  [DimOrganizationUnitLevel3_3040564685543401253].[DimOrganizationUnitTypeID] = [DimOrganizationUnitType_7424138092547433792].[DimOrganizationUnitTypeID]

        ON  [DimOrganizationUnitLevel4_4715178511131083784].[DimOrganizationUnitLevel3ID] = [DimOrganizationUnitLevel3_3040564685543401253].[DimOrganizationUnitLevel3ID]

    JOIN [Classification].[DimOrganizationUnitType] AS [DimOrganizationUnitType_4483790629406401443] 
    
        ON  [DimOrganizationUnitLevel4_4715178511131083784].[DimOrganizationUnitTypeID] = [DimOrganizationUnitType_4483790629406401443].[DimOrganizationUnitTypeID]

    ON  [DimUser_9198092464201237191].[DimOrganizationUnitLevel4ID] = [DimOrganizationUnitLevel4_4715178511131083784].[DimOrganizationUnitLevel4ID]
        

    LEFT JOIN [Shared].[DimPagaAccount] AS [DimPagaAccount_2178140109028161002] 
    
    JOIN [Classification].[DimPagaAccountStatus] AS [DimPagaAccountStatus_224543950861602305] 
    
        ON  [DimPagaAccount_2178140109028161002].[DimPagaAccountStatusID] = [DimPagaAccountStatus_224543950861602305].[DimPagaAccountStatusID]

    ON  [DimUser_9198092464201237191].[DimPagaAccountID] = [DimPagaAccount_2178140109028161002].[DimPagaAccountID]
        

    ON  [FactProcessTx_2155424918854536773].[DimCancellationApprovedByUserID] = [DimUser_9198092464201237191].[DimUserID]
        

    JOIN [Activity].[DimChannel] AS [DimChannel_6606059545958450768] 
    
        ON  [FactProcessTx_2155424918854536773].[DimChannelID] = [DimChannel_6606059545958450768].[DimChannelID]

    LEFT JOIN [Shared].[DimDate] AS [DimDate_365877824494014649] 
    
    ON  [FactProcessTx_2155424918854536773].[DimCompletedDateID] = [DimDate_365877824494014649].[DimDateID]
        

    LEFT JOIN [Shared].[DimTime] AS [DimTime_4419368832174666303] 
    
    ON  [FactProcessTx_2155424918854536773].[DimCompletedTimeID] = [DimTime_4419368832174666303].[DimTimeID]
        

    JOIN [Shared].[DimDate] AS [DimDate_2575035185864560920] 
    
        ON  [FactProcessTx_2155424918854536773].[DimCreatedDateID] = [DimDate_2575035185864560920].[DimDateID]

    JOIN [Shared].[DimTime] AS [DimTime_7984528826000585074] 
    
        ON  [FactProcessTx_2155424918854536773].[DimCreatedTimeID] = [DimTime_7984528826000585074].[DimTimeID]

    LEFT JOIN [Shared].[DimUser] AS [DimUser_7829929880564583224] 
    
    JOIN [Shared].[DimDate] AS [DimDate_5219840897639789633] 
    
        ON  [DimUser_7829929880564583224].[CreatedDateID] = [DimDate_5219840897639789633].[DimDateID]

    LEFT JOIN [Shared].[DimDate] AS [DimDate_7538008873909013767] 
    
    ON  [DimUser_7829929880564583224].[DateOfBirthID] = [DimDate_7538008873909013767].[DimDateID]
        

    LEFT JOIN [Shared].[DimOrganizationUnitLevel4] AS [DimOrganizationUnitLevel4_2413898408123054737] 
    
    JOIN [Shared].[DimOrganizationUnitLevel3] AS [DimOrganizationUnitLevel3_8670743573063441372] 
    
    JOIN [Shared].[DimOrganizationUnitLevel2] AS [DimOrganizationUnitLevel2_1866981793767786183] 
    
    JOIN [Shared].[DimOrganizationUnitLevel1] AS [DimOrganizationUnitLevel1_6373766543750111016] 
    
    JOIN [Shared].[DimOrganization] AS [DimOrganization_6361960198667250489] 
    
        ON  [DimOrganizationUnitLevel1_6373766543750111016].[DimOrganizationID] = [DimOrganization_6361960198667250489].[DimOrganizationID]

    JOIN [Classification].[DimOrganizationUnitType] AS [DimOrganizationUnitType_2865538746070266893] 
    
        ON  [DimOrganizationUnitLevel1_6373766543750111016].[DimOrganizationUnitTypeID] = [DimOrganizationUnitType_2865538746070266893].[DimOrganizationUnitTypeID]

        ON  [DimOrganizationUnitLevel2_1866981793767786183].[DimOrganizationUnitLevel1ID] = [DimOrganizationUnitLevel1_6373766543750111016].[DimOrganizationUnitLevel1ID]

    JOIN [Classification].[DimOrganizationUnitType] AS [DimOrganizationUnitType_2630825764333197804] 
    
        ON  [DimOrganizationUnitLevel2_1866981793767786183].[DimOrganizationUnitTypeID] = [DimOrganizationUnitType_2630825764333197804].[DimOrganizationUnitTypeID]

        ON  [DimOrganizationUnitLevel3_8670743573063441372].[DimOrganizationUnitLevel2ID] = [DimOrganizationUnitLevel2_1866981793767786183].[DimOrganizationUnitLevel2ID]

    JOIN [Classification].[DimOrganizationUnitType] AS [DimOrganizationUnitType_1942707203484632833] 
    
        ON  [DimOrganizationUnitLevel3_8670743573063441372].[DimOrganizationUnitTypeID] = [DimOrganizationUnitType_1942707203484632833].[DimOrganizationUnitTypeID]

        ON  [DimOrganizationUnitLevel4_2413898408123054737].[DimOrganizationUnitLevel3ID] = [DimOrganizationUnitLevel3_8670743573063441372].[DimOrganizationUnitLevel3ID]

    JOIN [Classification].[DimOrganizationUnitType] AS [DimOrganizationUnitType_970306226552502100] 
    
        ON  [DimOrganizationUnitLevel4_2413898408123054737].[DimOrganizationUnitTypeID] = [DimOrganizationUnitType_970306226552502100].[DimOrganizationUnitTypeID]

    ON  [DimUser_7829929880564583224].[DimOrganizationUnitLevel4ID] = [DimOrganizationUnitLevel4_2413898408123054737].[DimOrganizationUnitLevel4ID]
        

    LEFT JOIN [Shared].[DimPagaAccount] AS [DimPagaAccount_3251189531806266763] 
    
    JOIN [Classification].[DimPagaAccountStatus] AS [DimPagaAccountStatus_7088440667225465968] 
    
        ON  [DimPagaAccount_3251189531806266763].[DimPagaAccountStatusID] = [DimPagaAccountStatus_7088440667225465968].[DimPagaAccountStatusID]

    ON  [DimUser_7829929880564583224].[DimPagaAccountID] = [DimPagaAccount_3251189531806266763].[DimPagaAccountID]
        

    ON  [FactProcessTx_2155424918854536773].[DimInitiatingUserID] = [DimUser_7829929880564583224].[DimUserID]
        

    LEFT JOIN [Shared].[DimUser] AS [DimUser_3598468080949925943] 
    
    JOIN [Shared].[DimDate] AS [DimDate_7630457922854490772] 
    
        ON  [DimUser_3598468080949925943].[CreatedDateID] = [DimDate_7630457922854490772].[DimDateID]

    LEFT JOIN [Shared].[DimDate] AS [DimDate_9132616646026313650] 
    
    ON  [DimUser_3598468080949925943].[DateOfBirthID] = [DimDate_9132616646026313650].[DimDateID]
        

    LEFT JOIN [Shared].[DimOrganizationUnitLevel4] AS [DimOrganizationUnitLevel4_8472178489204532050] 
    
    JOIN [Shared].[DimOrganizationUnitLevel3] AS [DimOrganizationUnitLevel3_9108952204527542221] 
    
    JOIN [Shared].[DimOrganizationUnitLevel2] AS [DimOrganizationUnitLevel2_5580825462635230610] 
    
    JOIN [Shared].[DimOrganizationUnitLevel1] AS [DimOrganizationUnitLevel1_1027487850857761767] 
    
    JOIN [Shared].[DimOrganization] AS [DimOrganization_3038713715153990670] 
    
        ON  [DimOrganizationUnitLevel1_1027487850857761767].[DimOrganizationID] = [DimOrganization_3038713715153990670].[DimOrganizationID]

    JOIN [Classification].[DimOrganizationUnitType] AS [DimOrganizationUnitType_2568169991086296506] 
    
        ON  [DimOrganizationUnitLevel1_1027487850857761767].[DimOrganizationUnitTypeID] = [DimOrganizationUnitType_2568169991086296506].[DimOrganizationUnitTypeID]

        ON  [DimOrganizationUnitLevel2_5580825462635230610].[DimOrganizationUnitLevel1ID] = [DimOrganizationUnitLevel1_1027487850857761767].[DimOrganizationUnitLevel1ID]

    JOIN [Classification].[DimOrganizationUnitType] AS [DimOrganizationUnitType_5722608203107107333] 
    
        ON  [DimOrganizationUnitLevel2_5580825462635230610].[DimOrganizationUnitTypeID] = [DimOrganizationUnitType_5722608203107107333].[DimOrganizationUnitTypeID]

        ON  [DimOrganizationUnitLevel3_9108952204527542221].[DimOrganizationUnitLevel2ID] = [DimOrganizationUnitLevel2_5580825462635230610].[DimOrganizationUnitLevel2ID]

    JOIN [Classification].[DimOrganizationUnitType] AS [DimOrganizationUnitType_3963519827940745666] 
    
        ON  [DimOrganizationUnitLevel3_9108952204527542221].[DimOrganizationUnitTypeID] = [DimOrganizationUnitType_3963519827940745666].[DimOrganizationUnitTypeID]

        ON  [DimOrganizationUnitLevel4_8472178489204532050].[DimOrganizationUnitLevel3ID] = [DimOrganizationUnitLevel3_9108952204527542221].[DimOrganizationUnitLevel3ID]

    JOIN [Classification].[DimOrganizationUnitType] AS [DimOrganizationUnitType_6865767219472467909] 
    
        ON  [DimOrganizationUnitLevel4_8472178489204532050].[DimOrganizationUnitTypeID] = [DimOrganizationUnitType_6865767219472467909].[DimOrganizationUnitTypeID]

    ON  [DimUser_3598468080949925943].[DimOrganizationUnitLevel4ID] = [DimOrganizationUnitLevel4_8472178489204532050].[DimOrganizationUnitLevel4ID]
        

    LEFT JOIN [Shared].[DimPagaAccount] AS [DimPagaAccount_2581007898476568948] 
    
    JOIN [Classification].[DimPagaAccountStatus] AS [DimPagaAccountStatus_7657284256214482855] 
    
        ON  [DimPagaAccount_2581007898476568948].[DimPagaAccountStatusID] = [DimPagaAccountStatus_7657284256214482855].[DimPagaAccountStatusID]

    ON  [DimUser_3598468080949925943].[DimPagaAccountID] = [DimPagaAccount_2581007898476568948].[DimPagaAccountID]
        

    ON  [FactProcessTx_2155424918854536773].[DimOnBehalffUserID] = [DimUser_3598468080949925943].[DimUserID]
        

    JOIN [Classification].[DimProcessStatus] AS [DimProcessStatus_5084204647735337864] 
    
        ON  [FactProcessTx_2155424918854536773].[DimProcessStatusID] = [DimProcessStatus_5084204647735337864].[DimProcessStatusID]

    JOIN [Classification].[DimProcessType] AS [DimProcessType_7917521546185980192] 
    
    JOIN [Classification].[DimProcessTypeGroup] AS [DimProcessTypeGroup_8270232722657846277] 
    
        ON  [DimProcessType_7917521546185980192].[DimProcessTypeGroupID] = [DimProcessTypeGroup_8270232722657846277].[DimProcessTypeGroupID]

        ON  [FactProcessTx_2155424918854536773].[DimProcessTypeID] = [DimProcessType_7917521546185980192].[DimProcessTypeID]

    LEFT JOIN [Shared].[DimUser] AS [DimUser_1521834107942533088] 
    
    JOIN [Shared].[DimDate] AS [DimDate_2662546769410297511] 
    
        ON  [DimUser_1521834107942533088].[CreatedDateID] = [DimDate_2662546769410297511].[DimDateID]

    LEFT JOIN [Shared].[DimDate] AS [DimDate_1595269439251102577] 
    
    ON  [DimUser_1521834107942533088].[DateOfBirthID] = [DimDate_1595269439251102577].[DimDateID]
        

    LEFT JOIN [Shared].[DimOrganizationUnitLevel4] AS [DimOrganizationUnitLevel4_6239471690667502151] 
    
    JOIN [Shared].[DimOrganizationUnitLevel3] AS [DimOrganizationUnitLevel3_4106819995912814748] 
    
    JOIN [Shared].[DimOrganizationUnitLevel2] AS [DimOrganizationUnitLevel2_9191723864240443489] 
    
    JOIN [Shared].[DimOrganizationUnitLevel1] AS [DimOrganizationUnitLevel1_9020048231686545472] 
    
    JOIN [Shared].[DimOrganization] AS [DimOrganization_7113206676159222337] 
    
        ON  [DimOrganizationUnitLevel1_9020048231686545472].[DimOrganizationID] = [DimOrganization_7113206676159222337].[DimOrganizationID]

    JOIN [Classification].[DimOrganizationUnitType] AS [DimOrganizationUnitType_577702597053565835] 
    
        ON  [DimOrganizationUnitLevel1_9020048231686545472].[DimOrganizationUnitTypeID] = [DimOrganizationUnitType_577702597053565835].[DimOrganizationUnitTypeID]

        ON  [DimOrganizationUnitLevel2_9191723864240443489].[DimOrganizationUnitLevel1ID] = [DimOrganizationUnitLevel1_9020048231686545472].[DimOrganizationUnitLevel1ID]

    JOIN [Classification].[DimOrganizationUnitType] AS [DimOrganizationUnitType_8787542160912464860] 
    
        ON  [DimOrganizationUnitLevel2_9191723864240443489].[DimOrganizationUnitTypeID] = [DimOrganizationUnitType_8787542160912464860].[DimOrganizationUnitTypeID]

        ON  [DimOrganizationUnitLevel3_4106819995912814748].[DimOrganizationUnitLevel2ID] = [DimOrganizationUnitLevel2_9191723864240443489].[DimOrganizationUnitLevel2ID]

    JOIN [Classification].[DimOrganizationUnitType] AS [DimOrganizationUnitType_8158977390669645993] 
    
        ON  [DimOrganizationUnitLevel3_4106819995912814748].[DimOrganizationUnitTypeID] = [DimOrganizationUnitType_8158977390669645993].[DimOrganizationUnitTypeID]

        ON  [DimOrganizationUnitLevel4_6239471690667502151].[DimOrganizationUnitLevel3ID] = [DimOrganizationUnitLevel3_4106819995912814748].[DimOrganizationUnitLevel3ID]

    JOIN [Classification].[DimOrganizationUnitType] AS [DimOrganizationUnitType_947881781954753940] 
    
        ON  [DimOrganizationUnitLevel4_6239471690667502151].[DimOrganizationUnitTypeID] = [DimOrganizationUnitType_947881781954753940].[DimOrganizationUnitTypeID]

    ON  [DimUser_1521834107942533088].[DimOrganizationUnitLevel4ID] = [DimOrganizationUnitLevel4_6239471690667502151].[DimOrganizationUnitLevel4ID]
        

    LEFT JOIN [Shared].[DimPagaAccount] AS [DimPagaAccount_2629807707912606835] 
    
    JOIN [Classification].[DimPagaAccountStatus] AS [DimPagaAccountStatus_2758389574266924536] 
    
        ON  [DimPagaAccount_2629807707912606835].[DimPagaAccountStatusID] = [DimPagaAccountStatus_2758389574266924536].[DimPagaAccountStatusID]

    ON  [DimUser_1521834107942533088].[DimPagaAccountID] = [DimPagaAccount_2629807707912606835].[DimPagaAccountID]
        

    ON  [FactProcessTx_2155424918854536773].[DimReceivingUserID] = [DimUser_1521834107942533088].[DimUserID]
        

    JOIN [Shared].[DimDate] AS [DimDate_7222610539715082645] 
    
        ON  [FactProcessTx_2155424918854536773].[DimStartedDateID] = [DimDate_7222610539715082645].[DimDateID]

    JOIN [Shared].[DimTime] AS [DimTime_8881099390814573581] 
    
        ON  [FactProcessTx_2155424918854536773].[DimStartedTimeID] = [DimTime_8881099390814573581].[DimTimeID]

    LEFT JOIN [Shared].[DimUser] AS [DimUser_2092530186646671205] 
    
    JOIN [Shared].[DimDate] AS [DimDate_4297436687434032674] 
    
        ON  [DimUser_2092530186646671205].[CreatedDateID] = [DimDate_4297436687434032674].[DimDateID]

    LEFT JOIN [Shared].[DimDate] AS [DimDate_985470223138081280] 
    
    ON  [DimUser_2092530186646671205].[DateOfBirthID] = [DimDate_985470223138081280].[DimDateID]
        

    LEFT JOIN [Shared].[DimOrganizationUnitLevel4] AS [DimOrganizationUnitLevel4_5212210459083945180] 
    
    JOIN [Shared].[DimOrganizationUnitLevel3] AS [DimOrganizationUnitLevel3_9060604181739718783] 
    
    JOIN [Shared].[DimOrganizationUnitLevel2] AS [DimOrganizationUnitLevel2_7160374822472584332] 
    
    JOIN [Shared].[DimOrganizationUnitLevel1] AS [DimOrganizationUnitLevel1_7890689198759448797] 
    
    JOIN [Shared].[DimOrganization] AS [DimOrganization_3300751959439689572] 
    
        ON  [DimOrganizationUnitLevel1_7890689198759448797].[DimOrganizationID] = [DimOrganization_3300751959439689572].[DimOrganizationID]

    JOIN [Classification].[DimOrganizationUnitType] AS [DimOrganizationUnitType_6529098280344560424] 
    
        ON  [DimOrganizationUnitLevel1_7890689198759448797].[DimOrganizationUnitTypeID] = [DimOrganizationUnitType_6529098280344560424].[DimOrganizationUnitTypeID]

        ON  [DimOrganizationUnitLevel2_7160374822472584332].[DimOrganizationUnitLevel1ID] = [DimOrganizationUnitLevel1_7890689198759448797].[DimOrganizationUnitLevel1ID]

    JOIN [Classification].[DimOrganizationUnitType] AS [DimOrganizationUnitType_7423840138803540953] 
    
        ON  [DimOrganizationUnitLevel2_7160374822472584332].[DimOrganizationUnitTypeID] = [DimOrganizationUnitType_7423840138803540953].[DimOrganizationUnitTypeID]

        ON  [DimOrganizationUnitLevel3_9060604181739718783].[DimOrganizationUnitLevel2ID] = [DimOrganizationUnitLevel2_7160374822472584332].[DimOrganizationUnitLevel2ID]

    JOIN [Classification].[DimOrganizationUnitType] AS [DimOrganizationUnitType_5655990949849184060] 
    
        ON  [DimOrganizationUnitLevel3_9060604181739718783].[DimOrganizationUnitTypeID] = [DimOrganizationUnitType_5655990949849184060].[DimOrganizationUnitTypeID]

        ON  [DimOrganizationUnitLevel4_5212210459083945180].[DimOrganizationUnitLevel3ID] = [DimOrganizationUnitLevel3_9060604181739718783].[DimOrganizationUnitLevel3ID]

    JOIN [Classification].[DimOrganizationUnitType] AS [DimOrganizationUnitType_9046402284831339543] 
    
        ON  [DimOrganizationUnitLevel4_5212210459083945180].[DimOrganizationUnitTypeID] = [DimOrganizationUnitType_9046402284831339543].[DimOrganizationUnitTypeID]

    ON  [DimUser_2092530186646671205].[DimOrganizationUnitLevel4ID] = [DimOrganizationUnitLevel4_5212210459083945180].[DimOrganizationUnitLevel4ID]
        

    LEFT JOIN [Shared].[DimPagaAccount] AS [DimPagaAccount_5225584565586001994] 
    
    JOIN [Classification].[DimPagaAccountStatus] AS [DimPagaAccountStatus_7418056200276071827] 
    
        ON  [DimPagaAccount_5225584565586001994].[DimPagaAccountStatusID] = [DimPagaAccountStatus_7418056200276071827].[DimPagaAccountStatusID]

    ON  [DimUser_2092530186646671205].[DimPagaAccountID] = [DimPagaAccount_5225584565586001994].[DimPagaAccountID]
        

    ON  [FactProcessTx_2155424918854536773].[DimVerifiedByUserID] = [DimUser_2092530186646671205].[DimUserID]
        

        ON  [FactFinancialTxHeader_7515198397873413912].[FactProcessTxID] = [FactProcessTx_2155424918854536773].[FactProcessTxID]
GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimProcessTypeGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimProcessTypeGroupSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimProcessTypeGroupSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimProcessTypeGroupSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimProcessTypeGroupSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimProcessTypeGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimProcessTypeGroupName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimProcessTypeGroupName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimProcessTypeGroupName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimProcessTypeGroupName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimProcessType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimProcessTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimProcessTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimProcessTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimProcessTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimProcessType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimProcessTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimProcessTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimProcessTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimProcessTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimProcessType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimProcessTypeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimProcessTypeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimProcessTypeGroupID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimProcessTypeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimProcessTypeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimProcessType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimProcessTypeDescriptionText';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimProcessTypeDescriptionText';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DescriptionText', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimProcessTypeDescriptionText';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimProcessTypeDescriptionText';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimProcessStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimProcessStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimProcessStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimProcessStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimProcessStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimProcessStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimProcessStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimProcessStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimProcessStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimProcessStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimProcessStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimProcessStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimAgentCommissionType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimAgentCommissionTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimAgentCommissionTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimAgentCommissionTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimAgentCommissionTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimAgentCommissionTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimAgentCommissionType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimAgentCommissionTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimAgentCommissionTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimAgentCommissionTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimAgentCommissionTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimAgentCommissionTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxWithdrawalCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxWithdrawalCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'WithdrawalCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxWithdrawalCode';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxWithdrawalCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxVerificationStatus';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxVerificationStatus';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'VerificationStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxVerificationStatus';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxVerificationStatus';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxSenderPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxSenderPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SenderPhoneNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxSenderPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxSenderPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ReferenceNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxProcessFee';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxProcessFee';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ProcessFee', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxProcessFee';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxProcessFee';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxProcessCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxProcessCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ProcessCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxProcessCode';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxProcessCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxProcessAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxProcessAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ProcessAmount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxProcessAmount';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxProcessAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxPaymentSource';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxPaymentSource';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'PaymentSource', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxPaymentSource';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxPaymentSource';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxOriginalFactProcessTxID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxOriginalFactProcessTxID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'OriginalFactProcessTxID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxOriginalFactProcessTxID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxOriginalFactProcessTxID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxMerchantCustomerAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxMerchantCustomerAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'MerchantCustomerAccountNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxMerchantCustomerAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxMerchantCustomerAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxMerchantConfirmationCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxMerchantConfirmationCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'MerchantConfirmationCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxMerchantConfirmationCode';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxMerchantConfirmationCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxLinkedPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxLinkedPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'LinkedPhoneNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxLinkedPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxLinkedPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxIntegrationReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxIntegrationReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IntegrationReferenceNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxIntegrationReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxIntegrationReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimVerifiedByUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimVerifiedByUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimVerifiedByUserID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimVerifiedByUserID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimVerifiedByUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimStartedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimStartedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimStartedTimeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimStartedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimStartedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimStartedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimStartedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimStartedDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimStartedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimStartedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimReceivingUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimReceivingUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimReceivingUserID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimReceivingUserID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimReceivingUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimProcessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimProcessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimProcessTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimProcessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimProcessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimProcessStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimProcessStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimProcessStatusID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimProcessStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimProcessStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimOnBehalffUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimOnBehalffUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOnBehalffUserID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimOnBehalffUserID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimOnBehalffUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimInitiatingUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimInitiatingUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimInitiatingUserID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimInitiatingUserID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimInitiatingUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimCreatedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimCreatedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimCreatedTimeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimCreatedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimCreatedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimCreatedDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimCompletedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimCompletedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimCompletedTimeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimCompletedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimCompletedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimCompletedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimCompletedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimCompletedDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimCompletedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimCompletedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimChannelID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimCancellationApprovedByUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimCancellationApprovedByUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimCancellationApprovedByUserID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimCancellationApprovedByUserID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimCancellationApprovedByUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimApprovedByUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimApprovedByUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimApprovedByUserID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimApprovedByUserID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimApprovedByUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimAgentCommissionTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimAgentCommissionTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimAgentCommissionTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimAgentCommissionTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDimAgentCommissionTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDepositNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDepositNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DepositNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDepositNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDepositNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDependentFactProcessTxID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDependentFactProcessTxID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DependentFactProcessTxID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDependentFactProcessTxID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxDependentFactProcessTxID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxCustomerPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxCustomerPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'CustomerPhoneNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxCustomerPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxCustomerPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxCustomerBillerAccount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxCustomerBillerAccount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'CustomerBillerAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxCustomerBillerAccount';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxCustomerBillerAccount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxCardProcessorName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxCardProcessorName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'CardProcessorName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxCardProcessorName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxCardProcessorName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxATMReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxATMReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ATMReferenceNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxATMReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxATMReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxAgentCommissionAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxAgentCommissionAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'AgentCommissionAmount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxAgentCommissionAmount';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactProcessTxAgentCommissionAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccountStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccountStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountRegistrationDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountRegistrationDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'RegistrationDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountRegistrationDateID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountRegistrationDateID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'RegistrationDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountRegistrationDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountPagaAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountPagaAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'PagaAccountNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountPagaAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountPagaAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'PagaAccountNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountPagaAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsServiceAggregator';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsServiceAggregator';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsServiceAggregator', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsServiceAggregator';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsServiceAggregator';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsRemittanceProcessor';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsRemittanceProcessor';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsRemittanceProcessor', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsRemittanceProcessor';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsRemittanceProcessor';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsPaga';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsPaga';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsPaga', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsPaga';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsPaga';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsMobileOperator';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsMobileOperator';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsMobileOperator', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsMobileOperator';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsMobileOperator';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsMerchant';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsMerchant';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsMerchant', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsMerchant';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsMerchant';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsEnabled', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'IsEnabled', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsCustomer';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsCustomer';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsCustomer', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsCustomer';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsCustomer';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsCashCollector';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsCashCollector';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsCashCollector', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsCashCollector';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsCashCollector';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsCardProcessor';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsCardProcessor';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsCardProcessor', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsCardProcessor';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsCardProcessor';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsBusiness';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsBusiness';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsBusiness', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsBusiness';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsBusiness';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsBank';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsBank';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsBank', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsBank';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsBank';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsAgent';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsAgent';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsAgent', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsAgent';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsAgent';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsAffiliate';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsAffiliate';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsAffiliate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsAffiliate';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsAffiliate';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsActive';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsActive';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsActive', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsActive';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsActive';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'IsActive', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountIsActive';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccounthasOnlineAccount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccounthasOnlineAccount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'hasOnlineAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccounthasOnlineAccount';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccounthasOnlineAccount';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'hasOnlineAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccounthasOnlineAccount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountExternalAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountExternalAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ExternalAccountNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountExternalAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountExternalAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'ExternalAccountNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountExternalAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimPagaAccountStatusID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimPagaAccountStatusID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'CreatedDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimPagaAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountBankingStatus';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountBankingStatus';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'BankingStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountBankingStatus';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountBankingStatus';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'BankingStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimPagaAccountBankingStatus';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserSex';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserSex';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Sex', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserSex';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserSex';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'PhoneNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserMiddleName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserMiddleName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'MiddleName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserMiddleName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserMiddleName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserLastName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserLastName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'LastName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserLastName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserLastName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsEnabled', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserIsEnabled';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FirstName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserFirstName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserEmail';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserEmail';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Email', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserEmail';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserEmail';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimPagaAccountID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserDimOrganizationUnitLevel4ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserDimOrganizationUnitLevel4ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationUnitLevel4ID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserDimOrganizationUnitLevel4ID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserDimOrganizationUnitLevel4ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserDateOfBirthID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserDateOfBirthID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DateOfBirthID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserDateOfBirthID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserDateOfBirthID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimUser', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'CreatedDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimUserCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationVerificationStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'6', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationVerificationStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'6', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationSubscriptionStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'6', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationSubscriptionStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'6', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimChannel', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimChannelTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimChannelTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'TextDesciption', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimChannelTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'6', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimChannelTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'Description', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimChannelTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimChannel', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimChannelSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimChannelSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimChannelSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimChannelSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'6', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimChannelSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimChannel', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimChannelName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimChannelName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimChannelName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimChannelName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'6', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimChannelName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimBusinessType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimBusinessTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimBusinessTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimBusinessTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimBusinessTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'6', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimBusinessTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimBusinessType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimBusinessTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimBusinessTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimBusinessTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimBusinessTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'6', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimBusinessTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationWebsiteURL';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationWebsiteURL';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'WebsiteURL', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationWebsiteURL';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationWebsiteURL';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'WebsiteURL', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationWebsiteURL';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationVATCertificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationVATCertificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'VATCertificationNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationVATCertificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationVATCertificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'VATCertificationNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationVATCertificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'TextDesciption', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'Description', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationTextDesciption';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationTaxIDNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationTaxIDNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'TaxIDNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationTaxIDNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationTaxIDNumber';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'TaxIDNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationTaxIDNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ReferenceNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'ReferenceNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationRcName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationRcName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'RcName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationRcName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationRcName';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'RcName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationRcName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationOrganizationCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationOrganizationCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'OrganizationCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationOrganizationCode';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationOrganizationCode';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'OrganizationCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationOrganizationCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationDisplayName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationDisplayName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DisplayName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationDisplayName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationDisplayName';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DisplayName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationDisplayName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimPagaAccountID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationVerificationStatusID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimOrganizationVerificationStatusID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationVerificationStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationSubscriptionStatusID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimOrganizationSubscriptionStatusID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationSubscriptionStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimMerchantCategoryID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimMerchantCategoryID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimMerchantCategoryID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimMerchantCategoryID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimMerchantCategoryID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimChannelID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganization', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimBusinessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimBusinessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimBusinessTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimBusinessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'5', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimBusinessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimBusinessTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationDimBusinessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1Name';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1Name';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1IdentificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1IdentificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IdentificationNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1IdentificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1IdentificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1DimOrganizationUnitTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1DimOrganizationUnitTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationUnitTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1DimOrganizationUnitTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1DimOrganizationUnitTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimOrganizationUnitTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1DimOrganizationUnitTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1DimOrganizationID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1DimOrganizationID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1DimOrganizationID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1DimOrganizationID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimOrganizationID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel1DimOrganizationID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2Name';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2Name';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2IdentificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2IdentificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IdentificationNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2IdentificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2IdentificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2DimOrganizationUnitTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2DimOrganizationUnitTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationUnitTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2DimOrganizationUnitTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2DimOrganizationUnitTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimOrganizationUnitTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2DimOrganizationUnitTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2DimOrganizationUnitLevel1ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2DimOrganizationUnitLevel1ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationUnitLevel1ID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2DimOrganizationUnitLevel1ID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2DimOrganizationUnitLevel1ID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimOrganizationUnitLevel1ID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel2DimOrganizationUnitLevel1ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3Name';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3Name';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3IdentificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3IdentificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IdentificationNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3IdentificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3IdentificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3DimOrganizationUnitTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3DimOrganizationUnitTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationUnitTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3DimOrganizationUnitTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3DimOrganizationUnitTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimOrganizationUnitTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3DimOrganizationUnitTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel3', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3DimOrganizationUnitLevel2ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3DimOrganizationUnitLevel2ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationUnitLevel2ID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3DimOrganizationUnitLevel2ID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3DimOrganizationUnitLevel2ID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimOrganizationUnitLevel2ID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel3DimOrganizationUnitLevel2ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4Name';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4Name';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4Name';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4IdentificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4IdentificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IdentificationNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4IdentificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4IdentificationNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4DimOrganizationUnitTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4DimOrganizationUnitTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationUnitTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4DimOrganizationUnitTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4DimOrganizationUnitTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimOrganizationUnitTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4DimOrganizationUnitTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimOrganizationUnitLevel4', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4DimOrganizationUnitLevel3ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4DimOrganizationUnitLevel3ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationUnitLevel3ID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4DimOrganizationUnitLevel3ID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4DimOrganizationUnitLevel3ID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimOrganizationUnitLevel3ID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimOrganizationUnitLevel4DimOrganizationUnitLevel3ID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimFinancialTxTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialTxType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimFinancialTxTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimFinancialTxTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimFinancialTxTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimFinancialTxTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialTxType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimFinancialTxTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimFinancialTxTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimFinancialTxTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimFinancialTxTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimFinancialTxTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialTxType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimFinancialTxTypeFinancialTxCategory';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimFinancialTxTypeFinancialTxCategory';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FinancialTxCategory', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimFinancialTxTypeFinancialTxCategory';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimFinancialTxTypeFinancialTxCategory';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialTxSubType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimFinancialTxSubTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimFinancialTxSubTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimFinancialTxSubTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimFinancialTxSubTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimFinancialTxSubTypeSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimFinancialTxSubType', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimFinancialTxSubTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimFinancialTxSubTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimFinancialTxSubTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimFinancialTxSubTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimFinancialTxSubTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimCurrency', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimCurrencySymbol';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimCurrencySymbol';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Symbol', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimCurrencySymbol';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimCurrencySymbol';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'Symbol', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimCurrencySymbol';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimCurrency', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimCurrencySourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimCurrencySourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimCurrencySourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'BusinessKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimCurrencySourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimCurrencySourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimCurrency', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimCurrencyName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimCurrencyName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Name', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimCurrencyName';


GO
EXECUTE sp_addextendedproperty @name = N'SCDType', @value = N'2', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimCurrencyName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimCurrencyName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimCurrency', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimCurrencyISOCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimCurrencyISOCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ISOCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimCurrencyISOCode';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimCurrencyISOCode';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'ISOCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimCurrencyISOCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimTime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimTimeTimeInSecond';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimTimeTimeInSecond';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'TimeInSecond', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimTimeTimeInSecond';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimTimeTimeInSecond';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimTime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimTimeSecondNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimTimeSecondNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SecondNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimTimeSecondNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimTimeSecondNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimTime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimTimeMinuteNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimTimeMinuteNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'MinuteNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimTimeMinuteNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimTimeMinuteNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimTime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimTimeHourNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimTimeHourNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'HourNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimTimeHourNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimTimeHourNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimTime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimTimeHourlyBucket';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimTimeHourlyBucket';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'HourlyBucket', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimTimeHourlyBucket';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimTimeHourlyBucket';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimTime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimTimeFullTime';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimTimeFullTime';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FullTime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimTimeFullTime';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimTimeFullTime';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimTime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimTimeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimTime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimTimeDayTimeBucketGroupKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimTimeDayTimeBucketGroupKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DayTimeBucketGroupKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimTimeDayTimeBucketGroupKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimTimeDayTimeBucketGroupKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimTime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimTimeDayTimeBucket';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimTimeDayTimeBucket';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DayTimeBucket', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimTimeDayTimeBucket';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimTimeDayTimeBucket';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateYearName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateYearName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'YearName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateYearName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateYearName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Year', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateYear';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateWeekOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateWeekOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'WeekOfYear', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateWeekOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateWeekOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateWeekOfQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateWeekOfQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'WeekOfQuarter', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateWeekOfQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateWeekOfQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateWeekOfMonth';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateWeekOfMonth';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'WeekOfMonth', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateWeekOfMonth';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateWeekOfMonth';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateQuarterName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateQuarterName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'QuarterName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateQuarterName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateQuarterName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Quarter', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateMonthYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateMonthYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'MonthYear', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateMonthYear';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateMonthYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateMonthOfQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateMonthOfQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'MonthOfQuarter', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateMonthOfQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateMonthOfQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateMonthName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateMonthName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'MonthName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateMonthName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateMonthName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateMonth';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateMonth';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Month', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateMonth';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateMonth';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateMMYYYY';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateMMYYYY';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'MMYYYY', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateMMYYYY';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateMMYYYY';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateLastDayOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateLastDayOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'LastDayOfYear', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateLastDayOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateLastDayOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateLastDayOfQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateLastDayOfQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'LastDayOfQuarter', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateLastDayOfQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateLastDayOfQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateLastDayOfMonth';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateLastDayOfMonth';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'LastDayOfMonth', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateLastDayOfMonth';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateLastDayOfMonth';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateIsWeekday';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateIsWeekday';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsWeekday', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateIsWeekday';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateIsWeekday';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateIsHolidayUSA';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateIsHolidayUSA';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsHolidayUSA', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateIsHolidayUSA';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateIsHolidayUSA';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateIsHolidayUK';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateIsHolidayUK';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsHolidayUK', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateIsHolidayUK';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateIsHolidayUK';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateIsHolidayNG';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateIsHolidayNG';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsHolidayNG', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateIsHolidayNG';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateIsHolidayNG';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateHolidayUSA';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateHolidayUSA';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'HolidayUSA', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateHolidayUSA';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateHolidayUSA';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateHolidayUK';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateHolidayUK';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'HolidayUK', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateHolidayUK';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateHolidayUK';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateHolidayNG';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateHolidayNG';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'HolidayNG', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateHolidayNG';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateHolidayNG';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFullDateUSA';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFullDateUSA';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FullDateUSA', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFullDateUSA';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFullDateUSA';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFullDateUK';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFullDateUK';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FullDateUK', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFullDateUK';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFullDateUK';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFullDate';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFullDate';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FullDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFullDate';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFullDate';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFiscalYearName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFiscalYearName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FiscalYearName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFiscalYearName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFiscalYearName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFiscalYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFiscalYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FiscalYear', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFiscalYear';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFiscalYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFiscalWeekOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFiscalWeekOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FiscalWeekOfYear', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFiscalWeekOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFiscalWeekOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFiscalQuarterName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFiscalQuarterName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FiscalQuarterName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFiscalQuarterName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFiscalQuarterName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFiscalQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFiscalQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FiscalQuarter', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFiscalQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFiscalQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFiscalMonthYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFiscalMonthYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FiscalMonthYear', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFiscalMonthYear';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFiscalMonthYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFiscalMonth';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFiscalMonth';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FiscalMonth', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFiscalMonth';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFiscalMonth';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFiscalMMYYYY';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFiscalMMYYYY';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FiscalMMYYYY', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFiscalMMYYYY';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFiscalMMYYYY';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFiscalLastDayOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFiscalLastDayOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FiscalLastDayOfYear', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFiscalLastDayOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFiscalLastDayOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFiscalLastDayOfQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFiscalLastDayOfQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FiscalLastDayOfQuarter', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFiscalLastDayOfQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFiscalLastDayOfQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFiscalLastDayOfMonth';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFiscalLastDayOfMonth';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FiscalLastDayOfMonth', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFiscalLastDayOfMonth';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFiscalLastDayOfMonth';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFiscalFirstDayOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFiscalFirstDayOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FiscalFirstDayOfYear', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFiscalFirstDayOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFiscalFirstDayOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFiscalFirstDayOfQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFiscalFirstDayOfQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FiscalFirstDayOfQuarter', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFiscalFirstDayOfQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFiscalFirstDayOfQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFiscalFirstDayOfMonth';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFiscalFirstDayOfMonth';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FiscalFirstDayOfMonth', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFiscalFirstDayOfMonth';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFiscalFirstDayOfMonth';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFiscalDayOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFiscalDayOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FiscalDayOfYear', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFiscalDayOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFiscalDayOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFirstDayOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFirstDayOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FirstDayOfYear', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFirstDayOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFirstDayOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFirstDayOfQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFirstDayOfQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FirstDayOfQuarter', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFirstDayOfQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFirstDayOfQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFirstDayOfMonth';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFirstDayOfMonth';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FirstDayOfMonth', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFirstDayOfMonth';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateFirstDayOfMonth';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateDaySuffix';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateDaySuffix';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DaySuffix', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateDaySuffix';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateDaySuffix';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateDayOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateDayOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DayOfYear', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateDayOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateDayOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateDayOfWeekUSA';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateDayOfWeekUSA';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DayOfWeekUSA', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateDayOfWeekUSA';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateDayOfWeekUSA';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateDayOfWeekUK';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateDayOfWeekUK';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DayOfWeekUK', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateDayOfWeekUK';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateDayOfWeekUK';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateDayOfWeekInYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateDayOfWeekInYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DayOfWeekInYear', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateDayOfWeekInYear';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateDayOfWeekInYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateDayOfWeekInMonth';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateDayOfWeekInMonth';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DayOfWeekInMonth', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateDayOfWeekInMonth';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateDayOfWeekInMonth';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateDayOfQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateDayOfQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DayOfQuarter', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateDayOfQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateDayOfQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateDayOfMonth';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateDayOfMonth';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DayOfMonth', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateDayOfMonth';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateDayOfMonth';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateDayName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateDayName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DayName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateDayName';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'1', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'DimDateDayName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderTextDescription';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderTextDescription';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'TextDescription', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderTextDescription';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderTextDescription';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderSourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderShortCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderShortCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ShortCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderShortCode';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderShortCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderRelatedFactFinancialTxHeaderID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderRelatedFactFinancialTxHeaderID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'RelatedFactFinancialTxHeaderID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderRelatedFactFinancialTxHeaderID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderRelatedFactFinancialTxHeaderID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'RelatedTransactionID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderRelatedFactFinancialTxHeaderID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ReferenceNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderOriginalFactFinancialTxHeaderID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderOriginalFactFinancialTxHeaderID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'OriginalFactFinancialTxHeaderID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderOriginalFactFinancialTxHeaderID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderOriginalFactFinancialTxHeaderID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'OriginalTransactionID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderOriginalFactFinancialTxHeaderID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderForeignCurrencyAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderForeignCurrencyAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ForeignCurrencyAmount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderForeignCurrencyAmount';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderForeignCurrencyAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderFee';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderFee';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Fee', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderFee';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderFee';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderFactProcessTxID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderFactProcessTxID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FactProcessTxID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderFactProcessTxID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderFactProcessTxID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FactFinancialTxHeaderID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderExternalReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderExternalReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ExternalReferenceNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderExternalReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderExternalReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderExchangeRate';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderExchangeRate';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ExchangeRate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderExchangeRate';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderExchangeRate';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimUserID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimUserID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimUserID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimUserID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimTransactionTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimTransactionTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimTransactionTimeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimTransactionTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimTransactionTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimTransactionTimeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimTransactionTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimTransactionDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimTransactionDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimTransactionDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimTransactionDateID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimTransactionDateID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimTransactionDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimTransactionDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimOrganizationUnitLevel4ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimOrganizationUnitLevel4ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOrganizationUnitLevel4ID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimOrganizationUnitLevel4ID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimOrganizationUnitLevel4ID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimFinancialTxTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimFinancialTxTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimFinancialTxTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimFinancialTxTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimFinancialTxTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimFinancialTxTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimFinancialTxTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimFinancialTxSubTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimFinancialTxSubTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimFinancialTxSubTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimFinancialTxSubTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimFinancialTxSubTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimEffectiveTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimEffectiveTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimEffectiveTimeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimEffectiveTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimEffectiveTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimEffectiveTimeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimEffectiveTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimEffectiveDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimEffectiveDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimEffectiveDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimEffectiveDateID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimEffectiveDateID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimEffectiveDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimEffectiveDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimCurrencyID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimCurrencyID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimCurrencyID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimCurrencyID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimCurrencyID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimCreatedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimCreatedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimCreatedTimeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimCreatedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimCreatedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimCreatedTimeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimCreatedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimCreatedDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimCreatedDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderDimCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactFinancialTxHeader', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Finance', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Amount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactFinancialTxHeader', @level2type = N'COLUMN', @level2name = N'FactFinancialTxHeaderAmount';

