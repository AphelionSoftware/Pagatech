SET IDENTITY_INSERT Classification.DimBankingStatus ON; 
	INSERT INTO Classification.DimBankingStatus (DimBankingStatusID,SourceKey) VALUES (-1,'UNKNOWN'); 
	SET IDENTITY_INSERT Classification.DimBankingStatus OFF;
	GO
	
	

	
SET IDENTITY_INSERT Classification.DimAgentCommissionType ON; 
	INSERT INTO Classification.DimAgentCommissionType (DimAgentCommissionTypeID,Name,SourceKey) VALUES (-1,'UNKNOWN','UNKNOWN'); 
	SET IDENTITY_INSERT Classification.DimAgentCommissionType OFF;
	GO
	
	
SET IDENTITY_INSERT Classification.DimBusinessType ON; 
	INSERT INTO Classification.DimBusinessType (DimBusinessTypeID,Name,SourceKey) VALUES (-1,'UNKNOWN','UNKNOWN'); 
	SET IDENTITY_INSERT Classification.DimBusinessType OFF;
	GO
	
	
SET IDENTITY_INSERT Classification.DimFinancialTransactionSubType ON; 
	INSERT INTO Classification.DimFinancialTransactionSubType (DimFinancialTxSubTypeID,Name,SourceKey) VALUES (-1,'UNKNOWN','UNKNOWN'); 
	SET IDENTITY_INSERT Classification.DimFinancialTransactionSubType OFF;
	GO
	
	
SET IDENTITY_INSERT Classification.DimFinancialTransactionType ON; 
	INSERT INTO Classification.DimFinancialTransactionType (DimFinancialTxTypeID,FinancialTxCategory,Name,SourceKey) VALUES (-1,'UNKNOWN','UNKNOWN','UNKNOWN'); 
	SET IDENTITY_INSERT Classification.DimFinancialTransactionType OFF;
	GO
	
	
SET IDENTITY_INSERT Classification.DimIntegrationTransactionResult ON; 
	INSERT INTO Classification.DimIntegrationTransactionResult (DimIntegrationTxResultID,SourceKey) VALUES (-1,'UNKNOWN'); 
	SET IDENTITY_INSERT Classification.DimIntegrationTransactionResult OFF;
	GO
	
	
SET IDENTITY_INSERT Classification.DimIntegrationTransactionType ON; 
	INSERT INTO Classification.DimIntegrationTransactionType (DimIntegrationTxTypeID,SourceKey) VALUES (-1,'UNKNOWN'); 
	SET IDENTITY_INSERT Classification.DimIntegrationTransactionType OFF;
	GO
	
	
SET IDENTITY_INSERT Classification.DimMerchantCategory ON; 
	INSERT INTO Classification.DimMerchantCategory (DimMerchantCategoryID,Name,SourceKey) VALUES (-1,'UNKNOWN','UNKNOWN'); 
	SET IDENTITY_INSERT Classification.DimMerchantCategory OFF;
	GO
	
	
SET IDENTITY_INSERT Classification.DimOrganizationSubscriptionStatus ON; 
	INSERT INTO Classification.DimOrganizationSubscriptionStatus (DimOrganizationSubscriptionStatusID,Name,SourceKey) VALUES (-1,'UNKNOWN','UNKNOWN'); 
	SET IDENTITY_INSERT Classification.DimOrganizationSubscriptionStatus OFF;
	GO
	
	
SET IDENTITY_INSERT Classification.DimOrganizationUnitType ON; 
	INSERT INTO Classification.DimOrganizationUnitType 
	(DimOrganizationUnitTypeID,Name,SourceKey) 
	VALUES (-1,'UNKNOWN','UNKNOWN'), (0,'PARENT ORGANIZATION','PARENT ORGANIZATION'); 
	SET IDENTITY_INSERT Classification.DimOrganizationUnitType OFF;
	GO
	
	
SET IDENTITY_INSERT Classification.DimOrganizationVerificationStatus ON; 
	INSERT INTO Classification.DimOrganizationVerificationStatus (DimOrganizationVerificationStatusID,Name,SourceKey) VALUES (-1,'UNKNOWN','UNKNOWN'); 
	SET IDENTITY_INSERT Classification.DimOrganizationVerificationStatus OFF;
	GO
	
	
