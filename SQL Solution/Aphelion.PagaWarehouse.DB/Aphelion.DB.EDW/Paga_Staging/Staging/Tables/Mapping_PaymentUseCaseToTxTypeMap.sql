CREATE TABLE [Staging].[Mapping_PaymentUseCaseToTxTypeMap] (
    [PaymentUseCaseToTxTypeMapID]          INT           NULL,
    [FinancialTxTypeName]                  VARCHAR (255) NULL,
    [DimFinancialTransactionTypeSourceKey] VARCHAR (255) NOT NULL,
    [DimPaymentUseCaseSourceKey]           VARCHAR (255) NOT NULL,
    [SYS_CHANGE_OPERATION]                 CHAR (1)      DEFAULT ('I') NOT NULL,
    [SYS_CHANGE_VERSION]                   BIGINT        DEFAULT ((0)) NOT NULL
);






GO
CREATE UNIQUE CLUSTERED INDEX [ix_Mapping_PaymentUseCaseToTxTypeMap]
    ON [Staging].[Mapping_PaymentUseCaseToTxTypeMap]([SYS_CHANGE_VERSION] ASC, [SYS_CHANGE_OPERATION] ASC);

