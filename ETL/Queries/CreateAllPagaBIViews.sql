USE [paga];
GO
IF OBJECT_ID('dbo.chng_tracking_current_version') IS NOT NULL DROP VIEW dbo.chng_tracking_current_version;
	GO


CREATE VIEW [dbo].[chng_tracking_current_version] AS
(
	SELECT [CurrentVersion] = CHANGE_TRACKING_CURRENT_VERSION()
);

GO

USE [paga_bi];
GO
IF OBJECT_ID('dbo.chng_tracking_current_version') IS NOT NULL DROP VIEW dbo.chng_tracking_current_version;
	GO

CREATE VIEW dbo.chng_tracking_current_version
AS
(
	SELECT CurrentVersion FROM paga.dbo.chng_tracking_current_version
);
GO


IF OBJECT_ID('dbo.AccountCode') IS NOT NULL DROP VIEW dbo.AccountCode;
	GO
	
	CREATE VIEW dbo.AccountCode AS
	(
		SELECT 
			base_query.*,
			change_log.*
		FROM 
		(
			SELECT [AccountCodeId], [AccountCodeGroupId], [Code], [CreatedDate], [Description], [IsNormalDebit], [Key], [Name], [UpdatedDate] FROM paga.dbo.AccountCode
		) AS base_query

		LEFT JOIN
		(
			SELECT 
				SYS_CHANGE_VERSION,	
				SYS_CHANGE_CREATION_VERSION	,
				SYS_CHANGE_OPERATION,	
				SYS_CHANGE_COLUMNS,	
				SYS_CHANGE_CONTEXT,	
				change_log_AccountCodeId=AccountCodeId
			FROM CHANGETABLE(CHANGES paga.dbo.[AccountCode],0) AS cl  

		) AS change_log ON
			base_query.AccountCodeId = change_log.change_log_AccountCodeId
	);
	GO
	
IF OBJECT_ID('dbo.AccountCodeGroup') IS NOT NULL DROP VIEW dbo.AccountCodeGroup;
	GO
	
	CREATE VIEW dbo.AccountCodeGroup AS
	(
		SELECT 
			base_query.*,
			change_log.*
		FROM 
		(
			SELECT [AccountCodeGroupId], [AccountCodeGroupEnd], [AccountCodeGroupStart], [CreatedDate], [Description], [ParentAccountCodeGroupId], [UpdatedDate] FROM paga.dbo.AccountCodeGroup
		) AS base_query

		LEFT JOIN
		(
			SELECT 
				SYS_CHANGE_VERSION,	
				SYS_CHANGE_CREATION_VERSION	,
				SYS_CHANGE_OPERATION,	
				SYS_CHANGE_COLUMNS,	
				SYS_CHANGE_CONTEXT,	
				change_log_AccountCodeGroupId=AccountCodeGroupId
			FROM CHANGETABLE(CHANGES paga.dbo.[AccountCodeGroup],0) AS cl  

		) AS change_log ON
			base_query.AccountCodeGroupId = change_log.change_log_AccountCodeGroupId
	);
	GO
	
IF OBJECT_ID('dbo.AgentCommissionType') IS NOT NULL DROP VIEW dbo.AgentCommissionType;
	GO
	
	CREATE VIEW dbo.AgentCommissionType AS
	(
		SELECT 
			base_query.*,
			change_log.*
		FROM 
		(
			SELECT [AgentCommissionTypeId], [Description] FROM paga.dbo.AgentCommissionType
		) AS base_query

		LEFT JOIN
		(
			SELECT 
				SYS_CHANGE_VERSION,	
				SYS_CHANGE_CREATION_VERSION	,
				SYS_CHANGE_OPERATION,	
				SYS_CHANGE_COLUMNS,	
				SYS_CHANGE_CONTEXT,	
				change_log_AgentCommissionTypeId=AgentCommissionTypeId
			FROM CHANGETABLE(CHANGES paga.dbo.[AgentCommissionType],0) AS cl  

		) AS change_log ON
			base_query.AgentCommissionTypeId = change_log.change_log_AgentCommissionTypeId
	);
	GO
	
IF OBJECT_ID('dbo.Bank') IS NOT NULL DROP VIEW dbo.Bank;
	GO
	
	CREATE VIEW dbo.Bank AS
	(
		SELECT 
			base_query.*,
			change_log.*
		FROM 
		(
			SELECT [BankId], [BankName], [CreatedDate], [UpdatedDate], [OrganizationId], [BankAccountLinkTypeId], [SupportsDebit], [SupportsCredit] FROM paga.dbo.Bank
		) AS base_query

		LEFT JOIN
		(
			SELECT 
				SYS_CHANGE_VERSION,	
				SYS_CHANGE_CREATION_VERSION	,
				SYS_CHANGE_OPERATION,	
				SYS_CHANGE_COLUMNS,	
				SYS_CHANGE_CONTEXT,	
				change_log_BankId=BankId
			FROM CHANGETABLE(CHANGES paga.dbo.[Bank],0) AS cl  

		) AS change_log ON
			base_query.BankId = change_log.change_log_BankId
	);
	GO
	
IF OBJECT_ID('dbo.BankAccount') IS NOT NULL DROP VIEW dbo.BankAccount;
	GO
	
	CREATE VIEW dbo.BankAccount AS
	(
		SELECT 
			base_query.*,
			change_log.*
		FROM 
		(
			SELECT [BankAccountId], [AccountHolderName], [BankId], [BranchName], [CreatedDate], [KYCId], [UpdatedDate], [BankAccountLinkStatusTypeId], [BankAccountLinkStatusComment], [AccountAlias], [TransactionLimit], [DurationLimit], [DurationLimitSeconds], [IsEnabled] FROM paga.dbo.BankAccount
		) AS base_query

		LEFT JOIN
		(
			SELECT 
				SYS_CHANGE_VERSION,	
				SYS_CHANGE_CREATION_VERSION	,
				SYS_CHANGE_OPERATION,	
				SYS_CHANGE_COLUMNS,	
				SYS_CHANGE_CONTEXT,	
				change_log_BankAccountId=BankAccountId
			FROM CHANGETABLE(CHANGES paga.dbo.[BankAccount],0) AS cl  

		) AS change_log ON
			base_query.BankAccountId = change_log.change_log_BankAccountId
	);
	GO
	
