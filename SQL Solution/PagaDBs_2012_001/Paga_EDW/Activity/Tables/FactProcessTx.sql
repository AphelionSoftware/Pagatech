CREATE TABLE [Activity].[FactProcessTx] (
    [FactProcessTxID]                 INT                    IDENTITY (1, 1) NOT NULL,
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



EXECUTE sp_addextendedproperty @name = N'BaseQuery', @value = N'', @level0type = N'SCHEMA', @level0name = N'Activity', @level1type = N'TABLE', @level1name = N'FactProcessTx';






GO

EXEC sys.sp_addextendedproperty @name=N'KeyColumn', @value=N'ProcessId' , @level0type=N'SCHEMA',@level0name=N'Activity', @level1type=N'TABLE',@level1name=N'FactProcessTx'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'dbo.Process' , @level0type=N'SCHEMA',@level0name=N'Activity', @level1type=N'TABLE',@level1name=N'FactProcessTx'
GO
EXECUTE sp_addextendedproperty @name = N'LoadOrder', @value = N'8', @level0type = N'SCHEMA', @level0name = N'Activity', @level1type = N'TABLE', @level1name = N'FactProcessTx';


GO
EXECUTE sp_addextendedproperty @name = N'LoadGroup', @value = N'2700', @level0type = N'SCHEMA', @level0name = N'Activity', @level1type = N'TABLE', @level1name = N'FactProcessTx';


GO
CREATE UNIQUE NONCLUSTERED INDEX [NonClusteredIndex-20141013-195551]
    ON [Activity].[FactProcessTx]([SourceKey] ASC, [FactProcessTxID] ASC);

