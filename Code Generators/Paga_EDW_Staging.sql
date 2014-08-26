
USE Master
GO
IF EXISTS (SELECT 1 FROM SYS.DATABASES
	WHERE DATABASES.NAME = 'Paga_EDWStaging')
BEGIN
ALTER DATABASE [Paga_EDWStaging] SET  SINGLE_USER WITH ROLLBACK IMMEDIATE
DROP DATABASE [Paga_EDWStaging]
END
        GO    


IF NOT EXISTS (SELECT 1 FROM SYS.DATABASES
	WHERE DATABASES.NAME = 'Paga_EDWStaging')
CREATE DATABASE [Paga_EDWStaging]
        GO    
USE Paga_EDWStaging
    GO  
IF NOT EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.SCHEMATA
	WHERE SCHEMA_NAME = 'Staging')
	BEGIN
	DECLARE @sql varchar(max)
	SET @sql = 'CREATE SCHEMA Staging'
	EXEC (@SQL)
	END

    GO  
IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES
	WHERE TABLES.TABLE_SCHEMA = 'Staging'
		AND TABLES.TABLE_NAME = 'FactProcessTransaction')
	DROP TABLE [Staging].[FactProcessTransaction]
    GO  

CREATE TABLE [Staging].[FactProcessTransaction]
(

	[FactProcessTransactionID] int NULL,
	[AgentCommissionAmount] decimal(18,2) NULL,
	[ATMReferenceNumber] varchar(255) NULL,
	[CardProcessorName] varchar(255) NULL,
	[CustomerBillerAccount] varchar(255) NULL,
	[CustomerPhoneNumber] varchar(255) NULL,
	[DependentProcessID] int NULL,
	[DepositNumber] varchar(255) NULL,
	[DimOriginalPayerPagaAccountIDID] int NULL,
	[DimPagaAccountID] int NULL,
	[LinkedPhoneNumber] varchar(255) NULL,
	[MerchantConfirmationCode] varchar(255) NULL,
	[MerchantCustomerAccountNumber] varchar(255) NULL,
	[OriginalProcessID] int NULL,
	[PaymentSource] varchar(255) NULL,
	[ProcessAmount] decimal(18,2) NULL,
	[ProcessFee] decimal(18,2) NULL,
	[ReferenceNumber] varchar(255) NULL,
	[RequestedProcessChannel] varchar(255) NULL,
	[RunID] int NOT NULL,
	[SenderPhoneNumber] varchar(255) NULL,
	[WithdrawalCode] varchar(255) NULL,
	[AgentCommissionTypeSourceKey] varchar(255) NULL,
	[UserSourceKey] varchar(255) NULL,
	[ChannelSourceKey] varchar(255) NULL,
	[CitySourceKey] varchar(255) NULL,
	[CreatedDateSourceKey] varchar(255) NULL,
	[CreatedTimeSourceKey] varchar(255) NULL,
	[StartedDateSourceKey] varchar(255) NULL,
	[StartedTimeSourceKey] varchar(255) NULL,
	[BillerAccountUserSourceKey] varchar(255) NULL,
	[OrganizationSourceKey] varchar(255) NULL,
	[OrganizationUnitLevel5SourceKey] varchar(255) NULL,
	[ProcessStatusSourceKey] varchar(255) NULL,
	[ProcessTypeSourceKey] varchar(255) NULL,
	[ApprovedByUserSourceKey] varchar(255) NULL,
	[TransferDateSourceKey] varchar(255) NULL,
	[TransferTimeSourceKey] varchar(255) NULL,
	[CompletedDateSourceKey] varchar(255) NULL,
	[CompletedTimeSourceKey] varchar(255) NULL,
	[VerifiedByUserSourceKey] varchar(255) NULL
)
    GO  
IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES
	WHERE TABLES.TABLE_SCHEMA = 'Staging'
		AND TABLES.TABLE_NAME = 'FactAirtimeStockMovement')
	DROP TABLE [Staging].[FactAirtimeStockMovement]
    GO  

CREATE TABLE [Staging].[FactAirtimeStockMovement]
(

	[FactAirtimeStockMovementID] int NULL,
	[DimPagaAccountID] int NULL,
	[MovementAmount] decimal(18,2) NULL,
	[RunID] int NOT NULL,
	[CitySourceKey] varchar(255) NULL,
	[DateSourceKey] varchar(255) NULL,
	[MobileOperatorSourceKey] varchar(255) NULL,
	[OrganizationUnitLevel5SourceKey] varchar(255) NULL
)
    GO  
IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES
	WHERE TABLES.TABLE_SCHEMA = 'Staging'
		AND TABLES.TABLE_NAME = 'FactAirtimeStockOnHandSnapshot')
	DROP TABLE [Staging].[FactAirtimeStockOnHandSnapshot]
    GO  