IF OBJECT_ID('dbo.BusinessType') IS NOT NULL DROP VIEW dbo.BusinessType;
	GO
	
	CREATE VIEW dbo.BusinessType AS
	(
		SELECT 
			base_query.*,
			change_log.*
		FROM 
		(
			SELECT [BusinessTypeId], [Description] FROM paga.dbo.BusinessType
		) AS base_query

		LEFT JOIN
		(
			SELECT 
				SYS_CHANGE_VERSION,	
				SYS_CHANGE_CREATION_VERSION	,
				SYS_CHANGE_OPERATION,	
				SYS_CHANGE_COLUMNS,	
				SYS_CHANGE_CONTEXT,	
				change_log_BusinessTypeId=BusinessTypeId
			FROM CHANGETABLE(CHANGES paga.dbo.[BusinessType],0) AS cl  

		) AS change_log ON
			base_query.BusinessTypeId = change_log.change_log_BusinessTypeId
	);
	GO
	
IF OBJECT_ID('dbo.City') IS NOT NULL DROP VIEW dbo.City;
	GO
	
	CREATE VIEW dbo.City AS
	(
		SELECT 
			base_query.*,
			change_log.*
		FROM 
		(
			SELECT [CityId], [CreatedDate], [Name], [PostalCode], [RegionId], [UpdatedDate], [LocalGovernmentAreaId] FROM paga.dbo.City
		) AS base_query

		LEFT JOIN
		(
			SELECT 
				SYS_CHANGE_VERSION,	
				SYS_CHANGE_CREATION_VERSION	,
				SYS_CHANGE_OPERATION,	
				SYS_CHANGE_COLUMNS,	
				SYS_CHANGE_CONTEXT,	
				change_log_CityId=CityId
			FROM CHANGETABLE(CHANGES paga.dbo.[City],0) AS cl  

		) AS change_log ON
			base_query.CityId = change_log.change_log_CityId
	);
	GO
	
IF OBJECT_ID('dbo.Country') IS NOT NULL DROP VIEW dbo.Country;
	GO
	
	CREATE VIEW dbo.Country AS
	(
		SELECT 
			base_query.*,
			change_log.*
		FROM 
		(
			SELECT [CountryId], [CreatedDate], [Name], [UpdatedDate] FROM paga.dbo.Country
		) AS base_query

		LEFT JOIN
		(
			SELECT 
				SYS_CHANGE_VERSION,	
				SYS_CHANGE_CREATION_VERSION	,
				SYS_CHANGE_OPERATION,	
				SYS_CHANGE_COLUMNS,	
				SYS_CHANGE_CONTEXT,	
				change_log_CountryId=CountryId
			FROM CHANGETABLE(CHANGES paga.dbo.[Country],0) AS cl  

		) AS change_log ON
			base_query.CountryId = change_log.change_log_CountryId
	);
	GO
	
IF OBJECT_ID('dbo.Currency') IS NOT NULL DROP VIEW dbo.Currency;
	GO
	
	CREATE VIEW dbo.Currency AS
	(
		SELECT 
			base_query.*,
			change_log.*
		FROM 
		(
			SELECT [CurrencyId], [Description] FROM paga.dbo.Currency
		) AS base_query

		LEFT JOIN
		(
			SELECT 
				SYS_CHANGE_VERSION,	
				SYS_CHANGE_CREATION_VERSION	,
				SYS_CHANGE_OPERATION,	
				SYS_CHANGE_COLUMNS,	
				SYS_CHANGE_CONTEXT,	
				change_log_CurrencyId=CurrencyId
			FROM CHANGETABLE(CHANGES paga.dbo.[Currency],0) AS cl  

		) AS change_log ON
			base_query.CurrencyId = change_log.change_log_CurrencyId
	);
	GO
	
IF OBJECT_ID('dbo.FinancialAccount') IS NOT NULL DROP VIEW dbo.FinancialAccount;
	GO
	
	CREATE VIEW dbo.FinancialAccount AS
	(
		SELECT 
			base_query.*,
			change_log.*
		FROM 
		(
			SELECT [FinancialAccountId], [AccountCodeId], [AccountNumber], [BankAccountId], [CreatedDate], [CurrencyId], [FinancialAccountTypeId], [RestrictedBalance], [TotalBalance], [UpdatedDate], [AccountHolderId], [HoldingFinancialAccountId], [OpeningBalance] FROM paga.dbo.FinancialAccount
		) AS base_query

		LEFT JOIN
		(
			SELECT 
				SYS_CHANGE_VERSION,	
				SYS_CHANGE_CREATION_VERSION	,
				SYS_CHANGE_OPERATION,	
				SYS_CHANGE_COLUMNS,	
				SYS_CHANGE_CONTEXT,	
				change_log_FinancialAccountId=FinancialAccountId
			FROM CHANGETABLE(CHANGES paga.dbo.[FinancialAccount],0) AS cl  

		) AS change_log ON
			base_query.FinancialAccountId = change_log.change_log_FinancialAccountId
	);
	GO
	
IF OBJECT_ID('dbo.FinancialAccountType') IS NOT NULL DROP VIEW dbo.FinancialAccountType;
	GO
	
	CREATE VIEW dbo.FinancialAccountType AS
	(
		SELECT 
			base_query.*,
			change_log.*
		FROM 
		(
			SELECT [FinancialAccountTypeId], [Description] FROM paga.dbo.FinancialAccountType
		) AS base_query

		LEFT JOIN
		(
			SELECT 
				SYS_CHANGE_VERSION,	
				SYS_CHANGE_CREATION_VERSION	,
				SYS_CHANGE_OPERATION,	
				SYS_CHANGE_COLUMNS,	
				SYS_CHANGE_CONTEXT,	
				change_log_FinancialAccountTypeId=FinancialAccountTypeId
			FROM CHANGETABLE(CHANGES paga.dbo.[FinancialAccountType],0) AS cl  

		) AS change_log ON
			base_query.FinancialAccountTypeId = change_log.change_log_FinancialAccountTypeId
	);
	GO
	
