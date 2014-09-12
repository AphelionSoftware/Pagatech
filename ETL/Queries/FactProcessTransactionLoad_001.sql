SELECT
	SourceKey = p.ProcessId, 
	ProcessAmount = p.Amount, 
	ProcessFee = p.Fee, 
	DimCompletedDateID = p.CompletedTimestamp, 
	DimCompletedTimeID = p.CompletedTimestamp, 
	DimCreatedDateID = p.CreatedDate, 
	DimCreatedTimeID = p.CreatedDate,
	DimStartedDateID = p.StartedTimestamp, 
	DimStartedTimeID = p.StartedTimestamp, 
	DimInitiatingUserSourceKey = p.UserId,
	DimOnBehalffUserSourceKey = p.ForUserId, 
	DimReceivingUserSourceKey =p.ToUserId,
	DimChannelSourceKey = p.ProcessChannelId, 
	p.ProcessCode, 
	DimProcessStatusSourceKey = p.ProcessStatusId, 
	DimProcessTypeSourceKey = p.ProcessTypeId, 
	AgentCommissionAmount = p.AgentCommissionAmount, 
	DimAgentCommissionTypeSourceKey = p.AgentCommissionTypeId,
	pd_pivot.*
FROM dbo.Process AS p
CROSS APPLY
(
	SELECT
		WithdrawalCode = MAX(CASE WHEN pd.Name = 'WithdrawalCode' THEN pd.value END),
		ATMReferenceNumber = MAX(CASE WHEN pd.Name = 'ATMReferenceNumber' THEN pd.value END),
		CardProcessorName= MAX(CASE WHEN pd.Name = 'CardProcessorName' THEN pd.value END), 
		CustomerBillerAccount= MAX(CASE WHEN pd.Name = 'CustomerBillerAccount' THEN pd.value END), 
		CustomerPhoneNumber= MAX(CASE WHEN pd.Name = 'CustomerPhoneNumber' THEN pd.value END), 
		DepositNumber= MAX(CASE WHEN pd.Name = 'DepositNumber' THEN pd.value END), 
		LinkedPhoneNumber= MAX(CASE WHEN pd.Name = 'LinkedPhoneNumber' THEN pd.value END), 
		MerchantConfirmationCode= MAX(CASE WHEN pd.Name = 'MerchantConfirmationCode' THEN pd.value END), 
		MerchantCustomerAccountNumber= MAX(CASE WHEN pd.Name = 'MerchantCustomerAccountNumber' THEN pd.value END), 
		PaymentSource= MAX(CASE WHEN pd.Name = 'PaymentSource' THEN pd.value END), 
		ReferenceNumber= MAX(CASE WHEN pd.Name = 'ReferenceNumber' THEN pd.value END), 
		RequestedProcessChannel= MAX(CASE WHEN pd.Name = 'RequestedProcessChannel' THEN pd.value END), 
		SenderPhoneNumber= MAX(CASE WHEN pd.Name = 'SenderPhoneNumber' THEN pd.value END),
		dependentProcessId = MAX(CASE WHEN pd.Name = 'dependentProcessId' THEN pd.value END),
		merchantPagaAccountId = MAX(CASE WHEN pd.Name = 'merchantPagaAccountId' THEN pd.value END),
		organizationId = MAX(CASE WHEN pd.Name = 'merchantPagaAccountId' THEN pd.value END),
		originalProcessId = MAX(CASE WHEN pd.Name = 'originalProcessId' THEN pd.value END),
		pagaAccountId = MAX(CASE WHEN pd.Name = 'pagaAccountId' THEN pd.value END),
		verificationStatus = MAX(CASE WHEN pd.Name = 'verificationStatus' THEN pd.value END),
		verifiedByUserId = MAX(CASE WHEN pd.Name = 'verifiedByUserId' THEN pd.value END),
		integrationTransactionId =  MAX(CASE WHEN pd.Name = 'integrationTransactionId' THEN pd.value END)
	FROM dbo.ProcessData AS pd
	WHERE 
		pd.ProcessId = p.ProcessId
) AS pd_pivot 