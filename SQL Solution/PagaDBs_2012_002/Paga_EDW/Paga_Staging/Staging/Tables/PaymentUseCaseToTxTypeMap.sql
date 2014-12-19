CREATE TABLE [Staging].[PaymentUseCaseToTxTypeMap] (
    [PaymentUseCaseToTxTypeMapID]           INT           NULL,
    [FinancialTransactionTypeName]          VARCHAR (255) NULL,
    [Dim_FinancialTransactionTypeSourceKey] VARCHAR (255) NOT NULL,
    [Dim_PaymentUseCaseSourceKey]           VARCHAR (255) NOT NULL
);

