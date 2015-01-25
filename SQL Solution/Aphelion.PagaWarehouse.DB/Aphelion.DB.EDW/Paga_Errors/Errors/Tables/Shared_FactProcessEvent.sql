﻿CREATE TABLE [Errors].[Shared_FactProcessEvent] (
    [QueueID]                                INT             NOT NULL,
    [SSISErrorCode]                          INT             NOT NULL,
    [SSISErrorColumn]                        INT             NOT NULL,
    [PackageName]                            VARCHAR (255)   NOT NULL,
    [ErrorType]                              VARCHAR (255)   NOT NULL,
    [AgentCommissionAmount]                  DECIMAL (18, 2) NULL,
    [ATMReferenceNumber]                     VARCHAR (200)   NULL,
    [CardProcessorName]                      VARCHAR (200)   NULL,
    [CustomerBillerAccount]                  VARCHAR (200)   NULL,
    [CustomerPhoneNumber]                    VARCHAR (200)   NULL,
    [DepositNumber]                          VARCHAR (200)   NULL,
    [DimAgentCommissionTypeSourceKey]        VARCHAR (255)   NULL,
    [DimApprovedByUserSourceKey]             INT             NULL,
    [DimCancellationApprovedByUserSourceKey] INT             NULL,
    [DimCompletedDateID]                     INT             NULL,
    [DimCompletedTimeID]                     INT             NULL,
    [DimForUserSourceKey]                    INT             NULL,
    [DimInitiatingUserSourceKey]             INT             NULL,
    [DimOriginalProcessChannelSourceKey]     VARCHAR (255)   NULL,
    [DimProcessChannelSourceKey]             VARCHAR (255)   NOT NULL,
    [DimProcessStatusSourceKey]              VARCHAR (255)   NULL,
    [DimProcessTypeSourceKey]                VARCHAR (255)   NULL,
    [DimToUserSourceKey]                     INT             NULL,
    [DimUserSourceKey]                       INT             NULL,
    [DimVerifiedByUserSourceKey]             INT             NULL,
    [FactDependentProcessEventSourceKey]     INT             NULL,
    [FactOriginalProcessEventSourceKey]      INT             NULL,
    [HasFinancialTransaction]                BIT             NULL,
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
    [SYS_CHANGE_OPERATION]                   CHAR (1)        NOT NULL,
    [SYS_CHANGE_VERSION]                     BIGINT          NOT NULL,
    [VerificationStatus]                     VARCHAR (200)   NULL,
    [WithdrawalCode]                         VARCHAR (200)   NULL
);