IF OBJECT_ID('dbo.FinancialTransaction') IS NOT NULL DROP VIEW dbo.FinancialTransaction;
	GO
	
	CREATE VIEW dbo.FinancialTransaction AS
	(
		SELECT 
			base_query.*,
			change_log.*
		FROM 
		(
			SELECT [FinancialTransactionId], [Amount], [CreatedDate], [Description], [ExternalReferenceNumber], [Fee], [FinancialTransactionTypeId], [ReferenceNumber], [ShortCode], [TransactionDate], [UpdatedDate], [UserId], [ProcessId], [ReversedBy], [Reverses], [__Reverses], [__ReversedBy], [CurrencyId], [ExchangeRate], [ForeignCurrencyAmount], [FinancialTransactionSubTypeId] FROM paga.dbo.FinancialTransaction
		) AS base_query

		LEFT JOIN
		(
			SELECT 
				SYS_CHANGE_VERSION,	
				SYS_CHANGE_CREATION_VERSION	,
				SYS_CHANGE_OPERATION,	
				SYS_CHANGE_COLUMNS,	
				SYS_CHANGE_CONTEXT,	
				change_log_FinancialTransactionId=FinancialTransactionId
			FROM CHANGETABLE(CHANGES paga.dbo.[FinancialTransaction],0) AS cl  

		) AS change_log ON
			base_query.FinancialTransactionId = change_log.change_log_FinancialTransactionId
	);
	GO
	
IF OBJECT_ID('dbo.FinancialTransactionItem') IS NOT NULL DROP VIEW dbo.FinancialTransactionItem;
	GO
	
	CREATE VIEW dbo.FinancialTransactionItem AS
	(
		SELECT 
			base_query.*,
			change_log.*
		FROM 
		(
			SELECT [FinancialTransactionItemId], [AccountCodeId], [CreatedDate], [CreditAmount], [DebitAmount], [Description], [FinancialAccountId], [FinancialTransactionId], [TransactionLineNumber], [UpdatedDate] FROM paga.dbo.FinancialTransactionItem
		) AS base_query

		LEFT JOIN
		(
			SELECT 
				SYS_CHANGE_VERSION,	
				SYS_CHANGE_CREATION_VERSION	,
				SYS_CHANGE_OPERATION,	
				SYS_CHANGE_COLUMNS,	
				SYS_CHANGE_CONTEXT,	
				change_log_FinancialTransactionItemId=FinancialTransactionItemId
			FROM CHANGETABLE(CHANGES paga.dbo.[FinancialTransactionItem],0) AS cl  

		) AS change_log ON
			base_query.FinancialTransactionItemId = change_log.change_log_FinancialTransactionItemId
	);
	GO
	
IF OBJECT_ID('dbo.FinancialTransactionRelationship') IS NOT NULL DROP VIEW dbo.FinancialTransactionRelationship;
	GO
	
	CREATE VIEW dbo.FinancialTransactionRelationship AS
	(
		SELECT 
			base_query.*,
			change_log.*
		FROM 
		(
			SELECT [FinancialTransactionRelationshipId], [CreatedDate], [FinancialTransactionRelationshipTypeId], [PrimaryFinancialTransactionId], [SecondaryFinancialTransactionId], [UpdatedDate] FROM paga.dbo.FinancialTransactionRelationship
		) AS base_query

		LEFT JOIN
		(
			SELECT 
				SYS_CHANGE_VERSION,	
				SYS_CHANGE_CREATION_VERSION	,
				SYS_CHANGE_OPERATION,	
				SYS_CHANGE_COLUMNS,	
				SYS_CHANGE_CONTEXT,	
				change_log_FinancialTransactionRelationshipId=FinancialTransactionRelationshipId
			FROM CHANGETABLE(CHANGES paga.dbo.[FinancialTransactionRelationship],0) AS cl  

		) AS change_log ON
			base_query.FinancialTransactionRelationshipId = change_log.change_log_FinancialTransactionRelationshipId
	);
	GO
	
IF OBJECT_ID('dbo.FinancialTransactionSubType') IS NOT NULL DROP VIEW dbo.FinancialTransactionSubType;
	GO
	
	CREATE VIEW dbo.FinancialTransactionSubType AS
	(
		SELECT 
			base_query.*,
			change_log.*
		FROM 
		(
			SELECT [FinancialTransactionSubTypeId], [Description] FROM paga.dbo.FinancialTransactionSubType
		) AS base_query

		LEFT JOIN
		(
			SELECT 
				SYS_CHANGE_VERSION,	
				SYS_CHANGE_CREATION_VERSION	,
				SYS_CHANGE_OPERATION,	
				SYS_CHANGE_COLUMNS,	
				SYS_CHANGE_CONTEXT,	
				change_log_FinancialTransactionSubTypeId=FinancialTransactionSubTypeId
			FROM CHANGETABLE(CHANGES paga.dbo.[FinancialTransactionSubType],0) AS cl  

		) AS change_log ON
			base_query.FinancialTransactionSubTypeId = change_log.change_log_FinancialTransactionSubTypeId
	);
	GO
	
IF OBJECT_ID('dbo.FinancialTransactionType') IS NOT NULL DROP VIEW dbo.FinancialTransactionType;
	GO
	
	CREATE VIEW dbo.FinancialTransactionType AS
	(
		SELECT 
			base_query.*,
			change_log.*
		FROM 
		(
			SELECT [FinancialTransactionTypeId], [Description] FROM paga.dbo.FinancialTransactionType
		) AS base_query

		LEFT JOIN
		(
			SELECT 
				SYS_CHANGE_VERSION,	
				SYS_CHANGE_CREATION_VERSION	,
				SYS_CHANGE_OPERATION,	
				SYS_CHANGE_COLUMNS,	
				SYS_CHANGE_CONTEXT,	
				change_log_FinancialTransactionTypeId=FinancialTransactionTypeId
			FROM CHANGETABLE(CHANGES paga.dbo.[FinancialTransactionType],0) AS cl  

		) AS change_log ON
			base_query.FinancialTransactionTypeId = change_log.change_log_FinancialTransactionTypeId
	);
	GO
	
