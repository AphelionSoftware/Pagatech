CREATE TABLE [Activity].[FactProcessTransaction] (
    [FactProcessTransactionID]          INT             NOT NULL,
    [SourceKey]                         INT             NOT NULL,
    [DimCreatedDateID]                  INT             NULL,
    [DimCreatedTimeID]                  INT             NULL,
    [DimPagaAccountID]                  INT             NULL,
    [DimProcessTypeID]                  INT             NULL,
    [DimAgentCommissionTypeID]          INT             NULL,
    [DimInitiatingUserID]               INT             NULL,
    [DimReceivingUserID]                INT             NULL,
    [DimOnBehalffUserID]                INT             NULL,
    [DimChannelID]                      INT             NULL,
    [DimStartedDateID]                  INT             NULL,
    [DimStartedTimeID]                  INT             NULL,
    [DimCompletedDateID]                INT             NULL,
    [DimCompletedTimeID]                INT             NULL,
    [DimProcessStatusID]                INT             NULL,
    [DimBillerAccountUserID]            INT             NULL,
    [DimOrganizationID]                 INT             NULL,
    [DimOriginalPayerPagaAccountID]     INT             NULL,
    [DimTransferDateID]                 INT             NULL,
    [DimTransferTimeID]                 INT             NULL,
    [DimApprovedByUserID]               INT             NULL,
    [DimVerifiedByUserID]               INT             NULL,
    [DimCancellationApprovedByUserID]   INT             NULL,
    [OriginalFactProcessTransactionID]  INT             NULL,
    [DependentFactProcessTransactionID] INT             NULL,
    [RequestedProcessChannel]           VARCHAR (255)   NULL,
    [CustomerPhoneNumber]               VARCHAR (255)   NULL,
    [SenderPhoneNumber]                 VARCHAR (255)   NULL,
    [LinkedPhoneNumber]                 VARCHAR (255)   NULL,
    [ReferenceNumber]                   VARCHAR (255)   NULL,
    [ATMReferenceNumber]                VARCHAR (255)   NULL,
    [DepositNumber]                     VARCHAR (255)   NULL,
    [MerchantCustomerAccountNumber]     VARCHAR (255)   NULL,
    [MerchantConfirmationCode]          VARCHAR (255)   NULL,
    [CardProcessorName]                 VARCHAR (255)   NULL,
    [PaymentSource]                     VARCHAR (255)   NULL,
    [CustomerBillerAccount]             VARCHAR (255)   NULL,
    [WithdrawalCode]                    VARCHAR (255)   NULL,
    [ProcessFee]                        DECIMAL (18, 2) NULL,
    [ProcessAmount]                     DECIMAL (18, 2) NULL,
    [AgentCommissionAmount]             DECIMAL (18, 2) NULL,
    CONSTRAINT [pk_FactProcessTransactionID] PRIMARY KEY CLUSTERED ([FactProcessTransactionID] ASC),
    CONSTRAINT [fk_FactProcessTransaction_DependentProcessID] FOREIGN KEY ([DependentFactProcessTransactionID]) REFERENCES [Activity].[FactProcessTransaction] ([FactProcessTransactionID]),
    CONSTRAINT [fk_FactProcessTransaction_DimAgentCommissionTypeID] FOREIGN KEY ([DimAgentCommissionTypeID]) REFERENCES [Classification].[DimAgentCommissionType] ([DimAgentCommissionTypeID]),
    CONSTRAINT [fk_FactProcessTransaction_DimApprovedByUserID] FOREIGN KEY ([DimApprovedByUserID]) REFERENCES [Shared].[DimUser] ([DimUserID]),
    CONSTRAINT [fk_FactProcessTransaction_DimBillerAccountUserID] FOREIGN KEY ([DimBillerAccountUserID]) REFERENCES [Shared].[DimUser] ([DimUserID]),
    CONSTRAINT [fk_FactProcessTransaction_DimCancellationApprovedByUserID] FOREIGN KEY ([DimCancellationApprovedByUserID]) REFERENCES [Shared].[DimUser] ([DimUserID]),
    CONSTRAINT [fk_FactProcessTransaction_DimChannelID] FOREIGN KEY ([DimChannelID]) REFERENCES [Activity].[DimChannel] ([DimChannelID]),
    CONSTRAINT [fk_FactProcessTransaction_DimCompletedDateID] FOREIGN KEY ([DimCompletedDateID]) REFERENCES [Shared].[DimDate] ([DimDateID]),
    CONSTRAINT [fk_FactProcessTransaction_DimCompletedTimeID] FOREIGN KEY ([DimCompletedTimeID]) REFERENCES [Shared].[DimTime] ([DimTimeID]),
    CONSTRAINT [fk_FactProcessTransaction_DimCreatedDateID] FOREIGN KEY ([DimCreatedDateID]) REFERENCES [Shared].[DimDate] ([DimDateID]),
    CONSTRAINT [fk_FactProcessTransaction_DimCreatedTimeID] FOREIGN KEY ([DimCreatedTimeID]) REFERENCES [Shared].[DimTime] ([DimTimeID]),
    CONSTRAINT [fk_FactProcessTransaction_DimInitiatingUserID] FOREIGN KEY ([DimInitiatingUserID]) REFERENCES [Shared].[DimUser] ([DimUserID]),
    CONSTRAINT [fk_FactProcessTransaction_DimOnBehalffUserID] FOREIGN KEY ([DimOnBehalffUserID]) REFERENCES [Shared].[DimUser] ([DimUserID]),
    CONSTRAINT [fk_FactProcessTransaction_DimOrganizationID] FOREIGN KEY ([DimOrganizationID]) REFERENCES [Shared].[DimOrganization] ([DimOrganizationID]),
    CONSTRAINT [fk_FactProcessTransaction_DimOriginalPayerPagaAccountID] FOREIGN KEY ([DimOriginalPayerPagaAccountID]) REFERENCES [Shared].[DimPagaAccount] ([DimPagaAccountID]),
    CONSTRAINT [fk_FactProcessTransaction_DimPagaAccountID] FOREIGN KEY ([DimPagaAccountID]) REFERENCES [Shared].[DimPagaAccount] ([DimPagaAccountID]),
    CONSTRAINT [fk_FactProcessTransaction_DimProcessStatusID] FOREIGN KEY ([DimProcessStatusID]) REFERENCES [Classification].[DimProcessStatus] ([DimProcessStatusID]),
    CONSTRAINT [fk_FactProcessTransaction_DimProcessTypeID] FOREIGN KEY ([DimProcessTypeID]) REFERENCES [Classification].[DimProcessType] ([DimProcessTypeID]),
    CONSTRAINT [fk_FactProcessTransaction_DimReceivingUserID] FOREIGN KEY ([DimReceivingUserID]) REFERENCES [Shared].[DimUser] ([DimUserID]),
    CONSTRAINT [fk_FactProcessTransaction_DimStartedDateID] FOREIGN KEY ([DimStartedDateID]) REFERENCES [Shared].[DimDate] ([DimDateID]),
    CONSTRAINT [fk_FactProcessTransaction_DimStartedTimeID] FOREIGN KEY ([DimStartedTimeID]) REFERENCES [Shared].[DimTime] ([DimTimeID]),
    CONSTRAINT [fk_FactProcessTransaction_DimTransferDateID] FOREIGN KEY ([DimTransferDateID]) REFERENCES [Shared].[DimDate] ([DimDateID]),
    CONSTRAINT [fk_FactProcessTransaction_DimTransferTimeID] FOREIGN KEY ([DimTransferTimeID]) REFERENCES [Shared].[DimTime] ([DimTimeID]),
    CONSTRAINT [fk_FactProcessTransaction_DimVerifiedByUserID] FOREIGN KEY ([DimVerifiedByUserID]) REFERENCES [Shared].[DimUser] ([DimUserID]),
    CONSTRAINT [fk_FactProcessTransaction_OriginalProcessID] FOREIGN KEY ([OriginalFactProcessTransactionID]) REFERENCES [Activity].[FactProcessTransaction] ([FactProcessTransactionID])
);




