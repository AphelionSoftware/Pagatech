    

CREATE VIEW [OLAP].[FactProcessTx]
AS

SELECT 
	[FactProcessTx].[FactProcessTxID] 
	,[FactProcessTx].[AgentCommissionAmount] 
	,[FactProcessTx].[ATMReferenceNumber] 
	,[FactProcessTx].[CardProcessorName] 
	,[FactProcessTx].[CustomerBillerAccount] 
	,[FactProcessTx].[CustomerPhoneNumber] 
	,[FactProcessTx].[DepositNumber] 
	,[FactProcessTx].[IntegrationReferenceNumber] 
	,[FactProcessTx].[LinkedPhoneNumber] 
	,[FactProcessTx].[MerchantConfirmationCode] 
	,[FactProcessTx].[MerchantCustomerAccountNumber] 
	,[FactProcessTx].[PaymentSource] 
	,[FactProcessTx].[ProcessAmount] 
	,[FactProcessTx].[ProcessCode] 
	,[FactProcessTx].[ProcessFee] 
	,[FactProcessTx].[ReferenceNumber] 
	,[FactProcessTx].[SenderPhoneNumber] 
	,[FactProcessTx].[SourceKey] 
	,[FactProcessTx].[VerificationStatus] 
	,[FactProcessTx].[WithdrawalCode] 
	,[FactProcessTx].[DependentFactProcessTxID] 
	,[FactProcessTx].[DimAgentCommissionTypeID] 
	,[FactProcessTx].[DimApprovedByUserID] 
	,[FactProcessTx].[DimCancellationApprovedByUserID] 
	,[FactProcessTx].[DimChannelID] 
	,[FactProcessTx].[DimCompletedDateID] 
	,[FactProcessTx].[DimCompletedTimeID] 
	,[FactProcessTx].[DimCreatedDateID] 
	,[FactProcessTx].[DimCreatedTimeID] 
	,[FactProcessTx].[DimInitiatingUserID] 
	,[FactProcessTx].[DimOnBehalffUserID] 
	,[FactProcessTx].[DimProcessStatusID] 
	,[FactProcessTx].[DimProcessTypeID] 
	,[FactProcessTx].[DimReceivingUserID] 
	,[FactProcessTx].[DimStartedDateID] 
	,[FactProcessTx].[DimStartedTimeID] 
	,[FactProcessTx].[DimVerifiedByUserID] 
	,[FactProcessTx].[OriginalFactProcessTxID] 

FROM [Activity].[FactProcessTx] [FactProcessTx]
GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'OriginalFactProcessTxID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'OriginalFactProcessTxID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'OriginalFactProcessTxID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'OriginalFactProcessTxID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'DimVerifiedByUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'DimVerifiedByUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimVerifiedByUserID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'DimVerifiedByUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'DimStartedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'DimStartedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimStartedTimeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'DimStartedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'DimStartedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'DimStartedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimStartedDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'DimStartedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'DimReceivingUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'DimReceivingUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimReceivingUserID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'DimReceivingUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'DimProcessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'DimProcessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimProcessTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'DimProcessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'DimProcessStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'DimProcessStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimProcessStatusID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'DimProcessStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'DimOnBehalffUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'DimOnBehalffUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimOnBehalffUserID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'DimOnBehalffUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'DimInitiatingUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'DimInitiatingUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimInitiatingUserID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'DimInitiatingUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'DimCreatedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'DimCreatedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimCreatedTimeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'DimCreatedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'DimCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'DimCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimCreatedDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'DimCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'DimCompletedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'DimCompletedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimCompletedTimeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'DimCompletedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'DimCompletedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'DimCompletedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimCompletedDateID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'DimCompletedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'DimChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'DimChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimChannelID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'DimChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'DimCancellationApprovedByUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'DimCancellationApprovedByUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimCancellationApprovedByUserID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'DimCancellationApprovedByUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'DimApprovedByUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'DimApprovedByUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimApprovedByUserID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'DimApprovedByUserID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'DimAgentCommissionTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'DimAgentCommissionTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimAgentCommissionTypeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'DimAgentCommissionTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'DependentFactProcessTxID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'DependentFactProcessTxID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DependentFactProcessTxID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'DependentFactProcessTxID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'WithdrawalCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'WithdrawalCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'WithdrawalCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'WithdrawalCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'VerificationStatus';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'VerificationStatus';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'VerificationStatus', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'VerificationStatus';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SourceKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'SourceKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'SenderPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'SenderPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SenderPhoneNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'SenderPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'ReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'ReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ReferenceNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'ReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'ProcessFee';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'ProcessFee';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ProcessFee', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'ProcessFee';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'ProcessCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'ProcessCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ProcessCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'ProcessCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'ProcessAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'ProcessAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ProcessAmount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'ProcessAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'PaymentSource';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'PaymentSource';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'PaymentSource', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'PaymentSource';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'MerchantCustomerAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'MerchantCustomerAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'MerchantCustomerAccountNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'MerchantCustomerAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'MerchantConfirmationCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'MerchantConfirmationCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'MerchantConfirmationCode', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'MerchantConfirmationCode';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'LinkedPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'LinkedPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'LinkedPhoneNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'LinkedPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'IntegrationReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'IntegrationReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IntegrationReferenceNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'IntegrationReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'DepositNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'DepositNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DepositNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'DepositNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'CustomerPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'CustomerPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'CustomerPhoneNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'CustomerPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'CustomerBillerAccount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'CustomerBillerAccount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'CustomerBillerAccount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'CustomerBillerAccount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'CardProcessorName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'CardProcessorName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'CardProcessorName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'CardProcessorName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'ATMReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'ATMReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'ATMReferenceNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'ATMReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'FactProcessTx', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'AgentCommissionAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Activity', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'AgentCommissionAmount';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'AgentCommissionAmount', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx', @level2type = N'COLUMN', @level2name = N'AgentCommissionAmount';


GO
EXECUTE sp_addextendedproperty @name = N'XMLATableType', @value = N'MeasureGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx';


GO
EXECUTE sp_addextendedproperty @name = N'ExcludeFromCube', @value = N'True', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'FactProcessTx';

