CREATE TABLE [Staging].[Activity_FactProcessTx] (
    [AgentCommissionAmount]                  DECIMAL (18, 2) NULL,
    [ATMReferenceNumber]                     VARCHAR (200)   NULL,
    [CardProcessorName]                      VARCHAR (200)   NULL,
    [CustomerBillerAccount]                  VARCHAR (200)   NULL,
    [CustomerPhoneNumber]                    VARCHAR (200)   NULL,
    [DepositNumber]                          VARCHAR (200)   NULL,
    [IntegrationReferenceNumber]             VARCHAR (200)   NULL,
    [LinkedPhoneNumber]                      VARCHAR (200)   NULL,
    [MerchantConfirmationCode]               VARCHAR (200)   NULL,
    [MerchantCustomerAccountNumber]          VARCHAR (200)   NULL,
    [PaymentSource]                          VARCHAR (200)   NULL,
    [ProcessAmount]                          DECIMAL (18, 2) NULL,
    [ProcessCode]                            VARCHAR (36)    NOT NULL,
    [ProcessFee]                             DECIMAL (18, 2) NULL,
    [ReferenceNumber]                        VARCHAR (200)   NULL,
    [SenderPhoneNumber]                      VARCHAR (200)   NULL,
    [SourceKey]                              INT             NOT NULL,
    [VerificationStatus]                     VARCHAR (200)   NULL,
    [WithdrawalCode]                         VARCHAR (200)   NULL,
    [DimCompletedDateID]                     INT             NULL,
    [DimCompletedTimeID]                     INT             NULL,
    [DimCreatedDateID]                       INT             NOT NULL,
    [DimCreatedTimeID]                       INT             NOT NULL,
    [DimStartedDateID]                       INT             NOT NULL,
    [DimStartedTimeID]                       INT             NOT NULL,
    [DependentFactProcessTxSourceKey]        INT             NULL,
    [DimAgentCommissionTypeSourceKey]        VARCHAR (255)   NULL,
    [DimApprovedByUserSourceKey]             VARCHAR (255)   NULL,
    [DimCancellationApprovedByUserSourceKey] VARCHAR (255)   NULL,
    [DimChannelSourceKey]                    VARCHAR (255)   NOT NULL,
    [DimInitiatingUserSourceKey]             VARCHAR (255)   NULL,
    [DimOnBehalffUserSourceKey]              VARCHAR (255)   NULL,
    [DimOrganizationUnitLevel4SourceKey]     VARCHAR (255)   NULL,
    [DimPagaAccountSourceKey]                VARCHAR (255)   NULL,
    [DimProcessStatusSourceKey]              VARCHAR (255)   NOT NULL,
    [DimProcessTypeSourceKey]                VARCHAR (255)   NOT NULL,
    [DimReceivingUserSourceKey]              VARCHAR (255)   NULL,
    [DimVerifiedByUserSourceKey]             VARCHAR (255)   NULL,
    [OriginalFactProcessTxSourceKey]         INT             NULL,
    [change_operation]                       CHAR (1)        DEFAULT ((1)) NOT NULL
);

