GO
EXECUTE sp_addextendedproperty @name = N'PackageType', @value = N'1', @level0type = N'SCHEMA', @level0name = N'Activity', @level1type = N'TABLE', @level1name = N'FactProcessTransaction';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimCreatedDateID', @level0type = N'SCHEMA', @level0name = N'Activity', @level1type = N'TABLE', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimCreatedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimCreatedTimeID', @level0type = N'SCHEMA', @level0name = N'Activity', @level1type = N'TABLE', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimCreatedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimPagaAccountID', @level0type = N'SCHEMA', @level0name = N'Activity', @level1type = N'TABLE', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimPagaAccountID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimProcessTypeID', @level0type = N'SCHEMA', @level0name = N'Activity', @level1type = N'TABLE', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimProcessTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimAgentCommissionTypeID', @level0type = N'SCHEMA', @level0name = N'Activity', @level1type = N'TABLE', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimAgentCommissionTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimInitiatingUserID', @level0type = N'SCHEMA', @level0name = N'Activity', @level1type = N'TABLE', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimInitiatingUserID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimReceivingUserID', @level0type = N'SCHEMA', @level0name = N'Activity', @level1type = N'TABLE', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimReceivingUserID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimOnBehalffUserID', @level0type = N'SCHEMA', @level0name = N'Activity', @level1type = N'TABLE', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimOnBehalffUserID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimChannelID', @level0type = N'SCHEMA', @level0name = N'Activity', @level1type = N'TABLE', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimChannelID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimStartedDateID', @level0type = N'SCHEMA', @level0name = N'Activity', @level1type = N'TABLE', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimStartedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimStartedTimeID', @level0type = N'SCHEMA', @level0name = N'Activity', @level1type = N'TABLE', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimStartedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimCompletedDateID', @level0type = N'SCHEMA', @level0name = N'Activity', @level1type = N'TABLE', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimCompletedDateID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimCompletedTimeID', @level0type = N'SCHEMA', @level0name = N'Activity', @level1type = N'TABLE', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimCompletedTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimProcessStatusID', @level0type = N'SCHEMA', @level0name = N'Activity', @level1type = N'TABLE', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimProcessStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimBillerAccountUserID', @level0type = N'SCHEMA', @level0name = N'Activity', @level1type = N'TABLE', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimBillerAccountUserID';


