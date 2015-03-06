CREATE TABLE [Errors].[Mapping_PaymentUseCaseToTxTypeMap] (
    [QueueID]                      INT           NOT NULL,
    [SSISErrorCode]                INT           NOT NULL,
    [SSISErrorColumn]              INT           NOT NULL,
    [PackageName]                  VARCHAR (255) NOT NULL,
    [ErrorType]                    VARCHAR (255) NOT NULL,
    [PaymentUseCaseSourceKey]      INT           NOT NULL,
    [FinancialTxTypeSourceKey]     INT           NOT NULL,
    [FinancialTransactionTypeName] VARCHAR (255) NULL
);

