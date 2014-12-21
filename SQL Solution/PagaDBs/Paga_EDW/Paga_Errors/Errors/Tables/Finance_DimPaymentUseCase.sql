CREATE TABLE [Errors].[Finance_DimPaymentUseCase] (
    [QueueID]                        INT           NOT NULL,
    [SSISErrorCode]                  INT           NOT NULL,
    [SSISErrorColumn]                INT           NOT NULL,
    [PackageName]                    VARCHAR (255) NOT NULL,
    [ErrorType]                      VARCHAR (255) NOT NULL,
    [DeltaHash]                      BIGINT        NULL,
    [DimPaymentUseCaseID]            INT           NULL,
    [DimPaymentUseCaseTypeSourceKey] VARCHAR (255) NOT NULL,
    [Name]                           VARCHAR (255) NULL,
    [SourceKey]                      VARCHAR (255) NOT NULL,
    [SourceKeyHash]                  BIGINT        NULL
);

