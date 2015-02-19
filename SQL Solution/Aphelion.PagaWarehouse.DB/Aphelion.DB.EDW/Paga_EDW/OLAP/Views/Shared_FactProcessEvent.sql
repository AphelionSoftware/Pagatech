	
CREATE VIEW OLAP.Shared_FactProcessEvent AS
	(
		SELECT 
			edw.FactProcessEventID,edw.SourceKey,edw.DimProcessTypeID,edw.DimUserID,edw.DimForUserID,edw.DimToUserID,edw.DimInitiatingUserID,edw.DimProcessChannelID,edw.DimRequestedProcessChannelID,edw.DimProcessStatusID,edw.HasFinancialTransaction,edw.DimStartedDateID,edw.DimStartedTimeID,edw.DimCompletedDateID,edw.DimCompletedTimeID,edw.ProcessAmount,edw.ProcessFee,edw.DimAgentCommissionTypeID,edw.AgentCommissionAmount,edw.ProcessCode,edw.WithdrawalCode,edw.ATMReferenceNumber,edw.CardProcessorName,edw.CustomerBillerAccount,edw.CustomerPhoneNumber,edw.DepositNumber,edw.LinkedPhoneNumber,edw.MerchantConfirmationCode,edw.MerchantCustomerAccountNumber,edw.PaymentSource,edw.ReferenceNumber,edw.SenderPhoneNumber,edw.FactDependentProcessEventID,edw.FactOriginalProcessEventID,edw.VerificationStatus,edw.DimApprovedByUserID,edw.DimVerifiedByUserID,edw.DimCancellationApprovedByUserID,edw.IntegrationReferenceNumber
		FROM Shared.FactProcessEvent AS edw
		WHERE edw.IsActive = 1
	);