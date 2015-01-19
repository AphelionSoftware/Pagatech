CREATE TABLE [Staging].[Finance_DimPaymentUseCase] (
    [DimPaymentUseCaseID]            INT           NULL,
    [DeltaHash]                      BIGINT        NULL,
    [Name]                           VARCHAR (255) NULL,
    [SourceKey]                      VARCHAR (255) NOT NULL,
    [SourceKeyHash]                  BIGINT        NULL,
    [DimPaymentUseCaseTypeSourceKey] VARCHAR (255) NOT NULL,
    [SYS_CHANGE_OPERATION]           CHAR (1)      DEFAULT ('I') NOT NULL
);



