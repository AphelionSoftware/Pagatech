    

CREATE VIEW [OLAP].[FactProcessTransaction]
AS

SELECT 
	[FactProcessTransaction].[FactProcessTransactionID] 
	,[FactProcessTransaction].[AgentCommissionAmount] 
	,[FactProcessTransaction].[ATMReferenceNumber] 
	,[FactProcessTransaction].[CardProcessorName] 
	,[FactProcessTransaction].[CustomerBillerAccount] 
	,[FactProcessTransaction].[CustomerPhoneNumber] 
	,[FactProcessTransaction].[DepositNumber] 
	,[FactProcessTransaction].[LinkedPhoneNumber] 
	,[FactProcessTransaction].[MerchantConfirmationCode] 
	,[FactProcessTransaction].[MerchantCustomerAccountNumber] 
	,[FactProcessTransaction].[PaymentSource] 
	,[FactProcessTransaction].[ProcessAmount] 
	,[FactProcessTransaction].[ProcessFee] 
	,[FactProcessTransaction].[ReferenceNumber] 
	,[FactProcessTransaction].[RequestedProcessChannel] 
	,[FactProcessTransaction].[SenderPhoneNumber] 
	,[FactProcessTransaction].[WithdrawalCode] 
	,[FactProcessTransaction].[DependentFactProcessTransactionID] 
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
	,[FactProcessTransaction].[DimOriginalPayerPagaAccountID] 
	,[FactProcessTransaction].[DimPagaAccountID] 
	,[FactProcessTransaction].[DimProcessStatusID] 
	,[FactProcessTransaction].[DimProcessTypeID] 
	,[FactProcessTransaction].[DimReceivingUserID] 
	,[FactProcessTransaction].[DimStartedDateID] 
	,[FactProcessTransaction].[DimStartedTimeID] 
	,[FactProcessTransaction].[DimTransferDateID] 
	,[FactProcessTransaction].[DimTransferTimeID] 
	,[FactProcessTransaction].[DimVerifiedByUserID] 
	,[FactProcessTransaction].[OriginalFactProcessTransactionID] 

FROM [Activity].[FactProcessTransaction] [FactProcessTransaction]



        