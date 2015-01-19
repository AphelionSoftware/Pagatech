CREATE TABLE [Staging].[Mapping_PaymentUseCaseToTxTypeMap] (
    [PaymentUseCaseToTxTypeMapID]          INT           NULL,
    [FinancialTxTypeName]                  VARCHAR (255) NULL,
    [DimFinancialTransactionTypeSourceKey] VARCHAR (255) NOT NULL,
    [DimPaymentUseCaseSourceKey]           VARCHAR (255) NOT NULL,
    [SYS_CHANGE_OPERATION]                 CHAR (1)      DEFAULT ('I') NOT NULL
);