SET IDENTITY_INSERT Classification.DimPagaAccountStatus ON; 
	INSERT INTO Classification.DimPagaAccountStatus (DimPagaAccountStatusID,Name,SourceKey) VALUES (-1,'UNKNOWN','UNKNOWN'); 
	SET IDENTITY_INSERT Classification.DimPagaAccountStatus OFF;
	GO
	
	
SET IDENTITY_INSERT Classification.DimPagaAccountUserType ON; 
	INSERT INTO Classification.DimPagaAccountUserType (DimPagaAccountUserTypeID,Name,SourceKey) VALUES (-1,'UNKNOWN','UNKNOWN'); 
	SET IDENTITY_INSERT Classification.DimPagaAccountUserType OFF;
	GO
	
	
SET IDENTITY_INSERT Classification.DimProcessChannel ON; 
	INSERT INTO Classification.DimProcessChannel (DimProcessChannelID,Name,SourceKey) VALUES (-1,'UNKNOWN','UNKNOWN'); 
	SET IDENTITY_INSERT Classification.DimProcessChannel OFF;
	GO
	
	
SET IDENTITY_INSERT Classification.DimProcessStatus ON; 
	INSERT INTO Classification.DimProcessStatus (DimProcessStatusID,Name,SourceKey) VALUES (-1,'UNKNOWN','UNKNOWN'); 
	SET IDENTITY_INSERT Classification.DimProcessStatus OFF;
	GO
	
	
SET IDENTITY_INSERT Classification.DimProcessType ON; 
	INSERT INTO Classification.DimProcessType (DimProcessTypeID,Name,SourceKey) VALUES (-1,'UNKNOWN','UNKNOWN'); 
	SET IDENTITY_INSERT Classification.DimProcessType OFF;
	GO
	
	
SET IDENTITY_INSERT Finance.DimChartOfAccounts ON; 
	INSERT INTO Finance.DimChartOfAccounts (DimChartOfAccountsID,Name,SourceKey) VALUES (-1,'UNKNOWN',-1); 
	SET IDENTITY_INSERT Finance.DimChartOfAccounts OFF;
	GO
	
	
SET IDENTITY_INSERT Finance.DimCurrency ON; 
	INSERT INTO Finance.DimCurrency (DimCurrencyID,Name,SourceKey) VALUES (-1,'UNKNOWN','UNKNOWN'); 
	SET IDENTITY_INSERT Finance.DimCurrency OFF;
	GO
	
	
SET IDENTITY_INSERT Finance.DimFinancialHoldingAccount ON; 
	INSERT INTO Finance.DimFinancialHoldingAccount (DimFinancialHoldingAccountID,Name,SourceKey) VALUES (-1,'UNKNOWN',-1); 
	SET IDENTITY_INSERT Finance.DimFinancialHoldingAccount OFF;
	GO
	
	
SET IDENTITY_INSERT Location.DimCountry ON; 
	INSERT INTO Location.DimCountry (Code,DimCountryID,Name,SourceKey) VALUES ('UNKNOWN',-1,'UNKNOWN',-1); 
	SET IDENTITY_INSERT Location.DimCountry OFF;
	GO
	
	
SET IDENTITY_INSERT Shared.DimRole ON; 
	INSERT INTO Shared.DimRole (DimRoleID,Name,SourceKey,SystemDescription) VALUES (-1,'UNKNOWN',-1,'UNKNOWN'); 
	SET IDENTITY_INSERT Shared.DimRole OFF;
	GO
	
	
SET IDENTITY_INSERT Finance.DimGLCodeGroup ON; 
	INSERT INTO Finance.DimGLCodeGroup (DimChartofAccountsID,DimGLCodeGroupID,Name,SourceKey) VALUES (-1,-1,'UNKNOWN',-1); 
	SET IDENTITY_INSERT Finance.DimGLCodeGroup OFF;
	GO
	
	
SET IDENTITY_INSERT Location.DimGeoZone ON; 
	INSERT INTO Location.DimGeoZone (Code,DimCountryID,DimGeoZoneID,Name,SourceKey) VALUES ('UNKNOWN',-1,-1,'UNKNOWN',-1); 
	SET IDENTITY_INSERT Location.DimGeoZone OFF;
	GO
	
	
SET IDENTITY_INSERT Shared.DimPagaAccount ON; 
	INSERT INTO Shared.DimPagaAccount (BankingStatus,DimCreatedDateID,DimPagaAccountID,DimPagaAccountStatusID,Name,SourceKey) VALUES ('UNKNOWN',18991231,-1,-1,'UNKNOWN',-1); 
	SET IDENTITY_INSERT Shared.DimPagaAccount OFF;
	GO
	
	

	
	
