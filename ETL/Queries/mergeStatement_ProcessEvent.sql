
MERGE  Paga_EDW.shared.factProcessEvent AS Target
USING 
(
		SELECT
				x.*
		FROM
		(
			SELECT
				ROW_NUMBER() OVER (PARTITION BY stg.SourceKey ORDER BY stg.SYS_CHANGE_VERSION DESC) AS rn,
				stg.*
			FROM Paga_Staging.Updates.Shared_FactProcessEvent AS stg
			--INNER JOIN
			--(
			--SELECT DISTINCT SourceKey from Paga_Staging.staging.Shared_FactProcessEvent 
			--EXCEPT
			--SELECT edw.sourcekey FROM Shared.FactProcessEvent as edw
			--) AS list ON 
			--	stg.sourcekey = list.sourcekey
		) as x
		WHERE x.rn = 1

) AS Source ON 
	Target.sourcekey = Source.sourcekey


WHEN MATCHED  
THEN
	UPDATE SET 
	Target.DimProcessTypeID = Source.DimProcessTypeID,Target.DimUserID = Source.DimUserID,Target.DimForUserID = Source.DimForUserID,Target.DimToUserID = Source.DimToUserID,Target.DimInitiatingUserID = Source.DimInitiatingUserID,Target.DimProcessChannelID = Source.DimProcessChannelID,Target.DimRequestedProcessChannelID = Source.DimRequestedProcessChannelID,Target.DimProcessStatusID = Source.DimProcessStatusID,Target.HasFinancialTransaction = Source.HasFinancialTransaction,Target.DimStartedDateID = Source.DimStartedDateID,Target.DimStartedTimeID = Source.DimStartedTimeID,Target.DimCompletedDateID = Source.DimCompletedDateID,Target.DimCompletedTimeID = Source.DimCompletedTimeID,Target.ProcessAmount = Source.ProcessAmount,Target.ProcessFee = Source.ProcessFee,Target.DimAgentCommissionTypeID = Source.DimAgentCommissionTypeID,Target.AgentCommissionAmount = Source.AgentCommissionAmount,Target.ProcessCode = Source.ProcessCode,Target.WithdrawalCode = Source.WithdrawalCode,Target.ATMReferenceNumber = Source.ATMReferenceNumber,Target.CardProcessorName = Source.CardProcessorName,Target.CustomerBillerAccount = Source.CustomerBillerAccount,Target.CustomerPhoneNumber = Source.CustomerPhoneNumber,Target.DepositNumber = Source.DepositNumber,Target.LinkedPhoneNumber = Source.LinkedPhoneNumber,Target.MerchantConfirmationCode = Source.MerchantConfirmationCode,Target.MerchantCustomerAccountNumber = Source.MerchantCustomerAccountNumber,Target.PaymentSource = Source.PaymentSource,Target.ReferenceNumber = Source.ReferenceNumber,Target.SenderPhoneNumber = Source.SenderPhoneNumber,Target.FactDependentProcessEventID = Source.FactDependentProcessEventID,Target.FactOriginalProcessEventID = Source.FactOriginalProcessEventID,Target.VerificationStatus = Source.VerificationStatus,Target.DimApprovedByUserID = Source.DimApprovedByUserID,Target.DimVerifiedByUserID = Source.DimVerifiedByUserID,Target.DimCancellationApprovedByUserID = Source.DimCancellationApprovedByUserID,Target.IntegrationReferenceNumber = Source.IntegrationReferenceNumber,Target.SYS_CHANGE_VERSION = Source.SYS_CHANGE_VERSION,Target.SYS_CHANGE_OPERATION = Source.SYS_CHANGE_OPERATION
WHEN NOT MATCHED BY TARGET
THEN
	INSERT 
	(
		SourceKey,DimProcessTypeID,DimUserID,DimForUserID,DimToUserID,DimInitiatingUserID,DimProcessChannelID,DimRequestedProcessChannelID,DimProcessStatusID,HasFinancialTransaction,DimStartedDateID,DimStartedTimeID,DimCompletedDateID,DimCompletedTimeID,ProcessAmount,ProcessFee,DimAgentCommissionTypeID,AgentCommissionAmount,ProcessCode,WithdrawalCode,ATMReferenceNumber,CardProcessorName,CustomerBillerAccount,CustomerPhoneNumber,DepositNumber,LinkedPhoneNumber,MerchantConfirmationCode,MerchantCustomerAccountNumber,PaymentSource,ReferenceNumber,SenderPhoneNumber,FactDependentProcessEventID,FactOriginalProcessEventID,VerificationStatus,DimApprovedByUserID,DimVerifiedByUserID,DimCancellationApprovedByUserID,IntegrationReferenceNumber,SYS_CHANGE_VERSION,SYS_CHANGE_OPERATION
	)
	VALUES 
	(
		Source.SourceKey, Source.DimProcessTypeID,Source.DimUserID,Source.DimForUserID,Source.DimToUserID,Source.DimInitiatingUserID,Source.DimProcessChannelID,Source.DimRequestedProcessChannelID,Source.DimProcessStatusID,Source.HasFinancialTransaction,Source.DimStartedDateID,Source.DimStartedTimeID,Source.DimCompletedDateID,Source.DimCompletedTimeID,Source.ProcessAmount,Source.ProcessFee,Source.DimAgentCommissionTypeID,Source.AgentCommissionAmount,Source.ProcessCode,Source.WithdrawalCode,Source.ATMReferenceNumber,Source.CardProcessorName,Source.CustomerBillerAccount,Source.CustomerPhoneNumber,Source.DepositNumber,Source.LinkedPhoneNumber,Source.MerchantConfirmationCode,Source.MerchantCustomerAccountNumber,Source.PaymentSource,Source.ReferenceNumber,Source.SenderPhoneNumber,Source.FactDependentProcessEventID,Source.FactOriginalProcessEventID,Source.VerificationStatus,Source.DimApprovedByUserID,Source.DimVerifiedByUserID,Source.DimCancellationApprovedByUserID,Source.IntegrationReferenceNumber,Source.SYS_CHANGE_VERSION,Source.SYS_CHANGE_OPERATION
	);