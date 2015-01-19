﻿CREATE TABLE [Staging].[Shared_FactProcessEvent] (
    [FactProcessEventID]              INT             NULL,
    [AgentCommissionAmount]           DECIMAL (18, 2) NULL,
    [ATMReferenceNumber]              VARCHAR (200)   NULL,
    [CardProcessorName]               VARCHAR (200)   NULL,
    [CustomerBillerAccount]           VARCHAR (200)   NULL,
    [CustomerPhoneNumber]             VARCHAR (200)   NULL,
    [DeltaHash]                       BIGINT          NULL,
    [DependentFactProcessTxID]        INT             NULL,
    [DepositNumber]                   VARCHAR (200)   NULL,
    [DimAgentCommissionTypeID]        INT             NULL,
    [DimApprovedByUserID]             INT             NULL,
    [DimCancellationApprovedByUserID] INT             NULL,
    [DimCompletedDateID]              INT             NULL,
    [DimCompletedTimeID]              INT             NULL,
    [DimForUserID]                    INT             NULL,
    [DimInitiatingUserID]             INT             NULL,
    [DimOriginalProcessChannelID]     INT             NULL,
    [DimProcessChannelID]             INT             NOT NULL,
    [DimProcessStatusID]              INT             NULL,
    [DimProcessTypeID]                INT             NULL,
    [DimToUserID]                     INT             NULL,
    [DimUserID]                       INT             NULL,
    [DimVerifiedByUserID]             INT             NULL,
    [HasFinancialTransaction]         BIT             NULL,
    [IntegrationReferenceNumber]      VARCHAR (200)   NULL,
    [LinkedPhoneNumber]               VARCHAR (200)   NULL,
    [MerchantConfirmationCode]        VARCHAR (200)   NULL,
    [MerchantCustomerAccountNumber]   VARCHAR (200)   NULL,
    [Name]                            VARCHAR (255)   NULL,
    [OriginalFactProcessTxID]         INT             NULL,
    [PaymentSource]                   VARCHAR (200)   NULL,
    [ProcessAmount]                   DECIMAL (18, 2) NULL,
    [ProcessCode]                     VARCHAR (36)    NOT NULL,
    [ProcessFee]                      DECIMAL (18, 2) NULL,
    [ReferenceNumber]                 VARCHAR (200)   NULL,
    [SenderPhoneNumber]               VARCHAR (200)   NULL,
    [SourceKey]                       INT             NOT NULL,
    [SourceKeyHash]                   BIGINT          NULL,
    [VerificationStatus]              VARCHAR (200)   NULL,
    [WithdrawalCode]                  VARCHAR (200)   NULL,
    [SYS_CHANGE_OPERATION]            CHAR (1)        DEFAULT ('I') NOT NULL,
    [SYS_CHANGE_VERSION]              BIGINT          DEFAULT ((0)) NOT NULL
);








GO
CREATE UNIQUE CLUSTERED INDEX [ix_Shared_FactProcessEvent]
    ON [Staging].[Shared_FactProcessEvent]([SYS_CHANGE_VERSION] ASC, [SYS_CHANGE_OPERATION] ASC);

