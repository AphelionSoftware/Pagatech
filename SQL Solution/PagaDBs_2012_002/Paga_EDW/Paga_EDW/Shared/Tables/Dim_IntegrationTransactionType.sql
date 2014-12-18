CREATE TABLE [Shared].[DimIntegrationTransactionType] (
    [DimIntegrationTxTypeID] INT           IDENTITY (1, 1) NOT NULL,
    [SourceKey]              VARCHAR (255) NOT NULL,
    [Name]                   VARCHAR (255) NULL,
    [SourceKeyHash]          BIGINT        NULL,
    [DeltaHash]              BIGINT        NULL,
    [sys_CreatedBy]          VARCHAR (255) DEFAULT (user_name()) NOT NULL,
    [sys_CreatedOn]          DATETIME      DEFAULT (getdate()) NOT NULL,
    [sys_ModifiedBy]         VARCHAR (255) DEFAULT (user_name()) NOT NULL,
    [sys_ModifiedOn]         DATETIME      DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [pk_DimIntegrationTxType] PRIMARY KEY CLUSTERED ([DimIntegrationTxTypeID] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimIntegrationTransactionType_SourceKey]
    ON [Shared].[DimIntegrationTransactionType]([SourceKey] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'LoadGroup', @value = N'1', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimIntegrationTransactionType';