SET IDENTITY_INSERT Finance.DimGLCodeSubGroup ON; 
	INSERT INTO Finance.DimGLCodeSubGroup (DimGLCodeGroupID,DimGLCodeSubGroupID,Name,SourceKey) VALUES (-1,-1,'UNKNOWN',-1); 
	SET IDENTITY_INSERT Finance.DimGLCodeSubGroup OFF;
	GO
	
	
SET IDENTITY_INSERT Location.DimRegion ON; 
	INSERT INTO Location.DimRegion (DimGeoZoneID,DimRegionID,Name,SourceKey) VALUES (-1,-1,'UNKNOWN',-1); 
	SET IDENTITY_INSERT Location.DimRegion OFF;
	GO
	
	
SET IDENTITY_INSERT Shared.DimOrganization ON; 
	INSERT INTO Shared.DimOrganization (DimBusinessTypeID,DimOrganizationID,DimOrganizationSubscriptionStatusID,DimOrganizationVerificationStatusID,DimPagaAccountID,Name,SourceKey) VALUES (-1,-1,-1,-1,-1,'UNKNOWN',-1); 
	SET IDENTITY_INSERT Shared.DimOrganization OFF;
	GO
	
	
SET IDENTITY_INSERT Shared.DimUserRole ON; 
	INSERT INTO Shared.DimUserRole (DimRoleID,DimUserID,DimUserRoleID,RolePriority,SourceKey) VALUES (-1,-1,-1,-1,-1); 
	SET IDENTITY_INSERT Shared.DimUserRole OFF;
	GO
	
	
SET IDENTITY_INSERT Finance.DimBank ON; 
	INSERT INTO Finance.DimBank (BankAccountLinkType,DimBankID,DimOrganizationID,Name,SourceKey) VALUES ('UNKNOWN',-1,-1,'UNKNOWN',-1); 
	SET IDENTITY_INSERT Finance.DimBank OFF;
	GO
	
	
SET IDENTITY_INSERT Finance.DimGLCode ON; 
	INSERT INTO Finance.DimGLCode (DimGLCodeID,DimGLCodeSubGroupID,Name,SourceKey) VALUES (-1,-1,'UNKNOWN',-1); 
	SET IDENTITY_INSERT Finance.DimGLCode OFF;
	GO
	
	
SET IDENTITY_INSERT Location.DimLocalGovernmentArea ON; 
	INSERT INTO Location.DimLocalGovernmentArea (Code,DimLocalGovernmentAreaID,DimRegionID,Name,SourceKey) VALUES ('UNKNOWN',-1,-1,'UNKNOWN',-1); 
	SET IDENTITY_INSERT Location.DimLocalGovernmentArea OFF;
	GO
	
	
SET IDENTITY_INSERT Shared.DimOrganizationUnitLevel1 ON; 
	INSERT INTO Shared.DimOrganizationUnitLevel1 (DimOrganizationID,DimOrganizationUnitLevel1ID,DimOrganizationUnitTypeID,Name,SourceKey) VALUES (-1,-1,-1,'UNKNOWN',-1); 
	SET IDENTITY_INSERT Shared.DimOrganizationUnitLevel1 OFF;
	GO
	
	
SET IDENTITY_INSERT Finance.DimBankAccount ON; 
	INSERT INTO Finance.DimBankAccount (BankAccountLinkStatusType,DimBankAccountID,DimBankID,Name,SourceKey) VALUES ('UNKNOWN',-1,-1,'UNKNOWN',-1); 
	SET IDENTITY_INSERT Finance.DimBankAccount OFF;
	GO
	
	
SET IDENTITY_INSERT Finance.DimFinancialAccountType ON; 
	INSERT INTO Finance.DimFinancialAccountType (DimFinancialAccountTypeID,DimGLCodeID,Name,SourceKey) VALUES (-1,-1,'UNKNOWN','UNKNOWN'); 
	SET IDENTITY_INSERT Finance.DimFinancialAccountType OFF;
	GO
	
	
SET IDENTITY_INSERT Location.DimCity ON; 
	INSERT INTO Location.DimCity (DimCityID,DimLocalGovernmentAreaID,Name,PostalCode,SourceKey) VALUES (-1,-1,'UNKNOWN',-1,-1); 
	SET IDENTITY_INSERT Location.DimCity OFF;
	GO
	
	