GO



GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimOriginalPayerPagaAccountID', @level0type = N'SCHEMA', @level0name = N'Activity', @level1type = N'TABLE', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimOriginalPayerPagaAccountID';


GO



GO



GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimApprovedByUserID', @level0type = N'SCHEMA', @level0name = N'Activity', @level1type = N'TABLE', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimApprovedByUserID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimVerifiedByUserID', @level0type = N'SCHEMA', @level0name = N'Activity', @level1type = N'TABLE', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimVerifiedByUserID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimCancellationApprovedByUserID', @level0type = N'SCHEMA', @level0name = N'Activity', @level1type = N'TABLE', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimCancellationApprovedByUserID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'OriginalProcessID', @level0type = N'SCHEMA', @level0name = N'Activity', @level1type = N'TABLE', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'OriginalFactProcessTransactionID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DependentProcessID', @level0type = N'SCHEMA', @level0name = N'Activity', @level1type = N'TABLE', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DependentFactProcessTransactionID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'RequestedProcessChannel', @level0type = N'SCHEMA', @level0name = N'Activity', @level1type = N'TABLE', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'RequestedProcessChannel';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'CustomerPhoneNumber', @level0type = N'SCHEMA', @level0name = N'Activity', @level1type = N'TABLE', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'CustomerPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'SenderPhoneNumber', @level0type = N'SCHEMA', @level0name = N'Activity', @level1type = N'TABLE', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'SenderPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'LinkedPhoneNumber', @level0type = N'SCHEMA', @level0name = N'Activity', @level1type = N'TABLE', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'LinkedPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'ReferenceNumber', @level0type = N'SCHEMA', @level0name = N'Activity', @level1type = N'TABLE', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'ReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'ATMReferenceNumber', @level0type = N'SCHEMA', @level0name = N'Activity', @level1type = N'TABLE', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'ATMReferenceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DepositNumber', @level0type = N'SCHEMA', @level0name = N'Activity', @level1type = N'TABLE', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DepositNumber';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'MerchantCustomerAccountNumber', @level0type = N'SCHEMA', @level0name = N'Activity', @level1type = N'TABLE', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'MerchantCustomerAccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'MerchantConfirmationCode', @level0type = N'SCHEMA', @level0name = N'Activity', @level1type = N'TABLE', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'MerchantConfirmationCode';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'CardProcessorName', @level0type = N'SCHEMA', @level0name = N'Activity', @level1type = N'TABLE', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'CardProcessorName';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'PaymentSource', @level0type = N'SCHEMA', @level0name = N'Activity', @level1type = N'TABLE', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'PaymentSource';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'CustomerBillerAccount', @level0type = N'SCHEMA', @level0name = N'Activity', @level1type = N'TABLE', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'CustomerBillerAccount';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'WithdrawalCode', @level0type = N'SCHEMA', @level0name = N'Activity', @level1type = N'TABLE', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'WithdrawalCode';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'ProcessFee', @level0type = N'SCHEMA', @level0name = N'Activity', @level1type = N'TABLE', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'ProcessFee';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'ProcessAmount', @level0type = N'SCHEMA', @level0name = N'Activity', @level1type = N'TABLE', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'ProcessAmount';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'AgentCommissionAmount', @level0type = N'SCHEMA', @level0name = N'Activity', @level1type = N'TABLE', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'AgentCommissionAmount';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimTransferTimeID', @level0type = N'SCHEMA', @level0name = N'Activity', @level1type = N'TABLE', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimTransferTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimTransferDateID', @level0type = N'SCHEMA', @level0name = N'Activity', @level1type = N'TABLE', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimTransferDateID';


GO
EXECUTE sp_addextendedproperty @name = N'DisplayName', @value = N'DimOrganizationID', @level0type = N'SCHEMA', @level0name = N'Activity', @level1type = N'TABLE', @level1name = N'FactProcessTransaction', @level2type = N'COLUMN', @level2name = N'DimOrganizationID';