IF OBJECT_ID('dbo.FinancialTransactionTypeTransactionTypeGroup') IS NOT NULL DROP VIEW dbo.FinancialTransactionTypeTransactionTypeGroup;
	GO
	
	CREATE VIEW dbo.FinancialTransactionTypeTransactionTypeGroup AS
	(
		SELECT 
			base_query.*,
			change_log.*
		FROM 
		(
			SELECT [FinancialTransactionTypeTransactionTypeGroupId], [CreatedDate], [FinancialTransactionTypeGroupId], [FinancialTransactionTypeId], [UpdatedDate] FROM paga.dbo.FinancialTransactionTypeTransactionTypeGroup
		) AS base_query

		LEFT JOIN
		(
			SELECT 
				SYS_CHANGE_VERSION,	
				SYS_CHANGE_CREATION_VERSION	,
				SYS_CHANGE_OPERATION,	
				SYS_CHANGE_COLUMNS,	
				SYS_CHANGE_CONTEXT,	
				change_log_FinancialTransactionTypeTransactionTypeGroupId=FinancialTransactionTypeTransactionTypeGroupId
			FROM CHANGETABLE(CHANGES paga.dbo.[FinancialTransactionTypeTransactionTypeGroup],0) AS cl  

		) AS change_log ON
			base_query.FinancialTransactionTypeTransactionTypeGroupId = change_log.change_log_FinancialTransactionTypeTransactionTypeGroupId
	);
	GO
	
IF OBJECT_ID('dbo.Geozone') IS NOT NULL DROP VIEW dbo.Geozone;
	GO
	
	CREATE VIEW dbo.Geozone AS
	(
		SELECT 
			base_query.*,
			change_log.*
		FROM 
		(
			SELECT [GeozoneId], [CreatedDate], [Name], [Symbol], [UpdatedDate] FROM paga.dbo.Geozone
		) AS base_query

		LEFT JOIN
		(
			SELECT 
				SYS_CHANGE_VERSION,	
				SYS_CHANGE_CREATION_VERSION	,
				SYS_CHANGE_OPERATION,	
				SYS_CHANGE_COLUMNS,	
				SYS_CHANGE_CONTEXT,	
				change_log_GeozoneId=GeozoneId
			FROM CHANGETABLE(CHANGES paga.dbo.[Geozone],0) AS cl  

		) AS change_log ON
			base_query.GeozoneId = change_log.change_log_GeozoneId
	);
	GO
	
IF OBJECT_ID('dbo.IntegrationTransaction') IS NOT NULL DROP VIEW dbo.IntegrationTransaction;
	GO
	
	CREATE VIEW dbo.IntegrationTransaction AS
	(
		SELECT 
			base_query.*,
			change_log.*
		FROM 
		(
			SELECT [IntegrationTransactionId], [Amount], [CreatedDate], [ExternalOrganizationId], [ExternalOrganizationName], [ExternalReferenceNumber], [FinancialTransactionId], [IntegrationTransactionResultId], [IntegrationTransactionTimestamp], [IntegrationTransactionTypeId], [Message], [UserId], [ProcessCode], [ProcessTypeId], [ReconciliationItemId], [UpdatedDate] FROM paga.dbo.IntegrationTransaction
		) AS base_query

		LEFT JOIN
		(
			SELECT 
				SYS_CHANGE_VERSION,	
				SYS_CHANGE_CREATION_VERSION	,
				SYS_CHANGE_OPERATION,	
				SYS_CHANGE_COLUMNS,	
				SYS_CHANGE_CONTEXT,	
				change_log_IntegrationTransactionId=IntegrationTransactionId
			FROM CHANGETABLE(CHANGES paga.dbo.[IntegrationTransaction],0) AS cl  

		) AS change_log ON
			base_query.IntegrationTransactionId = change_log.change_log_IntegrationTransactionId
	);
	GO
	
IF OBJECT_ID('dbo.LocalGovernmentArea') IS NOT NULL DROP VIEW dbo.LocalGovernmentArea;
	GO
	
	CREATE VIEW dbo.LocalGovernmentArea AS
	(
		SELECT 
			base_query.*,
			change_log.*
		FROM 
		(
			SELECT [LocalGovernmentAreaId], [CityId], [CountyId], [CreatedDate], [Name], [RegionId], [UpdatedDate], [LgaCode] FROM paga.dbo.LocalGovernmentArea
		) AS base_query

		LEFT JOIN
		(
			SELECT 
				SYS_CHANGE_VERSION,	
				SYS_CHANGE_CREATION_VERSION	,
				SYS_CHANGE_OPERATION,	
				SYS_CHANGE_COLUMNS,	
				SYS_CHANGE_CONTEXT,	
				change_log_LocalGovernmentAreaId=LocalGovernmentAreaId
			FROM CHANGETABLE(CHANGES paga.dbo.[LocalGovernmentArea],0) AS cl  

		) AS change_log ON
			base_query.LocalGovernmentAreaId = change_log.change_log_LocalGovernmentAreaId
	);
	GO
	
IF OBJECT_ID('dbo.MerchantCategory') IS NOT NULL DROP VIEW dbo.MerchantCategory;
	GO
	
	CREATE VIEW dbo.MerchantCategory AS
	(
		SELECT 
			base_query.*,
			change_log.*
		FROM 
		(
			SELECT [MerchantCategoryId], [Description] FROM paga.dbo.MerchantCategory
		) AS base_query

		LEFT JOIN
		(
			SELECT 
				SYS_CHANGE_VERSION,	
				SYS_CHANGE_CREATION_VERSION	,
				SYS_CHANGE_OPERATION,	
				SYS_CHANGE_COLUMNS,	
				SYS_CHANGE_CONTEXT,	
				change_log_MerchantCategoryId=MerchantCategoryId
			FROM CHANGETABLE(CHANGES paga.dbo.[MerchantCategory],0) AS cl  

		) AS change_log ON
			base_query.MerchantCategoryId = change_log.change_log_MerchantCategoryId
	);
	GO
	
IF OBJECT_ID('dbo.MobileOperator') IS NOT NULL DROP VIEW dbo.MobileOperator;
	GO
	
	CREATE VIEW dbo.MobileOperator AS
	(
		SELECT 
			base_query.*,
			change_log.*
		FROM 
		(
			SELECT [MobileOperatorId], [CreatedDate], [IsUsesPinless], [Name], [PINDiscountRate], [UpdatedDate], [Rank], [IsActive], [IsSupportsUSSD], [OrganizationId], [RouteName] FROM paga.dbo.MobileOperator
		) AS base_query

		LEFT JOIN
		(
			SELECT 
				SYS_CHANGE_VERSION,	
				SYS_CHANGE_CREATION_VERSION	,
				SYS_CHANGE_OPERATION,	
				SYS_CHANGE_COLUMNS,	
				SYS_CHANGE_CONTEXT,	
				change_log_MobileOperatorId=MobileOperatorId
			FROM CHANGETABLE(CHANGES paga.dbo.[MobileOperator],0) AS cl  

		) AS change_log ON
			base_query.MobileOperatorId = change_log.change_log_MobileOperatorId
	);
	GO
	
