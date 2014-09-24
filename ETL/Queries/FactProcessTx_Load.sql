--FactProcessTx
SELECT	
	SourceKey=COALESCE(base_query.SourceKey,change_log.change_log_SourceKey),
	change_operation=COALESCE(CONVERT(CHAR(1),change_log.change_operation),'I'),
	AgentCommissionAmount, 
	ATMReferenceNumber, 
	CardProcessorName, 
	CustomerBillerAccount, 
	CustomerPhoneNumber, 
	DepositNumber, 
	IntegrationReferenceNumber, 
	LinkedPhoneNumber, 
	MerchantConfirmationCode, 
	MerchantCustomerAccountNumber, 
	PaymentSource, 
	ProcessAmount=Amount, 
	base_query.ProcessCode, 
	ProcessFee=Fee, 
	base_query.ReferenceNumber, 
	base_query.SenderPhoneNumber, 
	base_query.VerificationStatus, 
	base_query.WithdrawalCode, 
	DimCompletedDateID=CONVERT(INT,CONVERT(VARCHAR(8),CreatedDate,112)), 
	DimCompletedTimeID=CONVERT(INT,REPLACE(CONVERT(VARCHAR(8), CreatedDate, 114),':','')),
	DimCreatedDateID=CONVERT(INT,CONVERT(VARCHAR(8),CreatedDate,112)),  
	DimCreatedTimeID=CONVERT(INT,REPLACE(CONVERT(VARCHAR(8), CreatedDate, 114),':','')),
	DimStartedDateID=CONVERT(INT,CONVERT(VARCHAR(8),StartedTimestamp,112)),  
	DimStartedTimeID=CONVERT(INT,REPLACE(CONVERT(VARCHAR(8), StartedTimestamp, 114),':','')),
	DependentFactProcessTxSourceKey, 
	DimAgentCommissionTypeSourceKey=AgentCommissionTypeId, 
	DimApprovedByUserSourceKey, 
	DimCancellationApprovedByUserSourceKey, 
	DimChannelSourceKey=ProcessChannelId, 
	DimInitiatingUserSourceKey=UserId,
	DimOnBehalffUserSourceKey=ForUserId, 
	DimProcessStatusSourceKey=ProcessStatusId, 
	DimProcessTypeSourceKey=ProcessTypeId, 
	DimReceivingUserSourceKey =ToUserId,
	DimVerifiedByUserSourceKey,
	OriginalFactProcessTxSourceKey
FROM
(
	SELECT
		SourceKey=p.ProcessId,p.*,pd_pivot.*
	FROM dbo.Process AS p
	CROSS APPLY
	(
		SELECT
			WithdrawalCode=MAX(CASE WHEN pd.Name='WithdrawalCode' THEN CONVERT(VARCHAR(200),pd.value) END),
			ATMReferenceNumber=MAX(CASE WHEN pd.Name='ATMReferenceNumber' THEN CONVERT(VARCHAR(200),pd.value) END),
			CardProcessorName=MAX(CASE WHEN pd.Name='CardProcessorName' THEN CONVERT(VARCHAR(200),pd.value) END), 
			CustomerBillerAccount=MAX(CASE WHEN pd.Name='CustomerBillerAccount' THEN CONVERT(VARCHAR(200),pd.value) END), 
			CustomerPhoneNumber=MAX(CASE WHEN pd.Name='CustomerPhoneNumber' THEN CONVERT(VARCHAR(200),pd.value) END), 
			DepositNumber=MAX(CASE WHEN pd.Name='DepositNumber' THEN CONVERT(VARCHAR(200),pd.value) END), 
			LinkedPhoneNumber=MAX(CASE WHEN pd.Name='LinkedPhoneNumber' THEN CONVERT(VARCHAR(200),pd.value) END), 
			MerchantConfirmationCode=MAX(CASE WHEN pd.Name='MerchantConfirmationCode' THEN CONVERT(VARCHAR(200),pd.value) END), 
			MerchantCustomerAccountNumber=MAX(CASE WHEN pd.Name='MerchantCustomerAccountNumber' THEN CONVERT(VARCHAR(200),pd.value) END), 
			PaymentSource=MAX(CASE WHEN pd.Name='PaymentSource' THEN CONVERT(VARCHAR(200),pd.value) END), 
			ReferenceNumber=MAX(CASE WHEN pd.Name='ReferenceNumber' THEN CONVERT(VARCHAR(200),pd.value) END), 
			RequestedProcessChannel=MAX(CASE WHEN pd.Name='RequestedProcessChannel' THEN CONVERT(VARCHAR(200),pd.value) END), 
			SenderPhoneNumber=MAX(CASE WHEN pd.Name='SenderPhoneNumber' THEN CONVERT(VARCHAR(200),pd.value) END),
			DependentFactProcessTxSourceKey=MAX(CASE WHEN pd.Name='dependentProcessId' THEN CONVERT(INT,pd.value) END),
			OriginalFactProcessTxSourceKey=MAX(CASE WHEN pd.Name='originalProcessId' THEN CONVERT(INT,pd.value) END),
			VerificationStatus=MAX(CASE WHEN pd.Name='verificationStatus' THEN CONVERT(VARCHAR(200),pd.value) END),
			DimVerifiedByUserSourceKey=MAX(CASE WHEN pd.Name='verifiedByUserId' THEN CONVERT(INT,pd.value) END),
			IntegrationReferenceNumber= MAX(CASE WHEN pd.Name='integrationTransactionId' THEN CONVERT(VARCHAR(200),pd.value) END),
			DimApprovedByUserSourceKey= MAX(CASE WHEN pd.Name='approvedByUserId' THEN CONVERT(INT,pd.value) END),
			DimCancellationApprovedByUserSourceKey=MAX(CASE WHEN pd.Name='cancelledByUserId' THEN CONVERT(INT,pd.value) END)
		FROM dbo.ProcessData AS pd
		WHERE 
			pd.ProcessId=p.ProcessId
	) AS pd_pivot
) AS base_query

	