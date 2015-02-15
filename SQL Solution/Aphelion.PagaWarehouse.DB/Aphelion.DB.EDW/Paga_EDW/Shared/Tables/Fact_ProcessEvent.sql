CREATE TABLE [Shared].[FactProcessEvent] (
    [FactProcessEventID]              INT                    IDENTITY (1, 1) NOT NULL,
    [SourceKey]                       INT                    NOT NULL,
    [DimProcessTypeID]                INT                    NULL,
    [DimUserID]                       INT                    NULL,
    [DimForUserID]                    INT                    NULL,
    [DimToUserID]                     INT                    NULL,
    [DimInitiatingUserID]             INT                    NULL,
    [DimProcessChannelID]             INT                    NOT NULL,
    [DimRequestedProcessChannelID]    INT                    NULL,
    [DimProcessStatusID]              INT                    NULL,
    [HasFinancialTransaction]         BIT                    NULL,
    [DimStartedDateID]                INT                    NULL,
    [DimStartedTimeID]                INT                    NULL,
    [DimCompletedDateID]              INT                    NULL,
    [DimCompletedTimeID]              INT                    NULL,
    [ProcessAmount]                   DECIMAL (18, 2)        NULL,
    [ProcessFee]                      DECIMAL (18, 2)        NULL,
    [DimAgentCommissionTypeID]        INT SPARSE             NULL,
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
    [FactDependentProcessEventID]     INT SPARSE             NULL,
    [FactOriginalProcessEventID]      INT SPARSE             NULL,
    [VerificationStatus]              VARCHAR (200) SPARSE   NULL,
    [DimApprovedByUserID]             INT SPARSE             NULL,
    [DimVerifiedByUserID]             INT SPARSE             NULL,
    [DimCancellationApprovedByUserID] INT SPARSE             NULL,
    [IntegrationReferenceNumber]      VARCHAR (200) SPARSE   NULL,
    [SourceKeyHash]                   BIGINT                 NULL,
    [DeltaHash]                       BIGINT                 NULL,
    [sys_CreatedBy]                   VARCHAR (255)          DEFAULT (user_name()) NOT NULL,
    [sys_CreatedOn]                   DATETIME               DEFAULT (getdate()) NOT NULL,
    [sys_ModifiedBy]                  VARCHAR (255)          DEFAULT (user_name()) NOT NULL,
    [sys_ModifiedOn]                  DATETIME               DEFAULT (getdate()) NOT NULL,
    [IsActive]                        BIT                    DEFAULT ((1)) NOT NULL,
    CONSTRAINT [pk_FactProcessEvent] PRIMARY KEY CLUSTERED ([FactProcessEventID] ASC),
    CONSTRAINT [fk_FactFinancialTransaction_DimAgentCommissionTypeID] FOREIGN KEY ([DimAgentCommissionTypeID]) REFERENCES [Classification].[DimAgentCommissionType] ([DimAgentCommissionTypeID]),
    CONSTRAINT [fk_FactFinancialTransaction_DimApprovedByUserID] FOREIGN KEY ([DimApprovedByUserID]) REFERENCES [Shared].[DimUser] ([DimUserID]),
    CONSTRAINT [fk_FactFinancialTransaction_DimCancellationApprovedByUserID] FOREIGN KEY ([DimCancellationApprovedByUserID]) REFERENCES [Shared].[DimUser] ([DimUserID]),
    CONSTRAINT [fk_FactFinancialTransaction_DimCompletedDateID] FOREIGN KEY ([DimCompletedDateID]) REFERENCES [Shared].[DimDate] ([DimDateID]),
    CONSTRAINT [fk_FactFinancialTransaction_DimCompletedTimeID] FOREIGN KEY ([DimCompletedTimeID]) REFERENCES [Shared].[DimTime] ([DimTimeID]),
    CONSTRAINT [fk_FactFinancialTransaction_DimForUserID] FOREIGN KEY ([DimForUserID]) REFERENCES [Shared].[DimUser] ([DimUserID]),
    CONSTRAINT [fk_FactFinancialTransaction_DimInitiatingUserID] FOREIGN KEY ([DimInitiatingUserID]) REFERENCES [Shared].[DimUser] ([DimUserID]),
    CONSTRAINT [fk_FactFinancialTransaction_DimOriginalProcessChannelID] FOREIGN KEY ([DimRequestedProcessChannelID]) REFERENCES [Classification].[DimProcessChannel] ([DimProcessChannelID]),
    CONSTRAINT [fk_FactFinancialTransaction_DimProcessChannelID] FOREIGN KEY ([DimProcessChannelID]) REFERENCES [Classification].[DimProcessChannel] ([DimProcessChannelID]),
    CONSTRAINT [fk_FactFinancialTransaction_DimProcessStatusID] FOREIGN KEY ([DimProcessStatusID]) REFERENCES [Classification].[DimProcessStatus] ([DimProcessStatusID]),
    CONSTRAINT [fk_FactFinancialTransaction_DimProcessTypeID] FOREIGN KEY ([DimProcessTypeID]) REFERENCES [Classification].[DimProcessType] ([DimProcessTypeID]),
    CONSTRAINT [fk_FactFinancialTransaction_DimStartedDateID] FOREIGN KEY ([DimStartedDateID]) REFERENCES [Shared].[DimDate] ([DimDateID]),
    CONSTRAINT [fk_FactFinancialTransaction_DimStartedTimeID] FOREIGN KEY ([DimStartedTimeID]) REFERENCES [Shared].[DimTime] ([DimTimeID]),
    CONSTRAINT [fk_FactFinancialTransaction_DimToUserID] FOREIGN KEY ([DimToUserID]) REFERENCES [Shared].[DimUser] ([DimUserID]),
    CONSTRAINT [fk_FactFinancialTransaction_DimUserID] FOREIGN KEY ([DimUserID]) REFERENCES [Shared].[DimUser] ([DimUserID]),
    CONSTRAINT [fk_FactFinancialTransaction_DimVerifiedByUserID] FOREIGN KEY ([DimVerifiedByUserID]) REFERENCES [Shared].[DimUser] ([DimUserID]),
    CONSTRAINT [fk_FactFinancialTransaction_FactDependentProcessEventID] FOREIGN KEY ([FactDependentProcessEventID]) REFERENCES [Shared].[FactProcessEvent] ([FactProcessEventID]),
    CONSTRAINT [fk_FactFinancialTransaction_FactOriginalProcessEventID] FOREIGN KEY ([FactOriginalProcessEventID]) REFERENCES [Shared].[FactProcessEvent] ([FactProcessEventID])
);


















GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'dbo.Process', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'FactProcessEvent';


GO
EXECUTE sp_addextendedproperty @name = N'LoadOrder', @value = N'12', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'FactProcessEvent';




GO
EXECUTE sp_addextendedproperty @name = N'LoadGroup', @value = N'3000', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'FactProcessEvent';






GO
EXECUTE sp_addextendedproperty @name = N'KeyColumn', @value = N'ProcessId', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'FactProcessEvent';


GO
EXECUTE sp_addextendedproperty @name = N'BaseQuery', @value = N'PlaceHolder', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'FactProcessEvent';


GO
EXECUTE sp_addextendedproperty @name = N'UpdateQuery', @value = N'UPDATE edw 
	SET 
	edw.SourceKey = stg.SourceKey,edw.DimProcessTypeID = stg.DimProcessTypeID,edw.DimUserID = stg.DimUserID,edw.DimForUserID = stg.DimForUserID,edw.DimToUserID = stg.DimToUserID,edw.DimInitiatingUserID = stg.DimInitiatingUserID,edw.DimProcessChannelID = stg.DimProcessChannelID,edw.DimRequestedProcessChannelID = stg.DimRequestedProcessChannelID,edw.DimProcessStatusID = stg.DimProcessStatusID,edw.HasFinancialTransaction = stg.HasFinancialTransaction,edw.DimStartedDateID = stg.DimStartedDateID,edw.DimStartedTimeID = stg.DimStartedTimeID,edw.DimCompletedDateID = stg.DimCompletedDateID,edw.DimCompletedTimeID = stg.DimCompletedTimeID,edw.ProcessAmount = stg.ProcessAmount,edw.ProcessFee = stg.ProcessFee,edw.DimAgentCommissionTypeID = stg.DimAgentCommissionTypeID,edw.AgentCommissionAmount = stg.AgentCommissionAmount,edw.ProcessCode = stg.ProcessCode,edw.WithdrawalCode = stg.WithdrawalCode,edw.ATMReferenceNumber = stg.ATMReferenceNumber,edw.CardProcessorName = stg.CardProcessorName,edw.CustomerBillerAccount = stg.CustomerBillerAccount,edw.CustomerPhoneNumber = stg.CustomerPhoneNumber,edw.DepositNumber = stg.DepositNumber,edw.LinkedPhoneNumber = stg.LinkedPhoneNumber,edw.MerchantConfirmationCode = stg.MerchantConfirmationCode,edw.MerchantCustomerAccountNumber = stg.MerchantCustomerAccountNumber,edw.PaymentSource = stg.PaymentSource,edw.ReferenceNumber = stg.ReferenceNumber,edw.SenderPhoneNumber = stg.SenderPhoneNumber,edw.FactDependentProcessEventID = stg.FactDependentProcessEventID,edw.FactOriginalProcessEventID = stg.FactOriginalProcessEventID,edw.VerificationStatus = stg.VerificationStatus,edw.DimApprovedByUserID = stg.DimApprovedByUserID,edw.DimVerifiedByUserID = stg.DimVerifiedByUserID,edw.DimCancellationApprovedByUserID = stg.DimCancellationApprovedByUserID,edw.IntegrationReferenceNumber = stg.IntegrationReferenceNumber
	FROM Shared.FactProcessEvent AS edw
	INNER JOIN Paga_Staging.Updates.Shared_FactProcessEvent AS stg ON
		edw.SourceKey = stg.SourceKey;
	GO', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'FactProcessEvent';

