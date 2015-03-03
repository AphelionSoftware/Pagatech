CREATE TABLE [Updates].[Finance_DimPaymentUseCase] (
    [DimPaymentUseCaseTypeID] INT           NOT NULL,
    [SourceKey]               VARCHAR (255) NOT NULL,
    [Name]                    VARCHAR (255) NULL,
    [SYS_CHANGE_VERSION]      BIGINT        DEFAULT ((0)) NOT NULL,
    [SYS_CHANGE_OPERATION]    CHAR (1)      DEFAULT ('I') NOT NULL
);




GO
CREATE CLUSTERED INDEX [ix_Finance_DimPaymentUseCase_SourceKey]
    ON [Updates].[Finance_DimPaymentUseCase]([SourceKey] ASC, [SYS_CHANGE_VERSION] DESC);

