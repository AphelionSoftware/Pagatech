CREATE TABLE [Updates].[Mapping_PaymentUseCaseToTxTypeMap] (
    [DimPaymentUseCaseID]  INT           NOT NULL,
    [DimFinancialTxTypeID] INT           NOT NULL,
    [FinancialTxTypeName]  VARCHAR (255) NULL
);

