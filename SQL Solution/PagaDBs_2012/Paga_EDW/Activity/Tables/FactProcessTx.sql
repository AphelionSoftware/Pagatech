CREATE TABLE [Activity].[FactProcessTx] (
    [FactProcessTxID]                 INT                    NOT NULL,
    [SourceKey]                       INT                    NOT NULL,
    [DimCreatedDateID]                INT                    NOT NULL,
    [DimCreatedTimeID]                INT                    NOT NULL,
    [DimStartedDateID]                INT                    NOT NULL,
    [DimStartedTimeID]                INT                    NOT NULL,
    [DimCompletedDateID]              INT                    NULL,
    [DimCompletedTimeID]              INT                    NULL,
    [DimInitiatingUserID]             INT                    NULL,
    [DimOnBehalffUserID]              INT                    NULL,
    [DimReceivingUserID]              INT                    NULL,
    [DimChannelID]                    INT                    NOT NULL,
    [DimProcessStatusID]              INT                    NOT NULL,
    [DimProcessTypeID]                INT                    NOT NULL,
    [DimAgentCommissionTypeID]        INT SPARSE             NULL,
    [ProcessAmount]                   DECIMAL (18, 2)        NULL,
    [ProcessFee]                      DECIMAL (18, 2)        NULL,
    [AgentCommissionAmount]           DECIMAL (18, 2) SPARSE NULL,
    [ProcessCode]                     VARCHAR (36)           NOT NULL,
    [WithdrawalCode]                  VARCHAR (200) SPARSE   NULL,
    [ATMReferenceNumber]              VARCHAR (200) SPARSE   NULL,
    [CardProcessorName]               VARCHAR (200) SPARSE   NULL,
    [CustomerBillerAccount]           VARCHAR (200) SPARSE   NULL,
    [CustomerPhoneNumber]             VARCHAR (200) SPARSE   NULL,
    [DepositNumber]                   VARCHAR (200) SPARSE   NULL,
    [LinkedPhoneNumber]               VARCHAR (200) SPARSE   NULL,
    [MerchantConfirmationCode]        VARCHAR (200) SPARSE   NULL,
    [MerchantCustomerAccountNumber]   VARCHAR (200) SPARSE   NULL,
    [PaymentSource]                   VARCHAR (200) SPARSE   NULL,
    [ReferenceNumber]                 VARCHAR (200) SPARSE   NULL,
    [SenderPhoneNumber]               VARCHAR (200) SPARSE   NULL,
    [DependentFactProcessTxID]        INT SPARSE             NULL,
    [OriginalFactProcessTxID]         INT SPARSE             NULL,
    [VerificationStatus]              VARCHAR (200) SPARSE   NULL,
    [DimApprovedByUserID]             INT SPARSE             NULL,
    [DimVerifiedByUserID]             INT SPARSE             NULL,
    [DimCancellationApprovedByUserID] INT SPARSE             NULL,
    [IntegrationReferenceNumber]      VARCHAR (200) SPARSE   NULL,
    CONSTRAINT [pk_FactProcessTxID] PRIMARY KEY CLUSTERED ([FactProcessTxID] ASC),
    CONSTRAINT [fk_FactProcessTx_DependentProcessID] FOREIGN KEY ([DependentFactProcessTxID]) REFERENCES [Activity].[FactProcessTx] ([FactProcessTxID]),
    CONSTRAINT [fk_FactProcessTx_DimAgentCommissionTypeID] FOREIGN KEY ([DimAgentCommissionTypeID]) REFERENCES [Classification].[DimAgentCommissionType] ([DimAgentCommissionTypeID]),
    CONSTRAINT [fk_FactProcessTx_DimApprovedByUserID] FOREIGN KEY ([DimApprovedByUserID]) REFERENCES [Shared].[DimUser] ([DimUserID]),
    CONSTRAINT [fk_FactProcessTx_DimCancellationApprovedByUserID] FOREIGN KEY ([DimCancellationApprovedByUserID]) REFERENCES [Shared].[DimUser] ([DimUserID]),
    CONSTRAINT [fk_FactProcessTx_DimChannelID] FOREIGN KEY ([DimChannelID]) REFERENCES [Activity].[DimChannel] ([DimChannelID]),
    CONSTRAINT [fk_FactProcessTx_DimCompletedDateID] FOREIGN KEY ([DimCompletedDateID]) REFERENCES [Shared].[DimDate] ([DimDateID]),
    CONSTRAINT [fk_FactProcessTx_DimCompletedTimeID] FOREIGN KEY ([DimCompletedTimeID]) REFERENCES [Shared].[DimTime] ([DimTimeID]),
    CONSTRAINT [fk_FactProcessTx_DimCreatedDateID] FOREIGN KEY ([DimCreatedDateID]) REFERENCES [Shared].[DimDate] ([DimDateID]),
    CONSTRAINT [fk_FactProcessTx_DimCreatedTimeID] FOREIGN KEY ([DimCreatedTimeID]) REFERENCES [Shared].[DimTime] ([DimTimeID]),
    CONSTRAINT [fk_FactProcessTx_DimInitiatingUserID] FOREIGN KEY ([DimInitiatingUserID]) REFERENCES [Shared].[DimUser] ([DimUserID]),
    CONSTRAINT [fk_FactProcessTx_DimOnBehalffUserID] FOREIGN KEY ([DimOnBehalffUserID]) REFERENCES [Shared].[DimUser] ([DimUserID]),
    CONSTRAINT [fk_FactProcessTx_DimProcessStatusID] FOREIGN KEY ([DimProcessStatusID]) REFERENCES [Classification].[DimProcessStatus] ([DimProcessStatusID]),
    CONSTRAINT [fk_FactProcessTx_DimProcessTypeID] FOREIGN KEY ([DimProcessTypeID]) REFERENCES [Classification].[DimProcessType] ([DimProcessTypeID]),
    CONSTRAINT [fk_FactProcessTx_DimReceivingUserID] FOREIGN KEY ([DimReceivingUserID]) REFERENCES [Shared].[DimUser] ([DimUserID]),
    CONSTRAINT [fk_FactProcessTx_DimStartedDateID] FOREIGN KEY ([DimStartedDateID]) REFERENCES [Shared].[DimDate] ([DimDateID]),
    CONSTRAINT [fk_FactProcessTx_DimStartedTimeID] FOREIGN KEY ([DimStartedTimeID]) REFERENCES [Shared].[DimTime] ([DimTimeID]),
    CONSTRAINT [fk_FactProcessTx_DimVerifiedByUserID] FOREIGN KEY ([DimVerifiedByUserID]) REFERENCES [Shared].[DimUser] ([DimUserID]),
    CONSTRAINT [fk_FactProcessTx_OriginalProcessID] FOREIGN KEY ([OriginalFactProcessTxID]) REFERENCES [Activity].[FactProcessTx] ([FactProcessTxID])
);


