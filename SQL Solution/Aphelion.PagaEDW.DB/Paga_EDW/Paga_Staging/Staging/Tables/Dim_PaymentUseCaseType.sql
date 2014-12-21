CREATE TABLE [Staging].[Dim_PaymentUseCaseType] (
    [DeltaHash]               BIGINT        NULL,
    [DimPaymentUseCaseTypeID] INT           NULL,
    [Name]                    VARCHAR (255) NULL,
    [SourceKey]               VARCHAR (255) NOT NULL,
    [SourceKeyHash]           BIGINT        NULL
);