IF OBJECT_ID('dbo.Organization') IS NOT NULL DROP VIEW dbo.Organization;
	GO
	
	CREATE VIEW dbo.Organization AS
	(
		SELECT 
			base_query.*,
			change_log.*
		FROM 
		(
			SELECT [OrganizationId], [CreatedDate], [Description], [Name], [PagaAccountId], [ReferenceNumber], [UpdatedDate], [BusinessTypeId], [RcName], [Code], [OrganizationVerificationStatusId], [OrganizationSubscriptionStatusId], [DisplayName] FROM paga.dbo.Organization
		) AS base_query

		LEFT JOIN
		(
			SELECT 
				SYS_CHANGE_VERSION,	
				SYS_CHANGE_CREATION_VERSION	,
				SYS_CHANGE_OPERATION,	
				SYS_CHANGE_COLUMNS,	
				SYS_CHANGE_CONTEXT,	
				change_log_OrganizationId=OrganizationId
			FROM CHANGETABLE(CHANGES paga.dbo.[Organization],0) AS cl  

		) AS change_log ON
			base_query.OrganizationId = change_log.change_log_OrganizationId
	);
	GO
	
IF OBJECT_ID('dbo.OrganizationMerchantCategory') IS NOT NULL DROP VIEW dbo.OrganizationMerchantCategory;
	GO
	
	CREATE VIEW dbo.OrganizationMerchantCategory AS
	(
		SELECT 
			base_query.*,
			change_log.*
		FROM 
		(
			SELECT [OrganizationMerchantCategoryId], [MerchantCategoryId], [OrganizationId], [CreatedDate], [UpdatedDate] FROM paga.dbo.OrganizationMerchantCategory
		) AS base_query

		LEFT JOIN
		(
			SELECT 
				SYS_CHANGE_VERSION,	
				SYS_CHANGE_CREATION_VERSION	,
				SYS_CHANGE_OPERATION,	
				SYS_CHANGE_COLUMNS,	
				SYS_CHANGE_CONTEXT,	
				change_log_OrganizationMerchantCategoryId=OrganizationMerchantCategoryId
			FROM CHANGETABLE(CHANGES paga.dbo.[OrganizationMerchantCategory],0) AS cl  

		) AS change_log ON
			base_query.OrganizationMerchantCategoryId = change_log.change_log_OrganizationMerchantCategoryId
	);
	GO
	
IF OBJECT_ID('dbo.OrganizationMerchantProcessChannel') IS NOT NULL DROP VIEW dbo.OrganizationMerchantProcessChannel;
	GO
	
	CREATE VIEW dbo.OrganizationMerchantProcessChannel AS
	(
		SELECT 
			base_query.*,
			change_log.*
		FROM 
		(
			SELECT [OrganizationMerchantProcessChannelId], [OrganizationId], [ProcessChannelId], [CreatedDate], [UpdatedDate] FROM paga.dbo.OrganizationMerchantProcessChannel
		) AS base_query

		LEFT JOIN
		(
			SELECT 
				SYS_CHANGE_VERSION,	
				SYS_CHANGE_CREATION_VERSION	,
				SYS_CHANGE_OPERATION,	
				SYS_CHANGE_COLUMNS,	
				SYS_CHANGE_CONTEXT,	
				change_log_OrganizationMerchantProcessChannelId=OrganizationMerchantProcessChannelId
			FROM CHANGETABLE(CHANGES paga.dbo.[OrganizationMerchantProcessChannel],0) AS cl  

		) AS change_log ON
			base_query.OrganizationMerchantProcessChannelId = change_log.change_log_OrganizationMerchantProcessChannelId
	);
	GO
	
IF OBJECT_ID('dbo.OrganizationSubscriptionStatus') IS NOT NULL DROP VIEW dbo.OrganizationSubscriptionStatus;
	GO
	
	CREATE VIEW dbo.OrganizationSubscriptionStatus AS
	(
		SELECT 
			base_query.*,
			change_log.*
		FROM 
		(
			SELECT [OrganizationSubscriptionStatusId], [Description] FROM paga.dbo.OrganizationSubscriptionStatus
		) AS base_query

		LEFT JOIN
		(
			SELECT 
				SYS_CHANGE_VERSION,	
				SYS_CHANGE_CREATION_VERSION	,
				SYS_CHANGE_OPERATION,	
				SYS_CHANGE_COLUMNS,	
				SYS_CHANGE_CONTEXT,	
				change_log_OrganizationSubscriptionStatusId=OrganizationSubscriptionStatusId
			FROM CHANGETABLE(CHANGES paga.dbo.[OrganizationSubscriptionStatus],0) AS cl  

		) AS change_log ON
			base_query.OrganizationSubscriptionStatusId = change_log.change_log_OrganizationSubscriptionStatusId
	);
	GO
	
IF OBJECT_ID('dbo.OrganizationUnit') IS NOT NULL DROP VIEW dbo.OrganizationUnit;
	GO
	
	CREATE VIEW dbo.OrganizationUnit AS
	(
		SELECT 
			base_query.*,
			change_log.*
		FROM 
		(
			SELECT [OrganizationUnitId], [CreatedDate], [Name], [OrganizationId], [OrganizationUnitTypeId], [ParentOrganizationUnitId], [UpdatedDate], [IdentificationNumber] FROM paga.dbo.OrganizationUnit
		) AS base_query

		LEFT JOIN
		(
			SELECT 
				SYS_CHANGE_VERSION,	
				SYS_CHANGE_CREATION_VERSION	,
				SYS_CHANGE_OPERATION,	
				SYS_CHANGE_COLUMNS,	
				SYS_CHANGE_CONTEXT,	
				change_log_OrganizationUnitId=OrganizationUnitId
			FROM CHANGETABLE(CHANGES paga.dbo.[OrganizationUnit],0) AS cl  

		) AS change_log ON
			base_query.OrganizationUnitId = change_log.change_log_OrganizationUnitId
	);
	GO
	
