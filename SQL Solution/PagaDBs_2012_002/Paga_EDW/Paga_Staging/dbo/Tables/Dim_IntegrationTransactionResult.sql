CREATE TABLE [dbo].[Dim_IntegrationTransactionResult] (
    [DimIntegrationTxResultID] INT          IDENTITY (1, 1) NOT NULL,
    [SourceKey]                VARCHAR (50) NULL
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimIntegrationTransactionResult_SourceKey]
    ON [dbo].[Dim_IntegrationTransactionResult]([SourceKey] ASC);

