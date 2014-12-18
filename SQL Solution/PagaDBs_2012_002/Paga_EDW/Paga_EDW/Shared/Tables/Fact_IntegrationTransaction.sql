CREATE TABLE [Shared].[FactIntegrationTransaction] (
    [FactIntegrationTxID]       INT             IDENTITY (1, 1) NOT NULL,
    [SourceKey]                 INT             NOT NULL,
    [DimIntegrationTxDateID]    INT             NULL,
    [DimIntegrationTxTimeID]    INT             NULL,
    [DimExternalOrganizationID] INT             NULL,
    [DimUserID]                 INT             NULL,
    [DimIntegrationTxTypeID]    INT             NULL,
    [DimProcessTypeID]          INT             NOT NULL,
    [DimIntegrationTxResultID]  INT             NULL,
    [ExternalReferenceNumber]   VARCHAR (50)    NULL,
    [Message]                   VARCHAR (300)   NULL,
    [IntegrationTx_Amount]      DECIMAL (18, 2) NULL,
    [HasFinancialTx]            INT             NOT NULL,
    [FactFinancialTxID]         INT             NULL,
    [SourceKeyHash]             BIGINT          NULL,
    [DeltaHash]                 BIGINT          NULL,
    [sys_CreatedBy]             VARCHAR (255)   DEFAULT (user_name()) NOT NULL,
    [sys_CreatedOn]             DATETIME        DEFAULT (getdate()) NOT NULL,
    [sys_ModifiedBy]            VARCHAR (255)   DEFAULT (user_name()) NOT NULL,
    [sys_ModifiedOn]            DATETIME        DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [pk_FactIntegrationTx] PRIMARY KEY CLUSTERED ([FactIntegrationTxID] ASC),
    CONSTRAINT [fk_FactIntegrationTransaction_DimExternalOrganizationID] FOREIGN KEY ([DimExternalOrganizationID]) REFERENCES [Shared].[DimExternalOrganization] ([DimExternalOrganizationID]),
    CONSTRAINT [fk_FactIntegrationTransaction_DimIntegrationTxDateID] FOREIGN KEY ([DimIntegrationTxDateID]) REFERENCES [Shared].[DimDate] ([DimDateID]),
    CONSTRAINT [fk_FactIntegrationTransaction_DimIntegrationTxResultID] FOREIGN KEY ([DimIntegrationTxResultID]) REFERENCES [Shared].[DimIntegrationTransactionResult] ([DimIntegrationTxResultID]),
    CONSTRAINT [fk_FactIntegrationTransaction_DimIntegrationTxTimeID] FOREIGN KEY ([DimIntegrationTxTimeID]) REFERENCES [Shared].[DimTime] ([DimTimeID]),
    CONSTRAINT [fk_FactIntegrationTransaction_DimIntegrationTxTypeID] FOREIGN KEY ([DimIntegrationTxTypeID]) REFERENCES [Shared].[DimIntegrationTransactionType] ([DimIntegrationTxTypeID]),
    CONSTRAINT [fk_FactIntegrationTransaction_DimProcessTypeID] FOREIGN KEY ([DimProcessTypeID]) REFERENCES [Shared].[DimProcessType] ([DimProcessTypeID]),
    CONSTRAINT [fk_FactIntegrationTransaction_DimUserID] FOREIGN KEY ([DimUserID]) REFERENCES [Shared].[DimUser] ([DimUserID]),
    CONSTRAINT [fk_FactIntegrationTransaction_FactFinancialTxID] FOREIGN KEY ([FactFinancialTxID]) REFERENCES [Finance].[FactFinancialTransaction] ([FactFinancialTxID])
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_FactIntegrationTransaction_SourceKey]
    ON [Shared].[FactIntegrationTransaction]([SourceKey] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'LoadGroup', @value = N'1', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'FactIntegrationTransaction';