CREATE TABLE [Staging].[FactAirtimeStockOnHandSnapshot]
(

	[FactAirtimeStockOnHandSnapshotID] int NULL,
	[AccountBalance] decimal(18,2) NULL,
	[DimPagaAccountID] int NULL,
	[RunID] int NOT NULL,
	[CitySourceKey] varchar(255) NULL,
	[DateSourceKey] varchar(255) NULL,
	[MobileOperatorSourceKey] varchar(255) NULL,
	[OrganizationUnitLevel5SourceKey] varchar(255) NULL
)
    GO  
IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES
	WHERE TABLES.TABLE_SCHEMA = 'Staging'
		AND TABLES.TABLE_NAME = 'FactAirtimeTransactions')
	DROP TABLE [Staging].[FactAirtimeTransactions]
    GO  

CREATE TABLE [Staging].[FactAirtimeTransactions]
(

	[FactAirtimeTransactionsID] int NULL,
	[CreditAmount] decimal(18,2) NULL,
	[DebitAmount] decimal(18,2) NULL,
	[DimPagaAccountID] int NULL,
	[RunID] int NOT NULL,
	[CitySourceKey] varchar(255) NULL,
	[DateSourceKey] varchar(255) NULL,
	[FinancialAccountSourceKey] varchar(255) NULL,
	[FinancialTransactionTypeSourceKey] varchar(255) NULL,
	[OrganizationUnitLevel5SourceKey] varchar(255) NULL,
	[TimeSourceKey] varchar(255) NULL
)
    GO  
IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES
	WHERE TABLES.TABLE_SCHEMA = 'Staging'
		AND TABLES.TABLE_NAME = 'FactDailyGLSnapshot')
	DROP TABLE [Staging].[FactDailyGLSnapshot]
    GO  

CREATE TABLE [Staging].[FactDailyGLSnapshot]
(

	[FactDailyGLSnapshotID] int NULL,
	[AggregatedCreditAmount] decimal(18,2) NULL,
	[AggregatedDebitAmount] decimal(18,2) NULL,
	[ClosingBalance] decimal(18,2) NULL,
	[CreditTransactionCount] decimal(18,2) NULL,
	[DebitTransactionCount] decimal(18,2) NULL,
	[MovementDirection] decimal(18,2) NULL,
	[OpeningBalance] decimal(18,2) NULL,
	[RunID] int NOT NULL,
	[DateSourceKey] varchar(255) NULL,
	[CitySourceKey] varchar(255) NULL,
	[FinancialAccountSourceKey] varchar(255) NULL,
	[FinancialTransactionTypeSourceKey] varchar(255) NULL,
	[OrganizationUnitLevel5SourceKey] varchar(255) NULL
)
    GO  
IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES
	WHERE TABLES.TABLE_SCHEMA = 'Staging'
		AND TABLES.TABLE_NAME = 'FactFinancialTransactions')
	DROP TABLE [Staging].[FactFinancialTransactions]
    GO  

CREATE TABLE [Staging].[FactFinancialTransactions]
(

	[FactFinancialTransactionsID] int NULL,
	[CreditAmount] decimal(18,2) NULL,
	[DebitAmount] decimal(18,2) NULL,
	[DimPagaAccountID] int NULL,
	[OriginalTransactionID] int NULL,
	[RelatedTransactionID] int NULL,
	[RunID] int NOT NULL,
	[CitySourceKey] varchar(255) NULL,
	[CreatedDateSourceKey] varchar(255) NULL,
	[CreatedTimeSourceKey] varchar(255) NULL,
	[EffectiveDateSourceKey] varchar(255) NULL,
	[EffectiveTimeSourceKey] varchar(255) NULL,
	[FinancialAccountSourceKey] varchar(255) NULL,
	[FinancialTransactionTypeSourceKey] varchar(255) NULL,
	[OrganizationUnitLevel5SourceKey] varchar(255) NULL,
	[ProcessTypeSourceKey] varchar(255) NULL,
	[TransactionDateSourceKey] varchar(255) NULL,
	[TransactionTimeSourceKey] varchar(255) NULL,
	[UserSourceKey] varchar(255) NULL
)
    GO  
IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES
	WHERE TABLES.TABLE_SCHEMA = 'Staging'
		AND TABLES.TABLE_NAME = 'FactMonthlyGLSnapshot')
	DROP TABLE [Staging].[FactMonthlyGLSnapshot]
    GO  

CREATE TABLE [Staging].[FactMonthlyGLSnapshot]
(

	[FactMonthlyGLSnapshotID] int NULL,
	[AggregatedCreditAmount] decimal(18,2) NULL,
	[AggregatedDebitAmount] decimal(18,2) NULL,
	[ClosingBalance] decimal(18,2) NULL,
	[CreditTransactionCount] decimal(18,2) NULL,
	[DebitTransactionCount] decimal(18,2) NULL,
	[MovementDirection] decimal(18,2) NULL,
	[OpeningBalance] decimal(18,2) NULL,
	[RunID] int NOT NULL,
	[DateSourceKey] varchar(255) NULL,
	[CitySourceKey] varchar(255) NULL,
	[FinancialAccountSourceKey] varchar(255) NULL,
	[FinancialTransactionTypeSourceKey] varchar(255) NULL,
	[OrganizationUnitLevel5SourceKey] varchar(255) NULL
)
    GO  
IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES
	WHERE TABLES.TABLE_SCHEMA = 'Staging'
		AND TABLES.TABLE_NAME = 'DimAgentCommissionType')
	DROP TABLE [Staging].[DimAgentCommissionType]
    GO  

CREATE TABLE [Staging].[DimAgentCommissionType]
(

	[DimAgentCommissionTypeID] int NULL,
	[Code] varchar(50) NOT NULL,
	[DeltaHash] bigint NOT NULL,
	[Name] varchar(255) NOT NULL,
	[SourceKey] varchar(255) NOT NULL,
	[SourceKeyHash] bigint NOT NULL,
	[sysCreatedBy] varchar(255) NOT NULL,
	[sysCreatedOn] datetime NOT NULL,
	[sysModifiedBy] varchar(255) NOT NULL,
	[sysModifiedOn] datetime NOT NULL
)
    GO  
IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES
	WHERE TABLES.TABLE_SCHEMA = 'Staging'
		AND TABLES.TABLE_NAME = 'DimBankAccountLinkStatus')
	DROP TABLE [Staging].[DimBankAccountLinkStatus]
    GO  

CREATE TABLE [Staging].[DimBankAccountLinkStatus]
(

	[DimBankAccountLinkStatusID] int NULL,
	[Code] varchar(50) NOT NULL,
	[DeltaHash] bigint NOT NULL,
	[Name] varchar(255) NOT NULL,
	[SourceKey] varchar(255) NOT NULL,
	[SourceKeyHash] bigint NOT NULL,
	[sysCreatedBy] varchar(255) NOT NULL,
	[sysCreatedOn] datetime NOT NULL,
	[sysModifiedBy] varchar(255) NOT NULL,
	[sysModifiedOn] datetime NOT NULL
)
    GO  
IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES
	WHERE TABLES.TABLE_SCHEMA = 'Staging'
		AND TABLES.TABLE_NAME = 'DimChannel')
	DROP TABLE [Staging].[DimChannel]
    GO  

CREATE TABLE [Staging].[DimChannel]
(

	[DimChannelID] int NULL,
	[Code] varchar(50) NOT NULL,
	[DeltaHash] bigint NOT NULL,
	[Description] varchar(1000) NULL,
	[Name] varchar(255) NOT NULL,
	[SourceKey] varchar(255) NOT NULL,
	[SourceKeyHash] bigint NOT NULL,
	[sysCreatedBy] varchar(255) NOT NULL,
	[sysCreatedOn] datetime NOT NULL,
	[sysModifiedBy] varchar(255) NOT NULL,
	[sysModifiedOn] datetime NOT NULL
)
    GO  
IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES
	WHERE TABLES.TABLE_SCHEMA = 'Staging'
		AND TABLES.TABLE_NAME = 'DimCity')
	DROP TABLE [Staging].[DimCity]
    GO  

CREATE TABLE [Staging].[DimCity]
(

	[DimCityID] int NULL,
	[Code] varchar(50) NOT NULL,
	[DeltaHash] bigint NOT NULL,
	[Name] varchar(255) NOT NULL,
	[SourceKey] varchar(255) NOT NULL,
	[SourceKeyHash] bigint NOT NULL,
	[sysCreatedBy] varchar(255) NOT NULL,
	[sysCreatedOn] datetime NOT NULL,
	[sysModifiedBy] varchar(255) NOT NULL,
	[sysModifiedOn] datetime NOT NULL
)
    GO  
IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES
	WHERE TABLES.TABLE_SCHEMA = 'Staging'
		AND TABLES.TABLE_NAME = 'DimCOALevel1')
	DROP TABLE [Staging].[DimCOALevel1]
    GO  

CREATE TABLE [Staging].[DimCOALevel1]
(

	[DimCOALevel1ID] int NULL,
	[Code] varchar(50) NOT NULL,
	[DeltaHash] bigint NOT NULL,
	[GLCodeRange] varchar(255) NULL,
	[Name] varchar(255) NOT NULL,
	[SourceKey] varchar(255) NOT NULL,
	[SourceKeyHash] bigint NOT NULL,
	[sysCreatedBy] varchar(255) NOT NULL,
	[sysCreatedOn] datetime NOT NULL,
	[sysModifiedBy] varchar(255) NOT NULL,
	[sysModifiedOn] datetime NOT NULL
)
    GO  
IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES
	WHERE TABLES.TABLE_SCHEMA = 'Staging'
		AND TABLES.TABLE_NAME = 'DimCOALevel2')
	DROP TABLE [Staging].[DimCOALevel2]
    GO  

CREATE TABLE [Staging].[DimCOALevel2]
(

	[DimCOALevel2ID] int NULL,
	[Code] varchar(50) NOT NULL,
	[DeltaHash] bigint NOT NULL,
	[DimCOALevel1ID] int NOT NULL,
	[GLCodeRange] varchar(255) NULL,
	[Name] varchar(255) NOT NULL,
	[SourceKey] varchar(255) NOT NULL,
	[SourceKeyHash] bigint NOT NULL,
	[sysCreatedBy] varchar(255) NOT NULL,
	[sysCreatedOn] datetime NOT NULL,
	[sysModifiedBy] varchar(255) NOT NULL,
	[sysModifiedOn] datetime NOT NULL
)
    GO  
IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES
	WHERE TABLES.TABLE_SCHEMA = 'Staging'
		AND TABLES.TABLE_NAME = 'DimCOALevel3')
	DROP TABLE [Staging].[DimCOALevel3]
    GO  

CREATE TABLE [Staging].[DimCOALevel3]
(

	[DimCOALevel3ID] int NULL,
	[Code] varchar(50) NOT NULL,
	[DeltaHash] bigint NOT NULL,
	[DimCOALevel2ID] int NOT NULL,
	[GLCodeRange] varchar(255) NULL,
	[Name] varchar(255) NOT NULL,
	[SourceKey] varchar(255) NOT NULL,
	[SourceKeyHash] bigint NOT NULL,
	[sysCreatedBy] varchar(255) NOT NULL,
	[sysCreatedOn] datetime NOT NULL,
	[sysModifiedBy] varchar(255) NOT NULL,
	[sysModifiedOn] datetime NOT NULL
)
    GO  
IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES
	WHERE TABLES.TABLE_SCHEMA = 'Staging'
		AND TABLES.TABLE_NAME = 'DimCOALevel4')
	DROP TABLE [Staging].[DimCOALevel4]
    GO  

CREATE TABLE [Staging].[DimCOALevel4]
(

	[DimCOALevel4ID] int NULL,
	[Code] varchar(50) NOT NULL,
	[DeltaHash] bigint NOT NULL,
	[Description] varchar(1000) NULL,
	[DimCOALevel3ID] int NOT NULL,
	[GLCode] varchar(255) NULL,
	[Name] varchar(255) NOT NULL,
	[SourceKey] varchar(255) NOT NULL,
	[SourceKeyHash] bigint NOT NULL,
	[sysCreatedBy] varchar(255) NOT NULL,
	[sysCreatedOn] datetime NOT NULL,
	[sysModifiedBy] varchar(255) NOT NULL,
	[sysModifiedOn] datetime NOT NULL
)
    GO  
IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES
	WHERE TABLES.TABLE_SCHEMA = 'Staging'
		AND TABLES.TABLE_NAME = 'DimCountry')
	DROP TABLE [Staging].[DimCountry]
    GO  

CREATE TABLE [Staging].[DimCountry]
(

	[DimCountryID] int NULL,
	[Code] varchar(50) NOT NULL,
	[Country] varchar(255) NULL,
	[DeltaHash] bigint NOT NULL,
	[ISOCode] char(3) NULL,
	[Name] varchar(255) NOT NULL,
	[SourceKey] varchar(255) NOT NULL,
	[SourceKeyHash] bigint NOT NULL,
	[sysCreatedBy] varchar(255) NOT NULL,
	[sysCreatedOn] datetime NOT NULL,
	[sysModifiedBy] varchar(255) NOT NULL,
	[sysModifiedOn] datetime NOT NULL
)
    GO  
IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES
	WHERE TABLES.TABLE_SCHEMA = 'Staging'
		AND TABLES.TABLE_NAME = 'DimDate')
	DROP TABLE [Staging].[DimDate]
    GO  

CREATE TABLE [Staging].[DimDate]
(

	[DimDateID] int NULL,
	[Code] varchar(50) NOT NULL,
	[DeltaHash] bigint NOT NULL,
	[Name] varchar(255) NOT NULL,
	[SourceKey] varchar(255) NOT NULL,
	[SourceKeyHash] bigint NOT NULL,
	[sysCreatedBy] varchar(255) NOT NULL,
	[sysCreatedOn] datetime NOT NULL,
	[sysModifiedBy] varchar(255) NOT NULL,
	[sysModifiedOn] datetime NOT NULL
)
    GO  
IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES
	WHERE TABLES.TABLE_SCHEMA = 'Staging'
		AND TABLES.TABLE_NAME = 'DimFinancialAccount')
	DROP TABLE [Staging].[DimFinancialAccount]
    GO  

