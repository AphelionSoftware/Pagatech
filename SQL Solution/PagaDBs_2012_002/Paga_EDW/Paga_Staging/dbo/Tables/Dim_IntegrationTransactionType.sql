CREATE TABLE [dbo].[Dim_IntegrationTransactionType] (
    [DimIntegrationTxTypeID] INT          IDENTITY (1, 1) NOT NULL,
    [SourceKey]              VARCHAR (50) NULL
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimIntegrationTransactionType_SourceKey]
    ON [dbo].[Dim_IntegrationTransactionType]([SourceKey] ASC);

