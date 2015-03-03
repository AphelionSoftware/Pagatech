CREATE PROCEDURE [dbo].[truncate_staging_tables]

AS
BEGIN
	SET NOCOUNT ON;

   
	TRUNCATE TABLE [dbo].[FinancialTransaction]; 
					
					
TRUNCATE TABLE [dbo].[OrganizationUnitType]; 
					
					
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
					
					
TRUNCATE TABLE [Updates].[Classification_DimAgentCommissionType]; 
					
					
TRUNCATE TABLE [Updates].[Classification_DimBankingStatus]; 
					
					
TRUNCATE TABLE [Updates].[Classification_DimBusinessType]; 
					
					
TRUNCATE TABLE [Updates].[Classification_DimFinancialTransactionSubType]; 
					
					
TRUNCATE TABLE [Updates].[Classification_DimFinancialTransactionType]; 
					
					
TRUNCATE TABLE [Updates].[Classification_DimIntegrationTransactionResult]; 
					
					
TRUNCATE TABLE [Updates].[Classification_DimIntegrationTransactionType]; 
					
					
TRUNCATE TABLE [Updates].[Classification_DimMerchantCategory]; 
					
					
TRUNCATE TABLE [Updates].[Classification_DimOrganizationSubscriptionStatus]; 
					
					
TRUNCATE TABLE [Updates].[Classification_DimOrganizationUnitType]; 
					
					
TRUNCATE TABLE [Updates].[Classification_DimOrganizationVerificationStatus]; 
					
					
TRUNCATE TABLE [Updates].[Classification_DimPagaAccountStatus]; 
					
					
TRUNCATE TABLE [Updates].[Classification_DimPagaAccountUserType]; 
					
					
TRUNCATE TABLE [Updates].[Classification_DimProcessChannel]; 
					
					
TRUNCATE TABLE [Updates].[Classification_DimProcessStatus]; 
					
					
TRUNCATE TABLE [Updates].[Classification_DimProcessType]; 
					
					
TRUNCATE TABLE [Updates].[Finance_DimBank]; 
					
					
TRUNCATE TABLE [Updates].[Finance_DimBankAccount]; 
					
					
TRUNCATE TABLE [Updates].[Finance_DimChartOfAccounts]; 
					
					
TRUNCATE TABLE [Updates].[Finance_DimCurrency]; 
					
					
TRUNCATE TABLE [Updates].[Finance_DimFinancialAccount]; 
					
					
TRUNCATE TABLE [Updates].[Finance_DimFinancialAccountType]; 
					
					
TRUNCATE TABLE [Updates].[Finance_DimFinancialHoldingAccount]; 
					
					
TRUNCATE TABLE [Updates].[Finance_DimGLCode]; 
					
					
TRUNCATE TABLE [Updates].[Finance_DimGLCodeGroup]; 
					
					
TRUNCATE TABLE [Updates].[Finance_DimGLCodeSubGroup]; 
					
					
TRUNCATE TABLE [Updates].[Finance_DimPaymentUseCase]; 
					
					
TRUNCATE TABLE [Updates].[Finance_DimPaymentUseCaseType]; 
					
					
TRUNCATE TABLE [Updates].[Finance_FactFinancialTransaction]; 
					
					
TRUNCATE TABLE [Updates].[Finance_FactGLTransaction]; 
					
					
TRUNCATE TABLE [Updates].[Location_DimCity]; 
					
					
TRUNCATE TABLE [Updates].[Location_DimCountry]; 
					
					
TRUNCATE TABLE [Updates].[Location_DimGeoZone]; 
					
					
TRUNCATE TABLE [Updates].[Location_DimLocalGovernmentArea]; 
					
					
TRUNCATE TABLE [Updates].[Location_DimRegion]; 
					
					
TRUNCATE TABLE [Updates].[Shared_DimOrganization]; 
					
					
TRUNCATE TABLE [Updates].[Shared_DimOrganizationUnitLevel1]; 
					
					
TRUNCATE TABLE [Updates].[Shared_DimOrganizationUnitLevel2]; 
					
					
TRUNCATE TABLE [Updates].[Shared_DimOrganizationUnitLevel3]; 
					
					
TRUNCATE TABLE [Updates].[Shared_DimOrganizationUnitLevel4]; 
					
					
TRUNCATE TABLE [Updates].[Shared_DimPagaAccount]; 
					
					
TRUNCATE TABLE [Updates].[Shared_DimRole]; 
					
					
TRUNCATE TABLE [Updates].[Shared_DimUser]; 
					
					
TRUNCATE TABLE [Updates].[Shared_DimUserRole]; 
					
					
TRUNCATE TABLE [Updates].[Shared_FactIntegrationTransaction]; 
					
					
TRUNCATE TABLE [Updates].[Shared_FactProcessEvent]; 
					
					
END