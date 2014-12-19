CREATE TABLE [Staging].[PaymentUseCaseToTxTypeMap] (
    [PaymentUseCaseToTxTypeMapID]          INT           NULL,
    [FinancialTxTypeName]                  VARCHAR (255) NULL,
    [DimFinancialTransactionTypeSourceKey] VARCHAR (255) NOT NULL,
    [DimPaymentUseCaseSourceKey]           VARCHAR (255) NOT NULL
);