GO



EXECUTE sp_addextendedproperty @name = N'BaseQuery', @value = N'--FactProcessTx
SELECT	
	SourceKey=COALESCE(base_query.SourceKey,change_log.change_log_SourceKey),
	change_operation=COALESCE(CONVERT(CHAR(1),change_log.change_operation),''I''),
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
	DimCompletedTimeID=CONVERT(INT,REPLACE(CONVERT(VARCHAR(8), CreatedDate, 114),'':'','''')),
	DimCreatedDateID=CONVERT(INT,CONVERT(VARCHAR(8),CreatedDate,112)),  
	DimCreatedTimeID=CONVERT(INT,REPLACE(CONVERT(VARCHAR(8), CreatedDate, 114),'':'','''')),
	DimStartedDateID=CONVERT(INT,CONVERT(VARCHAR(8),StartedTimestamp,112)),  
	DimStartedTimeID=CONVERT(INT,REPLACE(CONVERT(VARCHAR(8), StartedTimestamp, 114),'':'','''')),
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
			WithdrawalCode=MAX(CASE WHEN pd.Name=''WithdrawalCode'' THEN CONVERT(VARCHAR(200),pd.value) END),
			ATMReferenceNumber=MAX(CASE WHEN pd.Name=''ATMReferenceNumber'' THEN CONVERT(VARCHAR(200),pd.value) END),
			CardProcessorName=MAX(CASE WHEN pd.Name=''CardProcessorName'' THEN CONVERT(VARCHAR(200),pd.value) END), 
			CustomerBillerAccount=MAX(CASE WHEN pd.Name=''CustomerBillerAccount'' THEN CONVERT(VARCHAR(200),pd.value) END), 
			CustomerPhoneNumber=MAX(CASE WHEN pd.Name=''CustomerPhoneNumber'' THEN CONVERT(VARCHAR(200),pd.value) END), 
			DepositNumber=MAX(CASE WHEN pd.Name=''DepositNumber'' THEN CONVERT(VARCHAR(200),pd.value) END), 
			LinkedPhoneNumber=MAX(CASE WHEN pd.Name=''LinkedPhoneNumber'' THEN CONVERT(VARCHAR(200),pd.value) END), 
			MerchantConfirmationCode=MAX(CASE WHEN pd.Name=''MerchantConfirmationCode'' THEN CONVERT(VARCHAR(200),pd.value) END), 
			MerchantCustomerAccountNumber=MAX(CASE WHEN pd.Name=''MerchantCustomerAccountNumber'' THEN CONVERT(VARCHAR(200),pd.value) END), 
			PaymentSource=MAX(CASE WHEN pd.Name=''PaymentSource'' THEN CONVERT(VARCHAR(200),pd.value) END), 
			ReferenceNumber=MAX(CASE WHEN pd.Name=''ReferenceNumber'' THEN CONVERT(VARCHAR(200),pd.value) END), 
			RequestedProcessChannel=MAX(CASE WHEN pd.Name=''RequestedProcessChannel'' THEN CONVERT(VARCHAR(200),pd.value) END), 
			SenderPhoneNumber=MAX(CASE WHEN pd.Name=''SenderPhoneNumber'' THEN CONVERT(VARCHAR(200),pd.value) END),
			DependentFactProcessTxSourceKey=MAX(CASE WHEN pd.Name=''dependentProcessId'' THEN CONVERT(VARCHAR(200),pd.value) END),
			OriginalFactProcessTxSourceKey=MAX(CASE WHEN pd.Name=''originalProcessId'' THEN CONVERT(VARCHAR(200),pd.value) END),
			VerificationStatus=MAX(CASE WHEN pd.Name=''verificationStatus'' THEN CONVERT(VARCHAR(200),pd.value) END),
			DimVerifiedByUserSourceKey=MAX(CASE WHEN pd.Name=''verifiedByUserId'' THEN CONVERT(VARCHAR(200),pd.value) END),
			IntegrationReferenceNumber= MAX(CASE WHEN pd.Name=''integrationTransactionId'' THEN CONVERT(VARCHAR(200),pd.value) END),
			DimApprove', @level0type = N'SCHEMA', @level0name = N'Activity', @level1type = N'TABLE', @level1name = N'FactProcessTx';


GO

EXEC sys.sp_addextendedproperty @name=N'KeyColumn', @value=N'ProcessId' , @level0type=N'SCHEMA',@level0name=N'Activity', @level1type=N'TABLE',@level1name=N'FactProcessTx'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'dbo.Process' , @level0type=N'SCHEMA',@level0name=N'Activity', @level1type=N'TABLE',@level1name=N'FactProcessTx'
GO






