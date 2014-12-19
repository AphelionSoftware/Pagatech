CREATE TABLE [Errors].[PaymentUseCaseToTxTypeMap] (
    [QueueID]                              INT           NOT NULL,
    [SSISErrorCode]                        INT           NOT NULL,
    [SSISErrorColumn]                      INT           NOT NULL,
    [PackageName]                          VARCHAR (255) NOT NULL,
    [ErrorType]                            VARCHAR (255) NOT NULL,
    [PaymentUseCaseToTxTypeMapID]          INT           NULL,
    [DimFinancialTransactionTypeSourceKey] VARCHAR (255) NOT NULL,
    [DimPaymentUseCaseSourceKey]           VARCHAR (255) NOT NULL,
    [FinancialTxTypeName]                  VARCHAR (255) NULL,
    [DimFinancialTxTypeID]                 INT           NULL,
    [DimPaymentUseCaseID]                  INT           NULL
);

