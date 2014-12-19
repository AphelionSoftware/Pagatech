CREATE TABLE [Staging].[Dim_PaymentUseCase] (
    [DeltaHash]                       BIGINT        NULL,
    [DimPaymentUseCaseID]             INT           NULL,
    [Name]                            VARCHAR (255) NULL,
    [SourceKey]                       VARCHAR (255) NOT NULL,
    [SourceKeyHash]                   BIGINT        NULL,
    [Dim_PaymentUseCaseTypeSourceKey] VARCHAR (255) NOT NULL
);

