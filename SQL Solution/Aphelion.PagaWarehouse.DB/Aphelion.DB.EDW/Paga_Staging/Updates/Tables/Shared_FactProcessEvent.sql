CREATE TABLE [Updates].[Shared_FactProcessEvent] (
    [SourceKey]                       INT             NOT NULL,
    [DimProcessTypeID]                INT             NULL,
    [DimUserID]                       INT             NULL,
    [DimForUserID]                    INT             NULL,
    [DimToUserID]                     INT             NULL,
    [DimInitiatingUserID]             INT             NULL,
    [DimProcessChannelID]             INT             NOT NULL,
    [DimRequestedProcessChannelID]    INT             NULL,
    [DimProcessStatusID]              INT             NULL,
    [HasFinancialTransaction]         BIT             NULL,
    [DimStartedDateID]                INT             NULL,
    [DimStartedTimeID]                INT             NULL,
    [DimCompletedDateID]              INT             NULL,
    [DimCompletedTimeID]              INT             NULL,
    [ProcessAmount]                   DECIMAL (18, 2) NULL,
    [ProcessFee]                      DECIMAL (18, 2) NULL,
    [DimAgentCommissionTypeID]        INT             NULL,
    [AgentCommissionAmount]           DECIMAL (18, 2) NULL,
    [ProcessCode]                     VARCHAR (36)    NOT NULL,
    [WithdrawalCode]                  VARCHAR (200)   NULL,
    [ATMReferenceNumber]              VARCHAR (200)   NULL,
    [CardProcessorName]               VARCHAR (200)   NULL,
    [CustomerBillerAccount]           VARCHAR (200)   NULL,
    [CustomerPhoneNumber]             VARCHAR (200)   NULL,
    [DepositNumber]                   VARCHAR (200)   NULL,
    [LinkedPhoneNumber]               VARCHAR (200)   NULL,
    [MerchantConfirmationCode]        VARCHAR (200)   NULL,
    [MerchantCustomerAccountNumber]   VARCHAR (200)   NULL,
    [PaymentSource]                   VARCHAR (200)   NULL,
    [ReferenceNumber]                 VARCHAR (200)   NULL,
    [SenderPhoneNumber]               VARCHAR (200)   NULL,
    [FactDependentProcessEventID]     INT             NULL,
    [FactOriginalProcessEventID]      INT             NULL,
    [VerificationStatus]              VARCHAR (200)   NULL,
    [DimApprovedByUserID]             INT             NULL,
    [DimVerifiedByUserID]             INT             NULL,
    [DimCancellationApprovedByUserID] INT             NULL,
    [IntegrationReferenceNumber]      VARCHAR (200)   NULL,
    [SYS_CHANGE_VERSION]              BIGINT          DEFAULT ((0)) NOT NULL,
    [SYS_CHANGE_OPERATION]            CHAR (1)        DEFAULT ('I') NOT NULL
);




GO
CREATE CLUSTERED INDEX [ix_Shared_FactProcessEvent_SourceKey]
    ON [Updates].[Shared_FactProcessEvent]([SourceKey] ASC, [SYS_CHANGE_VERSION] DESC);