CREATE TABLE [Staging].[DimFinancialAccount]
(

	[DimFinancialAccountID] int NULL,
	[AccountNumber] varchar(20) NULL,
	[Code] varchar(50) NOT NULL,
	[DeltaHash] bigint NOT NULL,
	[DimAccountHolderID] int NOT NULL,
	[DimBankAccountID] int NOT NULL,
	[DimCOALevel4ID] int NOT NULL,
	[DimCurrencyID] int NOT NULL,
	[DimFinancialAccountTypeID] int NOT NULL,
	[DimHoldingFinancialAccountID] int NOT NULL,
	[Name] varchar(255) NOT NULL,
	[OpeningBalance] decimal(18,2) NULL,
	[RestrictedBalance] decimal(18,2) NULL,
	[SourceKey] varchar(255) NOT NULL,
	[SourceKeyHash] bigint NOT NULL,
	[sysCreatedBy] varchar(255) NOT NULL,
	[sysCreatedOn] datetime NOT NULL,
	[sysModifiedBy] varchar(255) NOT NULL,
	[sysModifiedOn] datetime NOT NULL,
	[TotalBalance] decimal(18,2) NULL
)
    GO  
IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES
	WHERE TABLES.TABLE_SCHEMA = 'Staging'
		AND TABLES.TABLE_NAME = 'DimFinancialTransactionType')
	DROP TABLE [Staging].[DimFinancialTransactionType]
    GO  

CREATE TABLE [Staging].[DimFinancialTransactionType]
(

	[DimFinancialTransactionTypeID] int NULL,
	[Code] varchar(50) NOT NULL,
	[DeltaHash] bigint NOT NULL,
	[Description] varchar(1000) NULL,
	[Name] varchar(255) NOT NULL,
	[SourceKey] varchar(255) NOT NULL,
	[SourceKeyHash] bigint NOT NULL,
	[sysCreatedBy] varchar(255) NOT NULL,
	[sysCreatedOn] datetime NOT NULL,
	[sysModifiedBy] varchar(255) NOT NULL,
	[sysModifiedOn] datetime NOT NULL
)
    GO  
IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES
	WHERE TABLES.TABLE_SCHEMA = 'Staging'
		AND TABLES.TABLE_NAME = 'DimGeoZone')
	DROP TABLE [Staging].[DimGeoZone]
    GO  

CREATE TABLE [Staging].[DimGeoZone]
(

	[DimGeoZoneID] int NULL,
	[Code] varchar(50) NOT NULL,
	[DeltaHash] bigint NOT NULL,
	[DimCountryID] int NOT NULL,
	[Name] varchar(255) NOT NULL,
	[SourceKey] varchar(255) NOT NULL,
	[SourceKeyHash] bigint NOT NULL,
	[Symbol] varchar(3) NULL,
	[sysCreatedBy] varchar(255) NOT NULL,
	[sysCreatedOn] datetime NOT NULL,
	[sysModifiedBy] varchar(255) NOT NULL,
	[sysModifiedOn] datetime NOT NULL
)
    GO  
IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES
	WHERE TABLES.TABLE_SCHEMA = 'Staging'
		AND TABLES.TABLE_NAME = 'DimGovernmentLocalArea')
	DROP TABLE [Staging].[DimGovernmentLocalArea]
    GO  

CREATE TABLE [Staging].[DimGovernmentLocalArea]
(

	[DimGovernmentLocalAreaID] int NULL,
	[Code] varchar(50) NOT NULL,
	[DeltaHash] bigint NOT NULL,
	[Name] varchar(255) NOT NULL,
	[SourceKey] varchar(255) NOT NULL,
	[SourceKeyHash] bigint NOT NULL,
	[sysCreatedBy] varchar(255) NOT NULL,
	[sysCreatedOn] datetime NOT NULL,
	[sysModifiedBy] varchar(255) NOT NULL,
	[sysModifiedOn] datetime NOT NULL
)
    GO  
IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES
	WHERE TABLES.TABLE_SCHEMA = 'Staging'
		AND TABLES.TABLE_NAME = 'DimMobileOperator')
	DROP TABLE [Staging].[DimMobileOperator]
    GO  

CREATE TABLE [Staging].[DimMobileOperator]
(

	[DimMobileOperatorID] int NULL,
	[Code] varchar(50) NOT NULL,
	[DeltaHash] bigint NOT NULL,
	[DimOrganizationID] int NOT NULL,
	[Name] varchar(255) NOT NULL,
	[SourceKey] varchar(255) NOT NULL,
	[SourceKeyHash] bigint NOT NULL,
	[sysCreatedBy] varchar(255) NOT NULL,
	[sysCreatedOn] datetime NOT NULL,
	[sysModifiedBy] varchar(255) NOT NULL,
	[sysModifiedOn] datetime NOT NULL
)
    GO  
IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES
	WHERE TABLES.TABLE_SCHEMA = 'Staging'
		AND TABLES.TABLE_NAME = 'DimOrganization')
	DROP TABLE [Staging].[DimOrganization]
    GO  

CREATE TABLE [Staging].[DimOrganization]
(

	[DimOrganizationID] int NULL,
	[Code] varchar(50) NOT NULL,
	[DeltaHash] bigint NOT NULL,
	[Description] varchar(1000) NULL,
	[DimBusinessTypeID] int NOT NULL,
	[DimOrganizationSubscriptionStatusID] int NOT NULL,
	[DimOrganizationVerificationStatusID] int NOT NULL,
	[DimPagaAccountID] int NOT NULL,
	[DisplayName] varchar(100) NULL,
	[Name] varchar(255) NOT NULL,
	[RcName] varchar(50) NULL,
	[ReferenceNumber] varchar(30) NULL,
	[SourceKey] varchar(255) NOT NULL,
	[SourceKeyHash] bigint NOT NULL,
	[sysCreatedBy] varchar(255) NOT NULL,
	[sysCreatedOn] datetime NOT NULL,
	[sysModifiedBy] varchar(255) NOT NULL,
	[sysModifiedOn] datetime NOT NULL,
	[TaxIDNumber] varchar(30) NOT NULL,
	[VATCertificationNumber] varchar(30) NULL,
	[WebsiteURL] varchar(100) NULL
)
    GO  
IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES
	WHERE TABLES.TABLE_SCHEMA = 'Staging'
		AND TABLES.TABLE_NAME = 'DimOrganizationSubscriptionStatus')
	DROP TABLE [Staging].[DimOrganizationSubscriptionStatus]
    GO  

CREATE TABLE [Staging].[DimOrganizationSubscriptionStatus]
(

	[DimOrganizationSubscriptionStatusID] int NULL,
	[Code] varchar(50) NOT NULL,
	[DeltaHash] bigint NOT NULL,
	[Name] varchar(255) NOT NULL,
	[SourceKey] varchar(255) NOT NULL,
	[SourceKeyHash] bigint NOT NULL,
	[sysCreatedBy] varchar(255) NOT NULL,
	[sysCreatedOn] datetime NOT NULL,
	[sysModifiedBy] varchar(255) NOT NULL,
	[sysModifiedOn] datetime NOT NULL
)
    GO  
IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES
	WHERE TABLES.TABLE_SCHEMA = 'Staging'
		AND TABLES.TABLE_NAME = 'DimOrganizationUnitLevel1')
	DROP TABLE [Staging].[DimOrganizationUnitLevel1]
    GO  

CREATE TABLE [Staging].[DimOrganizationUnitLevel1]
(

	[DimOrganizationUnitLevel1ID] int NULL,
	[Code] varchar(50) NOT NULL,
	[DeltaHash] bigint NOT NULL,
	[DimOrganizationID] int NOT NULL,
	[Name] varchar(255) NOT NULL,
	[SourceKey] varchar(255) NOT NULL,
	[SourceKeyHash] bigint NOT NULL,
	[sysCreatedBy] varchar(255) NOT NULL,
	[sysCreatedOn] datetime NOT NULL,
	[sysModifiedBy] varchar(255) NOT NULL,
	[sysModifiedOn] datetime NOT NULL
)
    GO  
IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES
	WHERE TABLES.TABLE_SCHEMA = 'Staging'
		AND TABLES.TABLE_NAME = 'DimOrganizationUnitLevel2')
	DROP TABLE [Staging].[DimOrganizationUnitLevel2]
    GO  

CREATE TABLE [Staging].[DimOrganizationUnitLevel2]
(

	[DimOrganizationUnitLevel2ID] int NULL,
	[Code] varchar(50) NOT NULL,
	[DeltaHash] bigint NOT NULL,
	[Name] varchar(255) NOT NULL,
	[SourceKey] varchar(255) NOT NULL,
	[SourceKeyHash] bigint NOT NULL,
	[sysCreatedBy] varchar(255) NOT NULL,
	[sysCreatedOn] datetime NOT NULL,
	[sysModifiedBy] varchar(255) NOT NULL,
	[sysModifiedOn] datetime NOT NULL
)
    GO  
IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES
	WHERE TABLES.TABLE_SCHEMA = 'Staging'
		AND TABLES.TABLE_NAME = 'DimOrganizationUnitLevel3')
	DROP TABLE [Staging].[DimOrganizationUnitLevel3]
    GO  

CREATE TABLE [Staging].[DimOrganizationUnitLevel3]
(

	[DimOrganizationUnitLevel3ID] int NULL,
	[Code] varchar(50) NOT NULL,
	[DeltaHash] bigint NOT NULL,
	[Name] varchar(255) NOT NULL,
	[SourceKey] varchar(255) NOT NULL,
	[SourceKeyHash] bigint NOT NULL,
	[sysCreatedBy] varchar(255) NOT NULL,
	[sysCreatedOn] datetime NOT NULL,
	[sysModifiedBy] varchar(255) NOT NULL,
	[sysModifiedOn] datetime NOT NULL
)
    GO  
IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES
	WHERE TABLES.TABLE_SCHEMA = 'Staging'
		AND TABLES.TABLE_NAME = 'DimOrganizationUnitLevel4')
	DROP TABLE [Staging].[DimOrganizationUnitLevel4]
    GO  

CREATE TABLE [Staging].[DimOrganizationUnitLevel4]
(

	[DimOrganizationUnitLevel4ID] int NULL,
	[Code] varchar(50) NOT NULL,
	[DeltaHash] bigint NOT NULL,
	[Name] varchar(255) NOT NULL,
	[SourceKey] varchar(255) NOT NULL,
	[SourceKeyHash] bigint NOT NULL,
	[sysCreatedBy] varchar(255) NOT NULL,
	[sysCreatedOn] datetime NOT NULL,
	[sysModifiedBy] varchar(255) NOT NULL,
	[sysModifiedOn] datetime NOT NULL
)
    GO  
IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES
	WHERE TABLES.TABLE_SCHEMA = 'Staging'
		AND TABLES.TABLE_NAME = 'DimOrganizationUnitLevel5')
	DROP TABLE [Staging].[DimOrganizationUnitLevel5]
    GO  

CREATE TABLE [Staging].[DimOrganizationUnitLevel5]
(

	[DimOrganizationUnitLevel5ID] int NULL,
	[Code] varchar(50) NOT NULL,
	[DeltaHash] bigint NOT NULL,
	[Name] varchar(255) NOT NULL,
	[SourceKey] varchar(255) NOT NULL,
	[SourceKeyHash] bigint NOT NULL,
	[sysCreatedBy] varchar(255) NOT NULL,
	[sysCreatedOn] datetime NOT NULL,
	[sysModifiedBy] varchar(255) NOT NULL,
	[sysModifiedOn] datetime NOT NULL
)
    GO  
IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES
	WHERE TABLES.TABLE_SCHEMA = 'Staging'
		AND TABLES.TABLE_NAME = 'DimOrganizationVerificationStatus')
	DROP TABLE [Staging].[DimOrganizationVerificationStatus]
    GO  

CREATE TABLE [Staging].[DimOrganizationVerificationStatus]
(

	[DimOrganizationVerificationStatusID] int NULL,
	[Code] varchar(50) NOT NULL,
	[DeltaHash] bigint NOT NULL,
	[Name] varchar(255) NOT NULL,
	[SourceKey] varchar(255) NOT NULL,
	[SourceKeyHash] bigint NOT NULL,
	[sysCreatedBy] varchar(255) NOT NULL,
	[sysCreatedOn] datetime NOT NULL,
	[sysModifiedBy] varchar(255) NOT NULL,
	[sysModifiedOn] datetime NOT NULL
)
    GO  
IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES
	WHERE TABLES.TABLE_SCHEMA = 'Staging'
		AND TABLES.TABLE_NAME = 'DimPagaAccount')
	DROP TABLE [Staging].[DimPagaAccount]
    GO  

CREATE TABLE [Staging].[DimPagaAccount]
(

	[DimPagaAccountID] int NULL,
	[RunID] int NOT NULL
)
    GO  
IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES
	WHERE TABLES.TABLE_SCHEMA = 'Staging'
		AND TABLES.TABLE_NAME = 'DimPagaAccountStatus')
	DROP TABLE [Staging].[DimPagaAccountStatus]
    GO  

CREATE TABLE [Staging].[DimPagaAccountStatus]
(

	[DimPagaAccountStatusID] int NULL,
	[Code] varchar(50) NOT NULL,
	[DeltaHash] bigint NOT NULL,
	[Name] varchar(255) NOT NULL,
	[SourceKey] varchar(255) NOT NULL,
	[SourceKeyHash] bigint NOT NULL,
	[sysCreatedBy] varchar(255) NOT NULL,
	[sysCreatedOn] datetime NOT NULL,
	[sysModifiedBy] varchar(255) NOT NULL,
	[sysModifiedOn] datetime NOT NULL
)
    GO  
IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES
	WHERE TABLES.TABLE_SCHEMA = 'Staging'
		AND TABLES.TABLE_NAME = 'DimProcessStatus')
	DROP TABLE [Staging].[DimProcessStatus]
    GO  

CREATE TABLE [Staging].[DimProcessStatus]
(

	[DimProcessStatusID] int NULL,
	[Code] varchar(50) NOT NULL,
	[DeltaHash] bigint NOT NULL,
	[Name] varchar(255) NOT NULL,
	[SourceKey] varchar(255) NOT NULL,
	[SourceKeyHash] bigint NOT NULL,
	[sysCreatedBy] varchar(255) NOT NULL,
	[sysCreatedOn] datetime NOT NULL,
	[sysModifiedBy] varchar(255) NOT NULL,
	[sysModifiedOn] datetime NOT NULL
)
    GO  
IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES
	WHERE TABLES.TABLE_SCHEMA = 'Staging'
		AND TABLES.TABLE_NAME = 'DimProcessType')
	DROP TABLE [Staging].[DimProcessType]
    GO  

CREATE TABLE [Staging].[DimProcessType]
(

	[DimProcessTypeID] int NULL,
	[Code] varchar(50) NOT NULL,
	[DeltaHash] bigint NOT NULL,
	[Description] varchar(1000) NULL,
	[Name] varchar(255) NOT NULL,
	[SourceKey] varchar(255) NOT NULL,
	[SourceKeyHash] bigint NOT NULL,
	[sysCreatedBy] varchar(255) NOT NULL,
	[sysCreatedOn] datetime NOT NULL,
	[sysModifiedBy] varchar(255) NOT NULL,
	[sysModifiedOn] datetime NOT NULL
)
    GO  
IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES
	WHERE TABLES.TABLE_SCHEMA = 'Staging'
		AND TABLES.TABLE_NAME = 'DimRegion')
	DROP TABLE [Staging].[DimRegion]
    GO  

CREATE TABLE [Staging].[DimRegion]
(

	[DimRegionID] int NULL,
	[Code] varchar(50) NOT NULL,
	[DeltaHash] bigint NOT NULL,
	[Name] varchar(255) NOT NULL,
	[SourceKey] varchar(255) NOT NULL,
	[SourceKeyHash] bigint NOT NULL,
	[sysCreatedBy] varchar(255) NOT NULL,
	[sysCreatedOn] datetime NOT NULL,
	[sysModifiedBy] varchar(255) NOT NULL,
	[sysModifiedOn] datetime NOT NULL
)
    GO  
IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES
	WHERE TABLES.TABLE_SCHEMA = 'Staging'
		AND TABLES.TABLE_NAME = 'DimStatusCancellationApprovalStatus')
	DROP TABLE [Staging].[DimStatusCancellationApprovalStatus]
    GO  

CREATE TABLE [Staging].[DimStatusCancellationApprovalStatus]
(

	[DimStatusCancellationApprovalStatusID] int NULL,
	[Code] varchar(50) NOT NULL,
	[DeltaHash] bigint NOT NULL,
	[Name] varchar(255) NOT NULL,
	[SourceKey] varchar(255) NOT NULL,
	[SourceKeyHash] bigint NOT NULL,
	[sysCreatedBy] varchar(255) NOT NULL,
	[sysCreatedOn] datetime NOT NULL,
	[sysModifiedBy] varchar(255) NOT NULL,
	[sysModifiedOn] datetime NOT NULL
)
    GO  
IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES
	WHERE TABLES.TABLE_SCHEMA = 'Staging'
		AND TABLES.TABLE_NAME = 'DimTime')
	DROP TABLE [Staging].[DimTime]
    GO  

CREATE TABLE [Staging].[DimTime]
(

	[DimTimeID] int NULL,
	[Code] varchar(50) NOT NULL,
	[DeltaHash] bigint NOT NULL,
	[Name] varchar(255) NOT NULL,
	[SourceKey] varchar(255) NOT NULL,
	[SourceKeyHash] bigint NOT NULL,
	[sysCreatedBy] varchar(255) NOT NULL,
	[sysCreatedOn] datetime NOT NULL,
	[sysModifiedBy] varchar(255) NOT NULL,
	[sysModifiedOn] datetime NOT NULL
)
    GO  
IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES
	WHERE TABLES.TABLE_SCHEMA = 'Staging'
		AND TABLES.TABLE_NAME = 'DimUser')
	DROP TABLE [Staging].[DimUser]
    GO  

CREATE TABLE [Staging].[DimUser]
(

	[DimUserID] int NULL,
	[Code] varchar(50) NOT NULL,
	[DateOfBirthID] int NOT NULL,
	[DeltaHash] bigint NOT NULL,
	[DimOrganizationUnitLevel5ID] int NOT NULL,
	[DimPagaAccountID] int NOT NULL,
	[DimPagaAccountUserTypeID] int NOT NULL,
	[Email] varchar(100) NULL,
	[FirstName] varchar(255) NULL,
	[LastName] varchar(255) NULL,
	[MiddleName] varchar(255) NULL,
	[Name] varchar(255) NOT NULL,
	[Sex] char(1) NULL,
	[SourceKey] varchar(255) NOT NULL,
	[SourceKeyHash] bigint NOT NULL,
	[sysCreatedBy] varchar(255) NOT NULL,
	[sysCreatedOn] datetime NOT NULL,
	[sysModifiedBy] varchar(255) NOT NULL,
	[sysModifiedOn] datetime NOT NULL
)
    GO  
