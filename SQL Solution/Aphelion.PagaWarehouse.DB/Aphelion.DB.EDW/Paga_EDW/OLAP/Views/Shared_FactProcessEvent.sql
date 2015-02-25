



	
CREATE VIEW [OLAP].[Shared_FactProcessEvent] AS
	(
		SELECT 
			edw.FactProcessEventID,
			
			edw.SourceKey,
			edw.DimProcessTypeID,
			edw.DimUserID,
			edw.DimForUserID,
			edw.DimToUserID,
			edw.DimInitiatingUserID,
			edw.DimProcessChannelID,
			edw.DimRequestedProcessChannelID,
			edw.DimProcessStatusID,
			edw.DimStartedDateID,
			edw.DimStartedTimeID,
			edw.DimCompletedDateID,
			edw.DimCompletedTimeID,
			ProcessTx_Amount = edw.ProcessAmount,
			edw.ProcessFee,
			edw.DimAgentCommissionTypeID,
			edw.AgentCommissionAmount,
			edw.ProcessCode,
			HasFinancialTransaction= CASE WHEN ft.HasFinancialTransaction IS NULL THEN 0 ELSE 1 END,
			edw.WithdrawalCode,edw.ATMReferenceNumber,edw.CardProcessorName,edw.CustomerBillerAccount,edw.CustomerPhoneNumber,edw.DepositNumber,edw.LinkedPhoneNumber,edw.MerchantConfirmationCode,edw.MerchantCustomerAccountNumber,edw.PaymentSource,edw.ReferenceNumber,edw.SenderPhoneNumber,edw.FactDependentProcessEventID,edw.FactOriginalProcessEventID,edw.VerificationStatus,edw.DimApprovedByUserID,edw.DimVerifiedByUserID,edw.DimCancellationApprovedByUserID,edw.IntegrationReferenceNumber
		FROM Shared.FactProcessEvent AS edw
		OUTER APPLY
		(
			SELECT TOP 1 
				ft.FactFinancialTxID AS HasFinancialTransaction
			FROM Finance.FactFinancialTransaction AS ft 
			WHERE	
				edw.FactProcessEventID = ft.FactProcessEventID
				AND edw.ProcessAmount = ft.FinancialTx_Amount
			ORDER BY
				ft.FactFinancialTxID
		) AS ft
		WHERE edw.IsActive = 1
	);