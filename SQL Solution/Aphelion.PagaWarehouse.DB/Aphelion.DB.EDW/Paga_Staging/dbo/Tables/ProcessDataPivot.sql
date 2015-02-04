CREATE TABLE [dbo].[ProcessDataPivot] (
    [ProcessID]                              INT           NOT NULL,
    [WithdrawalCode]                         VARCHAR (200) NULL,
    [ATMReferenceNumber]                     VARCHAR (200) NULL,
    [CardProcessorName]                      VARCHAR (200) NULL,
    [CustomerBillerAccount]                  VARCHAR (200) NULL,
    [CustomerPhoneNumber]                    VARCHAR (200) NULL,
    [DepositNumber]                          VARCHAR (200) NULL,
    [LinkedPhoneNumber]                      VARCHAR (200) NULL,
    [MerchantConfirmationCode]               VARCHAR (200) NULL,
    [MerchantCustomerAccountNumber]          VARCHAR (200) NULL,
    [PaymentSource]                          VARCHAR (200) NULL,
    [ReferenceNumber]                        VARCHAR (200) NULL,
    [RequestedProcessChannel]                VARCHAR (200) NULL,
    [SenderPhoneNumber]                      VARCHAR (200) NULL,
    [DependentFactProcessTxSourceKey]        INT           NULL,
    [OriginalFactProcessTxSourceKey]         INT           NULL,
    [VerificationStatus]                     VARCHAR (200) NULL,
    [DimVerifiedByUserSourceKey]             INT           NULL,
    [IntegrationReferenceNumber]             VARCHAR (200) NULL,
    [DimApprovedByUserSourceKey]             INT           NULL,
    [DimCancellationApprovedByUserSourceKey] INT           NULL,
    [row_id]                                 INT           IDENTITY (1, 1) NOT NULL,
    [SYS_CHANGE_VERSION]                     BIGINT        DEFAULT ((0)) NOT NULL,
    [SYS_CHANGE_OPERATION]                   CHAR (1)      DEFAULT ('I') NOT NULL
);




GO
CREATE UNIQUE CLUSTERED INDEX [ix_ProcessDataPivot]
    ON [dbo].[ProcessDataPivot]([ProcessID] ASC, [row_id] ASC);

