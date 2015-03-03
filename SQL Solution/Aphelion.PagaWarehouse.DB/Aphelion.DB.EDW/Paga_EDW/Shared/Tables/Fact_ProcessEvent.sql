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
    [sys_CreatedBy]                   VARCHAR (255)          DEFAULT (user_name()) NOT NULL,
    [sys_CreatedOn]                   DATETIME               DEFAULT (getdate()) NOT NULL,
    [sys_ModifiedBy]                  VARCHAR (255)          DEFAULT (user_name()) NOT NULL,
    [sys_ModifiedOn]                  DATETIME               DEFAULT (getdate()) NOT NULL,
    [IsActive]                        BIT                    DEFAULT ((1)) NOT NULL,
    [SYS_CHANGE_VERSION]              BIGINT                 DEFAULT ((0)) NOT NULL,
    [SYS_CHANGE_OPERATION]            CHAR (1)               DEFAULT ('I') NOT NULL,
    CONSTRAINT [pk_FactProcessEvent] PRIMARY KEY CLUSTERED ([FactProcessEventID] ASC),
    CONSTRAINT [fk_FactFinancialTransaction_DimAgentCommissionTypeID] FOREIGN KEY ([DimAgentCommissionTypeID]) REFERENCES [Classification].[DimAgentCommissionType] ([DimAgentCommissionTypeID]),
    CONSTRAINT [fk_FactFinancialTransaction_DimApprovedByUserID] FOREIGN KEY ([DimApprovedByUserID]) REFERENCES [Shared].[DimUser] ([DimUserID]),
    CONSTRAINT [fk_FactFinancialTransaction_DimCancellationApprovedByUserID] FOREIGN KEY ([DimCancellationApprovedByUserID]) REFERENCES [Shared].[DimUser] ([DimUserID]),
    CONSTRAINT [fk_FactFinancialTransaction_DimCompletedTimeID] FOREIGN KEY ([DimCompletedTimeID]) REFERENCES [Shared].[DimTime] ([DimTimeID]),
    CONSTRAINT [fk_FactFinancialTransaction_DimForUserID] FOREIGN KEY ([DimForUserID]) REFERENCES [Shared].[DimUser] ([DimUserID]),
    CONSTRAINT [fk_FactFinancialTransaction_DimInitiatingUserID] FOREIGN KEY ([DimInitiatingUserID]) REFERENCES [Shared].[DimUser] ([DimUserID]),
    CONSTRAINT [fk_FactFinancialTransaction_DimOriginalProcessChannelID] FOREIGN KEY ([DimRequestedProcessChannelID]) REFERENCES [Classification].[DimProcessChannel] ([DimProcessChannelID]),
    CONSTRAINT [fk_FactFinancialTransaction_DimProcessChannelID] FOREIGN KEY ([DimProcessChannelID]) REFERENCES [Classification].[DimProcessChannel] ([DimProcessChannelID]),
    CONSTRAINT [fk_FactFinancialTransaction_DimProcessStatusID] FOREIGN KEY ([DimProcessStatusID]) REFERENCES [Classification].[DimProcessStatus] ([DimProcessStatusID]),
    CONSTRAINT [fk_FactFinancialTransaction_DimProcessTypeID] FOREIGN KEY ([DimProcessTypeID]) REFERENCES [Classification].[DimProcessType] ([DimProcessTypeID]),
    CONSTRAINT [fk_FactFinancialTransaction_DimStartedTimeID] FOREIGN KEY ([DimStartedTimeID]) REFERENCES [Shared].[DimTime] ([DimTimeID]),
    CONSTRAINT [fk_FactFinancialTransaction_DimToUserID] FOREIGN KEY ([DimToUserID]) REFERENCES [Shared].[DimUser] ([DimUserID]),
    CONSTRAINT [fk_FactFinancialTransaction_DimUserID] FOREIGN KEY ([DimUserID]) REFERENCES [Shared].[DimUser] ([DimUserID]),
    CONSTRAINT [fk_FactFinancialTransaction_DimVerifiedByUserID] FOREIGN KEY ([DimVerifiedByUserID]) REFERENCES [Shared].[DimUser] ([DimUserID]),
    CONSTRAINT [fk_FactFinancialTransaction_FactDependentProcessEventID] FOREIGN KEY ([FactDependentProcessEventID]) REFERENCES [Shared].[FactProcessEvent] ([FactProcessEventID]),
    CONSTRAINT [fk_FactFinancialTransaction_FactOriginalProcessEventID] FOREIGN KEY ([FactOriginalProcessEventID]) REFERENCES [Shared].[FactProcessEvent] ([FactProcessEventID]),
    CONSTRAINT [fk_FactProcessEvent_DimCompletedDateID] FOREIGN KEY ([DimCompletedDateID]) REFERENCES [Shared].[DimDate] ([DateID]),
    CONSTRAINT [fk_FactProcessEvent_DimStartedDateID] FOREIGN KEY ([DimStartedDateID]) REFERENCES [Shared].[DimDate] ([DateID])
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
EXECUTE sp_addextendedproperty @name = N'UpdateQuery', @value = 'MERGE  Paga_EDW.[Shared].[FactProcessEvent] AS Target
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
				) as x
				WHERE x.rn = 1

			) AS Source ON 
				Target.sourcekey = Source.sourcekey


			WHEN MATCHED  
			THEN
				UPDATE SET 
				Target.SourceKey = Source.SourceKey,Target.DimProcessTypeID = Source.DimProcessTypeID,Target.DimUserID = Source.DimUserID,Target.DimForUserID = Source.DimForUserID,Target.DimToUserID = Source.DimToUserID,Target.DimInitiatingUserID = Source.DimInitiatingUserID,Target.DimProcessChannelID = Source.DimProcessChannelID,Target.DimRequestedProcessChannelID = Source.DimRequestedProcessChannelID,Target.DimProcessStatusID = Source.DimProcessStatusID,Target.HasFinancialTransaction = Source.HasFinancialTransaction,Target.DimStartedDateID = Source.DimStartedDateID,Target.DimStartedTimeID = Source.DimStartedTimeID,Target.DimCompletedDateID = Source.DimCompletedDateID,Target.DimCompletedTimeID = Source.DimCompletedTimeID,Target.ProcessAmount = Source.ProcessAmount,Target.ProcessFee = Source.ProcessFee,Target.DimAgentCommissionTypeID = Source.DimAgentCommissionTypeID,Target.AgentCommissionAmount = Source.AgentCommissionAmount,Target.ProcessCode = Source.ProcessCode,Target.WithdrawalCode = Source.WithdrawalCode,Target.ATMReferenceNumber = Source.ATMReferenceNumber,Target.CardProcessorName = Source.CardProcessorName,Target.CustomerBillerAccount = Source.CustomerBillerAccount,Target.CustomerPhoneNumber = Source.CustomerPhoneNumber,Target.DepositNumber = Source.DepositNumber,Target.LinkedPhoneNumber = Source.LinkedPhoneNumber,Target.MerchantConfirmationCode = Source.MerchantConfirmationCode,Target.MerchantCustomerAccountNumber = Source.MerchantCustomerAccountNumber,Target.PaymentSource = Source.PaymentSource,Target.ReferenceNumber = Source.ReferenceNumber,Target.SenderPhoneNumber = Source.SenderPhoneNumber,Target.FactDependentProcessEventID = Source.FactDependentProcessEventID,Target.FactOriginalProcessEventID = Source.FactOriginalProcessEventID,Target.VerificationStatus = Source.VerificationStatus,Target.DimApprovedByUserID = Source.DimApprovedByUserID,Target.DimVerifiedByUserID = Source.DimVerifiedByUserID,Target.DimCancellationApprovedByUserID = Source.DimCancellationApprovedByUserID,Target.IntegrationReferenceNumber = Source.IntegrationReferenceNumber,Target.SYS_CHANGE_VERSION = Source.SYS_CHANGE_VERSION,Target.SYS_CHANGE_OPERATION = Source.SYS_CHANGE_OPERATION
			WHEN NOT MATCHED BY TARGET
			THEN
				INSERT 
				(
					SourceKey,DimProcessTypeID,DimUserID,DimForUserID,DimToUserID,DimInitiatingUserID,DimProcessChannelID,DimRequestedProcessChannelID,DimProcessStatusID,HasFinancialTransaction,DimStartedDateID,DimStartedTimeID,DimCompletedDateID,DimCompletedTimeID,ProcessAmount,ProcessFee,DimAgentCommissionTypeID,AgentCommissionAmount,ProcessCode,WithdrawalCode,ATMReferenceNumber,CardProcessorName,CustomerBillerAccount,CustomerPhoneNumber,DepositNumber,LinkedPhoneNumber,MerchantConfirmationCode,MerchantCustomerAccountNumber,PaymentSource,ReferenceNumber,SenderPhoneNumber,FactDependentProcessEventID,FactOriginalProcessEventID,VerificationStatus,DimApprovedByUserID,DimVerifiedByUserID,DimCancellationApprovedByUserID,IntegrationReferenceNumber,SYS_CHANGE_VERSION,SYS_CHANGE_OPERATION
				)
			VALUES 
			(
				Source.SourceKey,Source.DimProcessTypeID,Source.DimUserID,Source.DimForUserID,Source.DimToUserID,Source.DimInitiatingUserID,Source.DimProcessChannelID,Source.DimRequestedProcessChannelID,Source.DimProcessStatusID,Source.HasFinancialTransaction,Source.DimStartedDateID,Source.DimStartedTimeID,Source.DimCompletedDateID,Source.DimCompletedTimeID,Source.ProcessAmount,Source.ProcessFee,Source.DimAgentCommissionTypeID,Source.AgentCommissionAmount,Source.ProcessCode,Source.WithdrawalCode,Source.ATMReferenceNumber,Source.CardProcessorName,Source.CustomerBillerAccount,Source.CustomerPhoneNumber,Source.DepositNumber,Source.LinkedPhoneNumber,Source.MerchantConfirmationCode,Source.MerchantCustomerAccountNumber,Source.PaymentSource,Source.ReferenceNumber,Source.SenderPhoneNumber,Source.FactDependentProcessEventID,Source.FactOriginalProcessEventID,Source.VerificationStatus,Source.DimApprovedByUserID,Source.DimVerifiedByUserID,Source.DimCancellationApprovedByUserID,Source.IntegrationReferenceNumber,Source.SYS_CHANGE_VERSION,Source.SYS_CHANGE_OPERATION
			);', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'FactProcessEvent';






