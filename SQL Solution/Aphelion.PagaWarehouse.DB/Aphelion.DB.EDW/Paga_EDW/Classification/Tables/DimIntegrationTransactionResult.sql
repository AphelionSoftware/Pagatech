CREATE TABLE [Classification].[DimIntegrationTransactionResult] (
    [DimIntegrationTxResultID] INT           IDENTITY (1, 1) NOT NULL,
    [SourceKey]                VARCHAR (255) NOT NULL,
    [Name]                     VARCHAR (255) NULL,
    [SourceKeyHash]            BIGINT        NULL,
    [DeltaHash]                BIGINT        NULL,
    [sys_CreatedBy]            VARCHAR (255) DEFAULT (user_name()) NOT NULL,
    [sys_CreatedOn]            DATETIME      DEFAULT (getdate()) NOT NULL,
    [sys_ModifiedBy]           VARCHAR (255) DEFAULT (user_name()) NOT NULL,
    [sys_ModifiedOn]           DATETIME      DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [pk_DimIntegrationTxResult] PRIMARY KEY CLUSTERED ([DimIntegrationTxResultID] ASC)
);




GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimIntegrationTransactionResult_SourceKey]
    ON [Classification].[DimIntegrationTransactionResult]([SourceKey] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'dbo.IntegrationTransactionResult', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimIntegrationTransactionResult';


GO
EXECUTE sp_addextendedproperty @name = N'LoadOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimIntegrationTransactionResult';


GO
EXECUTE sp_addextendedproperty @name = N'LoadGroup', @value = N'2000', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimIntegrationTransactionResult';


GO
EXECUTE sp_addextendedproperty @name = N'KeyColumn', @value = N'IntegrationTransactionResultId', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimIntegrationTransactionResult';


GO
EXECUTE sp_addextendedproperty @name = N'BaseQuery', @value = N'', @level0type = N'SCHEMA', @level0name = N'Classification', @level1type = N'TABLE', @level1name = N'DimIntegrationTransactionResult';



