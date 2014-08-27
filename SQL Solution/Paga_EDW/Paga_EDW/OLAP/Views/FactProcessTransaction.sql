    

CREATE VIEW [OLAP].[FactProcessTransaction]
WITH SCHEMABINDING
AS

SELECT 
	[FactProcessTransaction].[FactProcessTransactionID] 
	,[FactProcessTransaction].[AgentCommissionAmount] 
	,[FactProcessTransaction].[ATMReferenceNumber] 
	,[FactProcessTransaction].[CardProcessorName] 
	,[FactProcessTransaction].[CustomerBillerAccount] 
	,[FactProcessTransaction].[CustomerPhoneNumber] 
	,[FactProcessTransaction].[DependentProcessID] 
	,[FactProcessTransaction].[DepositNumber] 
	,[FactProcessTransaction].[DimAgentCommissionTypeID] 
	,[FactProcessTransaction].[DimApprovedByUserID] 
	,[FactProcessTransaction].[DimBillerAccountUserID] 
	,[FactProcessTransaction].[DimCancellationApprovedByUserID] 
	,[FactProcessTransaction].[DimChannelID] 
	,[FactProcessTransaction].[DimCityID] 
	,[FactProcessTransaction].[DimCompletedDateID] 
	,[FactProcessTransaction].[DimCompletedTimeID] 
	,[FactProcessTransaction].[DimCreatedDateID] 
	,[FactProcessTransaction].[DimCreatedTimeID] 
	,[FactProcessTransaction].[DimInitiatingUserID] 
	,[FactProcessTransaction].[DimOnBehalffUserID] 
	,[FactProcessTransaction].[DimOrganizationID] 
	,[FactProcessTransaction].[DimOrganizationUnitLevel5ID] 
	,[FactProcessTransaction].[DimOriginalPayerPagaAccountIDID] 
	,[FactProcessTransaction].[DimPagaAccountID] 
	,[FactProcessTransaction].[DimProcessStatusID] 
	,[FactProcessTransaction].[DimProcessTypeID] 
	,[FactProcessTransaction].[DimReceivingUserID] 
	,[FactProcessTransaction].[DimStartedDateID] 
	,[FactProcessTransaction].[DimStartedTimeID] 
	,[FactProcessTransaction].[DimTransferDateID] 
	,[FactProcessTransaction].[DimTransferTimeID] 
	,[FactProcessTransaction].[DimVerifiedByUserID] 
	,[FactProcessTransaction].[LinkedPhoneNumber] 
	,[FactProcessTransaction].[MerchantConfirmationCode] 
	,[FactProcessTransaction].[MerchantCustomerAccountNumber] 
	,[FactProcessTransaction].[OriginalProcessID] 
	,[FactProcessTransaction].[PaymentSource] 
	,[FactProcessTransaction].[ProcessAmount] 
	,[FactProcessTransaction].[ProcessFee] 
	,[FactProcessTransaction].[ReferenceNumber] 
	,[FactProcessTransaction].[RequestedProcessChannel] 
	,[FactProcessTransaction].[SenderPhoneNumber] 
	,[FactProcessTransaction].[WithdrawalCode] 

FROM [Activity].[FactProcessTransaction] [FactProcessTransaction]



        
GO
EXECUTE sp_addextendedproperty @name = N'XMLATableType', @value = N'MeasureGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTransaction';

