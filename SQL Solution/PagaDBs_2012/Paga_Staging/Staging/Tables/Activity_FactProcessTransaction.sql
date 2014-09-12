CREATE TABLE [Staging].[Activity_FactProcessTransaction] (
    [AgentCommissionAmount]                    DECIMAL (18, 2) NULL,
    [ATMReferenceNumber]                       VARCHAR (255)   NULL,
    [CardProcessorName]                        VARCHAR (255)   NULL,
    [CustomerBillerAccount]                    VARCHAR (255)   NULL,
    [CustomerPhoneNumber]                      VARCHAR (255)   NULL,
    [DepositNumber]                            VARCHAR (255)   NULL,
    [LinkedPhoneNumber]                        VARCHAR (255)   NULL,
    [MerchantConfirmationCode]                 VARCHAR (255)   NULL,
    [MerchantCustomerAccountNumber]            VARCHAR (255)   NULL,
    [PaymentSource]                            VARCHAR (255)   NULL,
    [ProcessAmount]                            DECIMAL (18, 2) NULL,
    [ProcessFee]                               DECIMAL (18, 2) NULL,
    [ReferenceNumber]                          VARCHAR (255)   NULL,
    [RequestedProcessChannel]                  VARCHAR (255)   NULL,
    [SenderPhoneNumber]                        VARCHAR (255)   NULL,
    [SourceKey]                                INT             NOT NULL,
    [WithdrawalCode]                           VARCHAR (255)   NULL,
    [DimCompletedDateID]                       INT             NULL,
    [DimCompletedTimeID]                       INT             NULL,
    [DimCreatedDateID]                         INT             NULL,
    [DimCreatedTimeID]                         INT             NULL,
    [DimStartedDateID]                         INT             NULL,
    [DimStartedTimeID]                         INT             NULL,
    [DimTransferDateID]                        INT             NULL,
    [DimTransferTimeID]                        INT             NULL,
    [DependentFactProcessTransactionSourceKey] INT             NULL,
    [DimAgentCommissionTypeSourceKey]          VARCHAR (255)   NULL,
    [DimApprovedByUserSourceKey]               VARCHAR (255)   NULL,
    [DimBillerAccountUserSourceKey]            VARCHAR (255)   NULL,
    [DimCancellationApprovedByUserSourceKey]   VARCHAR (255)   NULL,
    [DimChannelSourceKey]                      VARCHAR (255)   NULL,
    [DimInitiatingUserSourceKey]               VARCHAR (255)   NULL,
    [DimOnBehalffUserSourceKey]                VARCHAR (255)   NULL,
    [DimOrganizationSourceKey]                 VARCHAR (255)   NULL,
    [DimOriginalPayerPagaAccountSourceKey]     VARCHAR (255)   NULL,
    [DimPagaAccountSourceKey]                  VARCHAR (255)   NULL,
    [DimProcessStatusSourceKey]                VARCHAR (255)   NULL,
    [DimProcessTypeSourceKey]                  VARCHAR (255)   NULL,
    [DimReceivingUserSourceKey]                VARCHAR (255)   NULL,
    [DimVerifiedByUserSourceKey]               VARCHAR (255)   NULL,
    [OriginalFactProcessTransactionSourceKey]  INT             NULL,
    [change_operation]                         CHAR (1)        DEFAULT ((1)) NOT NULL
);











