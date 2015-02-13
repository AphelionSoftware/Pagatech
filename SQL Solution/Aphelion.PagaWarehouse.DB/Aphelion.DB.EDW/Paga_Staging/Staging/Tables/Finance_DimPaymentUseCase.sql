CREATE TABLE [Staging].[Finance_DimPaymentUseCase] (
    [Name]                           VARCHAR (255) NULL,
    [SourceKey]                      VARCHAR (255) NOT NULL,
    [DimPaymentUseCaseTypeSourceKey] VARCHAR (255) NOT NULL,
    [SYS_CHANGE_VERSION]             BIGINT        DEFAULT ((0)) NOT NULL,
    [SYS_CHANGE_OPERATION]           CHAR (1)      DEFAULT ('I') NOT NULL,
    [paga_change_log_id]             INT           NULL,
    [row_id]                         INT           IDENTITY (1, 1) NOT NULL
);






















GO
CREATE UNIQUE CLUSTERED INDEX [ix_Finance_DimPaymentUseCase]
    ON [Staging].[Finance_DimPaymentUseCase]([SourceKey] ASC, [SYS_CHANGE_VERSION] ASC, [SYS_CHANGE_OPERATION] ASC, [row_id] ASC);