IF OBJECT_ID('dbo.OrganizationUnitType') IS NOT NULL DROP VIEW dbo.OrganizationUnitType;
	GO
	
	CREATE VIEW dbo.OrganizationUnitType AS
	(
		SELECT 
			base_query.*,
			change_log.*
		FROM 
		(
			SELECT [OrganizationUnitTypeId], [CreatedDate], [Description], [OrganizationId], [UpdatedDate] FROM paga.dbo.OrganizationUnitType
		) AS base_query

		LEFT JOIN
		(
			SELECT 
				SYS_CHANGE_VERSION,	
				SYS_CHANGE_CREATION_VERSION	,
				SYS_CHANGE_OPERATION,	
				SYS_CHANGE_COLUMNS,	
				SYS_CHANGE_CONTEXT,	
				change_log_OrganizationUnitTypeId=OrganizationUnitTypeId
			FROM CHANGETABLE(CHANGES paga.dbo.[OrganizationUnitType],0) AS cl  

		) AS change_log ON
			base_query.OrganizationUnitTypeId = change_log.change_log_OrganizationUnitTypeId
	);
	GO
	
IF OBJECT_ID('dbo.OrganizationUnitUser') IS NOT NULL DROP VIEW dbo.OrganizationUnitUser;
	GO
	
	CREATE VIEW dbo.OrganizationUnitUser AS
	(
		SELECT 
			base_query.*,
			change_log.*
		FROM 
		(
			SELECT [OrganizationUnitUserId], [CreatedDate], [OrganizationUnitId], [UpdatedDate], [UserId] FROM paga.dbo.OrganizationUnitUser
		) AS base_query

		LEFT JOIN
		(
			SELECT 
				SYS_CHANGE_VERSION,	
				SYS_CHANGE_CREATION_VERSION	,
				SYS_CHANGE_OPERATION,	
				SYS_CHANGE_COLUMNS,	
				SYS_CHANGE_CONTEXT,	
				change_log_OrganizationUnitUserId=OrganizationUnitUserId
			FROM CHANGETABLE(CHANGES paga.dbo.[OrganizationUnitUser],0) AS cl  

		) AS change_log ON
			base_query.OrganizationUnitUserId = change_log.change_log_OrganizationUnitUserId
	);
	GO
	
IF OBJECT_ID('dbo.OrganizationVerificationStatus') IS NOT NULL DROP VIEW dbo.OrganizationVerificationStatus;
	GO
	
	CREATE VIEW dbo.OrganizationVerificationStatus AS
	(
		SELECT 
			base_query.*,
			change_log.*
		FROM 
		(
			SELECT [OrganizationVerificationStatusId], [Description] FROM paga.dbo.OrganizationVerificationStatus
		) AS base_query

		LEFT JOIN
		(
			SELECT 
				SYS_CHANGE_VERSION,	
				SYS_CHANGE_CREATION_VERSION	,
				SYS_CHANGE_OPERATION,	
				SYS_CHANGE_COLUMNS,	
				SYS_CHANGE_CONTEXT,	
				change_log_OrganizationVerificationStatusId=OrganizationVerificationStatusId
			FROM CHANGETABLE(CHANGES paga.dbo.[OrganizationVerificationStatus],0) AS cl  

		) AS change_log ON
			base_query.OrganizationVerificationStatusId = change_log.change_log_OrganizationVerificationStatusId
	);
	GO
	
IF OBJECT_ID('dbo.PagaAccount') IS NOT NULL DROP VIEW dbo.PagaAccount;
	GO
	
	CREATE VIEW dbo.PagaAccount AS
	(
		SELECT 
			base_query.*,
			change_log.*
		FROM 
		(
			SELECT [PagaAccountId], [BankingStatusId], [CreatedDate], [ExternalAccountNumber], [hasOnlineAccount], [IsActive], [IsEnabled], [PagaAccountNumber], [PagaAccountStatusId], [UpdatedDate], [AccountHolderId], [RegistrationDate] FROM paga.dbo.PagaAccount
		) AS base_query

		LEFT JOIN
		(
			SELECT 
				SYS_CHANGE_VERSION,	
				SYS_CHANGE_CREATION_VERSION	,
				SYS_CHANGE_OPERATION,	
				SYS_CHANGE_COLUMNS,	
				SYS_CHANGE_CONTEXT,	
				change_log_PagaAccountId=PagaAccountId
			FROM CHANGETABLE(CHANGES paga.dbo.[PagaAccount],0) AS cl  

		) AS change_log ON
			base_query.PagaAccountId = change_log.change_log_PagaAccountId
	);
	GO
	
IF OBJECT_ID('dbo.PagaAccountNature') IS NOT NULL DROP VIEW dbo.PagaAccountNature;
	GO
	
	CREATE VIEW dbo.PagaAccountNature AS
	(
		SELECT 
			base_query.*,
			change_log.*
		FROM 
		(
			SELECT [PagaAccountNatureId], [CreatedDate], [IdentificationNumber], [NatureId], [PagaAccountId], [UpdatedDate] FROM paga.dbo.PagaAccountNature
		) AS base_query

		LEFT JOIN
		(
			SELECT 
				SYS_CHANGE_VERSION,	
				SYS_CHANGE_CREATION_VERSION	,
				SYS_CHANGE_OPERATION,	
				SYS_CHANGE_COLUMNS,	
				SYS_CHANGE_CONTEXT,	
				change_log_PagaAccountNatureId=PagaAccountNatureId
			FROM CHANGETABLE(CHANGES paga.dbo.[PagaAccountNature],0) AS cl  

		) AS change_log ON
			base_query.PagaAccountNatureId = change_log.change_log_PagaAccountNatureId
	);
	GO
	
IF OBJECT_ID('dbo.PagaAccountStatus') IS NOT NULL DROP VIEW dbo.PagaAccountStatus;
	GO
	
	CREATE VIEW dbo.PagaAccountStatus AS
	(
		SELECT 
			base_query.*,
			change_log.*
		FROM 
		(
			SELECT [PagaAccountStatusId], [Description] FROM paga.dbo.PagaAccountStatus
		) AS base_query

		LEFT JOIN
		(
			SELECT 
				SYS_CHANGE_VERSION,	
				SYS_CHANGE_CREATION_VERSION	,
				SYS_CHANGE_OPERATION,	
				SYS_CHANGE_COLUMNS,	
				SYS_CHANGE_CONTEXT,	
				change_log_PagaAccountStatusId=PagaAccountStatusId
			FROM CHANGETABLE(CHANGES paga.dbo.[PagaAccountStatus],0) AS cl  

		) AS change_log ON
			base_query.PagaAccountStatusId = change_log.change_log_PagaAccountStatusId
	);
	GO
	