GO
CREATE NONCLUSTERED INDEX [ix_FactProcessEvent_verify]
    ON [Shared].[FactProcessEvent]([DimVerifiedByUserID] ASC);


GO
CREATE NONCLUSTERED INDEX [ix_FactProcessEvent_UserID]
    ON [Shared].[FactProcessEvent]([DimUserID] ASC);


GO
CREATE NONCLUSTERED INDEX [ix_FactProcessEvent_ToUserID]
    ON [Shared].[FactProcessEvent]([DimToUserID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_FactProcessEvent_SourceKey]
    ON [Shared].[FactProcessEvent]([SourceKey] ASC);


GO
CREATE NONCLUSTERED INDEX [ix_FactProcessEvent_ForUserID]
    ON [Shared].[FactProcessEvent]([DimForUserID] ASC);


GO
CREATE NONCLUSTERED INDEX [ix_FactProcessEvent_DimProcessTypeID]
    ON [Shared].[FactProcessEvent]([DimProcessTypeID] ASC);


GO
CREATE NONCLUSTERED INDEX [ix_FactProcessEvent_DimInitiatingUserID]
    ON [Shared].[FactProcessEvent]([DimInitiatingUserID] ASC);


GO
CREATE NONCLUSTERED INDEX [ix_FactProcessEvent_ChangeVersion]
    ON [Shared].[FactProcessEvent]([SYS_CHANGE_VERSION] ASC);


GO
CREATE NONCLUSTERED INDEX [ix_FactProcessEvent_cancel]
    ON [Shared].[FactProcessEvent]([DimCancellationApprovedByUserID] ASC);


GO
CREATE NONCLUSTERED INDEX [ix_FactProcessEvent_approve]
    ON [Shared].[FactProcessEvent]([DimApprovedByUserID] ASC);

