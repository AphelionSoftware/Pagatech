﻿CREATE TABLE [Staging].[FactProcessTransaction] (
    [FactProcessTransactionID]        INT             NULL,
    [AgentCommissionAmount]           DECIMAL (18, 2) NULL,
    [ATMReferenceNumber]              VARCHAR (255)   NULL,
    [CardProcessorName]               VARCHAR (255)   NULL,
    [CustomerBillerAccount]           VARCHAR (255)   NULL,
    [CustomerPhoneNumber]             VARCHAR (255)   NULL,
    [DependentProcessID]              INT             NULL,
    [DepositNumber]                   VARCHAR (255)   NULL,
    [DimAgentCommissionTypeID]        INT             NULL,
    [DimApprovedByUserID]             INT             NULL,
    [DimBillerAccountUserID]          INT             NULL,
    [DimCancellationApprovedByUserID] INT             NULL,
    [DimChannelID]                    INT             NULL,
    [DimCityID]                       INT             NULL,
    [DimCompletedDateID]              INT             NULL,
    [DimCompletedTimeID]              INT             NULL,
    [DimCreatedDateID]                INT             NULL,
    [DimCreatedTimeID]                INT             NULL,
    [DimInitiatingUserID]             INT             NULL,
    [DimOnBehalffUserID]              INT             NULL,
    [DimOrganizationID]               INT             NULL,
    [DimOrganizationUnitLevel5ID]     INT             NULL,
    [DimOriginalPayerPagaAccountIDID] INT             NULL,
    [DimPagaAccountID]                INT             NULL,
    [DimProcessStatusID]              INT             NULL,
    [DimProcessTypeID]                INT             NULL,
    [DimReceivingUserID]              INT             NULL,
    [DimStartedDateID]                INT             NULL,
    [DimStartedTimeID]                INT             NULL,
    [DimTransferDateID]               INT             NULL,
    [DimTransferTimeID]               INT             NULL,
    [DimVerifiedByUserID]             INT             NULL,
    [LinkedPhoneNumber]               VARCHAR (255)   NULL,
    [MerchantConfirmationCode]        VARCHAR (255)   NULL,
    [MerchantCustomerAccountNumber]   VARCHAR (255)   NULL,
    [OriginalProcessID]               INT             NULL,
    [PaymentSource]                   VARCHAR (255)   NULL,
    [ProcessAmount]                   DECIMAL (18, 2) NULL,
    [ProcessFee]                      DECIMAL (18, 2) NULL,
    [ReferenceNumber]                 VARCHAR (255)   NULL,
    [RequestedProcessChannel]         VARCHAR (255)   NULL,
    [RunID]                           INT             NOT NULL,
    [SenderPhoneNumber]               VARCHAR (255)   NULL,
    [WithdrawalCode]                  VARCHAR (255)   NULL
);