IF OBJECT_ID('dbo.PagaAccountUser') IS NOT NULL DROP VIEW dbo.PagaAccountUser;
	GO
	
	CREATE VIEW dbo.PagaAccountUser AS
	(
		SELECT 
			base_query.*,
			change_log.*
		FROM 
		(
			SELECT [PagaAccountUserId], [CreatedDate], [PagaAccountId], [PagaAccountUserTypeId], [UpdatedDate], [UserId] FROM paga.dbo.PagaAccountUser
		) AS base_query

		LEFT JOIN
		(
			SELECT 
				SYS_CHANGE_VERSION,	
				SYS_CHANGE_CREATION_VERSION	,
				SYS_CHANGE_OPERATION,	
				SYS_CHANGE_COLUMNS,	
				SYS_CHANGE_CONTEXT,	
				change_log_PagaAccountUserId=PagaAccountUserId
			FROM CHANGETABLE(CHANGES paga.dbo.[PagaAccountUser],0) AS cl  

		) AS change_log ON
			base_query.PagaAccountUserId = change_log.change_log_PagaAccountUserId
	);
	GO
	
IF OBJECT_ID('dbo.PagaAccountUserType') IS NOT NULL DROP VIEW dbo.PagaAccountUserType;
	GO
	
	CREATE VIEW dbo.PagaAccountUserType AS
	(
		SELECT 
			base_query.*,
			change_log.*
		FROM 
		(
			SELECT [PagaAccountUserTypeId], [Description] FROM paga.dbo.PagaAccountUserType
		) AS base_query

		LEFT JOIN
		(
			SELECT 
				SYS_CHANGE_VERSION,	
				SYS_CHANGE_CREATION_VERSION	,
				SYS_CHANGE_OPERATION,	
				SYS_CHANGE_COLUMNS,	
				SYS_CHANGE_CONTEXT,	
				change_log_PagaAccountUserTypeId=PagaAccountUserTypeId
			FROM CHANGETABLE(CHANGES paga.dbo.[PagaAccountUserType],0) AS cl  

		) AS change_log ON
			base_query.PagaAccountUserTypeId = change_log.change_log_PagaAccountUserTypeId
	);
	GO
	
IF OBJECT_ID('dbo.Process') IS NOT NULL DROP VIEW dbo.Process;
	GO
	
	CREATE VIEW dbo.Process AS
	(
		SELECT 
			base_query.*,
			change_log.*
		FROM 
		(
			SELECT [ProcessId], [Amount], [CompletedTimestamp], [CreatedDate], [Fee], [FinancialTransactionId], [ForUserId], [IsShortLived], [ProcessChannelId], [ProcessCode], [ProcessStatusId], [ProcessTypeId], [StartedTimestamp], [ToUserId], [UpdatedDate], [UserId], [AgentCommissionTypeId], [AgentCommissionAmount], [StatusMessage] FROM paga.dbo.Process
		) AS base_query

		LEFT JOIN
		(
			SELECT 
				SYS_CHANGE_VERSION,	
				SYS_CHANGE_CREATION_VERSION	,
				SYS_CHANGE_OPERATION,	
				SYS_CHANGE_COLUMNS,	
				SYS_CHANGE_CONTEXT,	
				change_log_ProcessId=ProcessId
			FROM CHANGETABLE(CHANGES paga.dbo.[Process],0) AS cl  

		) AS change_log ON
			base_query.ProcessId = change_log.change_log_ProcessId
	);
	GO
	
IF OBJECT_ID('dbo.ProcessChannel') IS NOT NULL DROP VIEW dbo.ProcessChannel;
	GO
	
	CREATE VIEW dbo.ProcessChannel AS
	(
		SELECT 
			base_query.*,
			change_log.*
		FROM 
		(
			SELECT [ProcessChannelId], [Description] FROM paga.dbo.ProcessChannel
		) AS base_query

		LEFT JOIN
		(
			SELECT 
				SYS_CHANGE_VERSION,	
				SYS_CHANGE_CREATION_VERSION	,
				SYS_CHANGE_OPERATION,	
				SYS_CHANGE_COLUMNS,	
				SYS_CHANGE_CONTEXT,	
				change_log_ProcessChannelId=ProcessChannelId
			FROM CHANGETABLE(CHANGES paga.dbo.[ProcessChannel],0) AS cl  

		) AS change_log ON
			base_query.ProcessChannelId = change_log.change_log_ProcessChannelId
	);
	GO
	
IF OBJECT_ID('dbo.ProcessData') IS NOT NULL DROP VIEW dbo.ProcessData;
	GO
	
	CREATE VIEW dbo.ProcessData AS
	(
		SELECT 
			base_query.*,
			change_log.*
		FROM 
		(
			SELECT [ProcessDataId], [CreatedDate], [Name], [ProcessId], [UpdatedDate], [Value] FROM paga.dbo.ProcessData
		) AS base_query

		LEFT JOIN
		(
			SELECT 
				SYS_CHANGE_VERSION,	
				SYS_CHANGE_CREATION_VERSION	,
				SYS_CHANGE_OPERATION,	
				SYS_CHANGE_COLUMNS,	
				SYS_CHANGE_CONTEXT,	
				change_log_ProcessDataId=ProcessDataId
			FROM CHANGETABLE(CHANGES paga.dbo.[ProcessData],0) AS cl  

		) AS change_log ON
			base_query.ProcessDataId = change_log.change_log_ProcessDataId
	);
	GO
	
IF OBJECT_ID('dbo.ProcessStatus') IS NOT NULL DROP VIEW dbo.ProcessStatus;
	GO
	
	CREATE VIEW dbo.ProcessStatus AS
	(
		SELECT 
			base_query.*,
			change_log.*
		FROM 
		(
			SELECT [ProcessStatusId], [Description] FROM paga.dbo.ProcessStatus
		) AS base_query

		LEFT JOIN
		(
			SELECT 
				SYS_CHANGE_VERSION,	
				SYS_CHANGE_CREATION_VERSION	,
				SYS_CHANGE_OPERATION,	
				SYS_CHANGE_COLUMNS,	
				SYS_CHANGE_CONTEXT,	
				change_log_ProcessStatusId=ProcessStatusId
			FROM CHANGETABLE(CHANGES paga.dbo.[ProcessStatus],0) AS cl  

		) AS change_log ON
			base_query.ProcessStatusId = change_log.change_log_ProcessStatusId
	);
	GO
	