SET IDENTITY_INSERT Shared.DimOrganizationUnitLevel2 ON; 
	INSERT INTO Shared.DimOrganizationUnitLevel2 (DimOrganizationUnitLevel1ID,DimOrganizationUnitLevel2ID,DimOrganizationUnitTypeID,Name,SourceKey) VALUES (-1,-1,-1,'UNKNOWN',-1); 
	SET IDENTITY_INSERT Shared.DimOrganizationUnitLevel2 OFF;
	GO
	
	
SET IDENTITY_INSERT Finance.DimFinancialAccount ON; 
	INSERT INTO Finance.DimFinancialAccount (DimBankAccountID,DimCurrencyID,DimFinancialAccountID,DimFinancialAccountTypeID,DimPagaAccountID,Name,SourceKey) VALUES (-1,-1,-1,-1,-1,'UNKNOWN',-1); 
	SET IDENTITY_INSERT Finance.DimFinancialAccount OFF;
	GO
	
	
SET IDENTITY_INSERT Shared.DimOrganizationUnitLevel3 ON; 
	INSERT INTO Shared.DimOrganizationUnitLevel3 (DimOrganizationUnitLevel2ID,DimOrganizationUnitLevel3ID,DimOrganizationUnitTypeID,Name,SourceKey) VALUES (-1,-1,-1,'UNKNOWN',-1); 
	SET IDENTITY_INSERT Shared.DimOrganizationUnitLevel3 OFF;
	GO
	
	
SET IDENTITY_INSERT Shared.DimOrganizationUnitLevel4 ON; 
	INSERT INTO Shared.DimOrganizationUnitLevel4 (DimOrganizationUnitLevel3ID,DimOrganizationUnitLevel4ID,DimOrganizationUnitTypeID,Name,SourceKey) VALUES (-1,-1,-1,'UNKNOWN',-1); 
	SET IDENTITY_INSERT Shared.DimOrganizationUnitLevel4 OFF;
	GO
	
	
SET IDENTITY_INSERT Finance.DimPaymentUseCaseType ON; 
	INSERT INTO Finance.DimPaymentUseCaseType (DimPaymentUseCaseTypeID,SourceKey) VALUES (-1,'UNKNOWN'); 
	SET IDENTITY_INSERT Finance.DimPaymentUseCaseType OFF;
	GO
	
	
SET IDENTITY_INSERT Shared.FactProcessEvent ON; 
	INSERT INTO Shared.FactProcessEvent (DimProcessChannelID,FactProcessEventID,ProcessCode,SourceKey) VALUES (-1,-1,'UNKNOWN',-1); 
	SET IDENTITY_INSERT Shared.FactProcessEvent OFF;
	GO
	
	
SET IDENTITY_INSERT Shared.FactIntegrationTransaction ON; 
	INSERT INTO Shared.FactIntegrationTransaction (DimProcessTypeID,FactIntegrationTxID,HasFinancialTx,SourceKey) VALUES (-1,-1,-1,-1); 
	SET IDENTITY_INSERT Shared.FactIntegrationTransaction OFF;
	GO
	
	
SET IDENTITY_INSERT Finance.FactFinancialTransaction ON; 
	INSERT INTO Finance.FactFinancialTransaction (FactFinancialTxID,Reversed,SourceKey) VALUES (-1,0,-1); 
	SET IDENTITY_INSERT Finance.FactFinancialTransaction OFF;
	GO
	
	
SET IDENTITY_INSERT Finance.FactGLTransaction ON; 
	INSERT INTO Finance.FactGLTransaction (FactGLTxID,SourceKey) VALUES (-1,-1); 
	SET IDENTITY_INSERT Finance.FactGLTransaction OFF;
	GO

INSERT INTO [Shared].[DimDate]([DateID], [Date], [Day], [DaySuffix], [USDayOfWeek], [DayOfWeek], [DOWInMonth], [DayOfYear], [WeekOfYear], [WeekOfMonth], [MonthNumber], [MonthName], [Quarter], [QuarterName], [YearName], [YearNumber], [StandardDate], [IsPublicHoliday], [HolidayText], [FinancialYearNumber], [FinancialYearName], [FinancialPeriodNumber], [FinancialPeriodName], [Version])
SELECT 18991231, '18991231 00:00:00.000', 31, N'Sun', N'1', N'1', 31, 365, 53, 5, 12, N'December', 4, N'Quarter 4', N'1899', 1899, NULL, NULL, NULL, 1899, N'FY 1899', 12, N'FY 1899 - December', 0
	
	

