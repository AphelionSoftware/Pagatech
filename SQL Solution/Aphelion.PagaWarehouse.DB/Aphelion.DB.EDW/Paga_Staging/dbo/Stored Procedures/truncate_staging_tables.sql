CREATE PROCEDURE [dbo].[truncate_staging_tables]

AS
BEGIN
	SET NOCOUNT ON;

   
	TRUNCATE TABLE [dbo].[FinancialTransaction];
	TRUNCATE TABLE [dbo].[Process];
	TRUNCATE TABLE [dbo].[ProcessData];
	TRUNCATE TABLE [dbo].[ReversalChain];
	TRUNCATE TABLE [dbo].[Reversals];
	TRUNCATE TABLE [Staging].[Classification_DimAgentCommissionType];
	TRUNCATE TABLE [Staging].[Classification_DimBankingStatus];
	TRUNCATE TABLE [Staging].[Classification_DimBusinessType];
	TRUNCATE TABLE [Staging].[Classification_DimFinancialTransactionSubType];
	TRUNCATE TABLE [Staging].[Classification_DimFinancialTransactionType];
	TRUNCATE TABLE [Staging].[Classification_DimIntegrationTransactionResult];
	TRUNCATE TABLE [Staging].[Classification_DimIntegrationTransactionType];
	TRUNCATE TABLE [Staging].[Classification_DimMerchantCategory];
	TRUNCATE TABLE [Staging].[Classification_DimOrganizationSubscriptionStatus];
	TRUNCATE TABLE [Staging].[Classification_DimOrganizationUnitType];
	TRUNCATE TABLE [Staging].[Classification_DimOrganizationVerificationStatus];
	TRUNCATE TABLE [Staging].[Classification_DimPagaAccountStatus];
	TRUNCATE TABLE [Staging].[Classification_DimPagaAccountUserType];
	TRUNCATE TABLE [Staging].[Classification_DimProcessChannel];
	TRUNCATE TABLE [Staging].[Classification_DimProcessStatus];
	TRUNCATE TABLE [Staging].[Classification_DimProcessType];
	TRUNCATE TABLE [Staging].[Finance_DimBank];
	TRUNCATE TABLE [Staging].[Finance_DimBankAccount];
	TRUNCATE TABLE [Staging].[Finance_DimChartOfAccounts];
	TRUNCATE TABLE [Staging].[Finance_DimCurrency];
	TRUNCATE TABLE [Staging].[Finance_DimFinancialAccount];
	TRUNCATE TABLE [Staging].[Finance_DimFinancialAccountType];
	TRUNCATE TABLE [Staging].[Finance_DimFinancialHoldingAccount];
	TRUNCATE TABLE [Staging].[Finance_DimGLCode];
	TRUNCATE TABLE [Staging].[Finance_DimGLCodeGroup];
	TRUNCATE TABLE [Staging].[Finance_DimGLCodeSubGroup];
	TRUNCATE TABLE [Staging].[Finance_DimPaymentUseCase];
	TRUNCATE TABLE [Staging].[Finance_DimPaymentUseCaseType];
	TRUNCATE TABLE [Staging].[Finance_FactFinancialTransaction];
	TRUNCATE TABLE [Staging].[Finance_FactGLTransaction];
	TRUNCATE TABLE [Staging].[Location_DimCity];
	TRUNCATE TABLE [Staging].[Location_DimCountry];
	TRUNCATE TABLE [Staging].[Location_DimGeoZone];
	TRUNCATE TABLE [Staging].[Location_DimLocalGovernmentArea];
	TRUNCATE TABLE [Staging].[Location_DimRegion];
	TRUNCATE TABLE [Staging].[Shared_DimOrganization];
	TRUNCATE TABLE [Staging].[Shared_DimOrganizationUnitLevel1];
	TRUNCATE TABLE [Staging].[Shared_DimOrganizationUnitLevel2];
	TRUNCATE TABLE [Staging].[Shared_DimOrganizationUnitLevel3];
	TRUNCATE TABLE [Staging].[Shared_DimOrganizationUnitLevel4];
	TRUNCATE TABLE [Staging].[Shared_DimPagaAccount];
	TRUNCATE TABLE [Staging].[Shared_DimRole];
	TRUNCATE TABLE [Staging].[Shared_DimUser];
	TRUNCATE TABLE [Staging].[Shared_DimUserRole];
	TRUNCATE TABLE [Staging].[Shared_FactIntegrationTransaction];
	TRUNCATE TABLE [Staging].[Shared_FactProcessEvent];

END