IF OBJECT_ID('dbo.ProcessType') IS NOT NULL DROP VIEW dbo.ProcessType;
	GO
	
	CREATE VIEW dbo.ProcessType AS
	(
		SELECT 
			base_query.*,
			change_log.*
		FROM 
		(
			SELECT [ProcessTypeId], [Description] FROM paga.dbo.ProcessType
		) AS base_query

		LEFT JOIN
		(
			SELECT 
				SYS_CHANGE_VERSION,	
				SYS_CHANGE_CREATION_VERSION	,
				SYS_CHANGE_OPERATION,	
				SYS_CHANGE_COLUMNS,	
				SYS_CHANGE_CONTEXT,	
				change_log_ProcessTypeId=ProcessTypeId
			FROM CHANGETABLE(CHANGES paga.dbo.[ProcessType],0) AS cl  

		) AS change_log ON
			base_query.ProcessTypeId = change_log.change_log_ProcessTypeId
	);
	GO
	
IF OBJECT_ID('dbo.ProcessTypeGroup') IS NOT NULL DROP VIEW dbo.ProcessTypeGroup;
	GO
	
	CREATE VIEW dbo.ProcessTypeGroup AS
	(
		SELECT 
			base_query.*,
			change_log.*
		FROM 
		(
			SELECT [ProcessTypeGroupId], [Description] FROM paga.dbo.ProcessTypeGroup
		) AS base_query

		LEFT JOIN
		(
			SELECT 
				SYS_CHANGE_VERSION,	
				SYS_CHANGE_CREATION_VERSION	,
				SYS_CHANGE_OPERATION,	
				SYS_CHANGE_COLUMNS,	
				SYS_CHANGE_CONTEXT,	
				change_log_ProcessTypeGroupId=ProcessTypeGroupId
			FROM CHANGETABLE(CHANGES paga.dbo.[ProcessTypeGroup],0) AS cl  

		) AS change_log ON
			base_query.ProcessTypeGroupId = change_log.change_log_ProcessTypeGroupId
	);
	GO
	
IF OBJECT_ID('dbo.Region') IS NOT NULL DROP VIEW dbo.Region;
	GO
	
	CREATE VIEW dbo.Region AS
	(
		SELECT 
			base_query.*,
			change_log.*
		FROM 
		(
			SELECT [RegionId], [CountryId], [CreatedDate], [GeozoneId], [Name], [UpdatedDate] FROM paga.dbo.Region
		) AS base_query

		LEFT JOIN
		(
			SELECT 
				SYS_CHANGE_VERSION,	
				SYS_CHANGE_CREATION_VERSION	,
				SYS_CHANGE_OPERATION,	
				SYS_CHANGE_COLUMNS,	
				SYS_CHANGE_CONTEXT,	
				change_log_RegionId=RegionId
			FROM CHANGETABLE(CHANGES paga.dbo.[Region],0) AS cl  

		) AS change_log ON
			base_query.RegionId = change_log.change_log_RegionId
	);
	GO
	
IF OBJECT_ID('dbo.Roles') IS NOT NULL DROP VIEW dbo.Roles;
	GO
	
	CREATE VIEW dbo.Roles AS
	(
		SELECT 
			base_query.*,
			change_log.*
		FROM 
		(
			SELECT [RoleId], [CreatedDate], [Description], [Name], [Namespace], [UpdatedDate] FROM paga.dbo.Role
		) AS base_query

		LEFT JOIN
		(
			SELECT 
				SYS_CHANGE_VERSION,	
				SYS_CHANGE_CREATION_VERSION	,
				SYS_CHANGE_OPERATION,	
				SYS_CHANGE_COLUMNS,	
				SYS_CHANGE_CONTEXT,	
				change_log_RoleId=RoleId
			FROM CHANGETABLE(CHANGES paga.dbo.[Role],0) AS cl  

		) AS change_log ON
			base_query.RoleId = change_log.change_log_RoleId
	);
	GO
	
IF OBJECT_ID('dbo.Users') IS NOT NULL DROP VIEW dbo.Users;
	GO
	
CREATE VIEW dbo.Users AS
(
	SELECT 
		base_query.*,
		change_log.*
	FROM 
	(
		SELECT 
			UserId,
			CreatedDate,
			DateOfBirth,
			FirstName,
			GenderId,
			IsEnabled,
			LastName,
			MiddleName,
			Namespace,
			UpdatedDate,
			IsEmailVerified,
			UUID,
			PhoneNumberVerifiedDate,
			NamespaceValue,
			EmailVerifiedDate
		FROM paga.[dbo].[User]
	) AS base_query

	LEFT JOIN
	(
		SELECT 
			SYS_CHANGE_VERSION,	
			SYS_CHANGE_CREATION_VERSION	,
			SYS_CHANGE_OPERATION,	
			SYS_CHANGE_COLUMNS,	
			SYS_CHANGE_CONTEXT,	
			change_log_UserID = UserID
		FROM CHANGETABLE(CHANGES paga.dbo.[User],0) AS cl  

	) AS change_log ON
		base_query.UserID = change_log.change_log_UserID
);
GO

IF OBJECT_ID('dbo.UserRole') IS NOT NULL DROP VIEW dbo.UserRole;
	GO
	
	CREATE VIEW dbo.UserRole AS
	(
		SELECT 
			base_query.*,
			change_log.*
		FROM 
		(
			SELECT [UserRoleId], [CreatedDate], [RoleId], [UpdatedDate], [UserId] FROM paga.dbo.UserRole
		) AS base_query

		LEFT JOIN
		(
			SELECT 
				SYS_CHANGE_VERSION,	
				SYS_CHANGE_CREATION_VERSION	,
				SYS_CHANGE_OPERATION,	
				SYS_CHANGE_COLUMNS,	
				SYS_CHANGE_CONTEXT,	
				change_log_UserRoleId=UserRoleId
			FROM CHANGETABLE(CHANGES paga.dbo.[UserRole],0) AS cl  

		) AS change_log ON
			base_query.UserRoleId = change_log.change_log_UserRoleId
	);
	GO
	