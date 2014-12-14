CREATE TABLE [dbo].[Fact_IntegrationTransaction] (
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
    CONSTRAINT [fk_Fact_IntegrationTransaction_DimExternalOrganizationID] FOREIGN KEY ([DimExternalOrganizationID]) REFERENCES [dbo].[Dim_ExternalOrganization] ([DimExternalOrganizationID]),
    CONSTRAINT [fk_Fact_IntegrationTransaction_DimIntegrationTxDateID] FOREIGN KEY ([DimIntegrationTxDateID]) REFERENCES [dbo].[Dim_Date] ([DimDateID]),
    CONSTRAINT [fk_Fact_IntegrationTransaction_DimIntegrationTxResultID] FOREIGN KEY ([DimIntegrationTxResultID]) REFERENCES [dbo].[Dim_IntegrationTransactionResult] ([DimIntegrationTxResultID]),
    CONSTRAINT [fk_Fact_IntegrationTransaction_DimIntegrationTxTimeID] FOREIGN KEY ([DimIntegrationTxTimeID]) REFERENCES [dbo].[Dim_Time] ([DimTimeID]),
    CONSTRAINT [fk_Fact_IntegrationTransaction_DimIntegrationTxTypeID] FOREIGN KEY ([DimIntegrationTxTypeID]) REFERENCES [dbo].[Dim_IntegrationTransactionType] ([DimIntegrationTxTypeID]),
    CONSTRAINT [fk_Fact_IntegrationTransaction_DimProcessTypeID] FOREIGN KEY ([DimProcessTypeID]) REFERENCES [dbo].[Dim_ProcessType] ([DimProcessTypeID]),
    CONSTRAINT [fk_Fact_IntegrationTransaction_DimUserID] FOREIGN KEY ([DimUserID]) REFERENCES [dbo].[Dim_User] ([DimUserID]),
    CONSTRAINT [fk_Fact_IntegrationTransaction_FactFinancialTxID] FOREIGN KEY ([FactFinancialTxID]) REFERENCES [dbo].[Fact_FinancialTransaction] ([FactFinancialTxID])
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_FactIntegrationTransaction_SourceKey]
    ON [dbo].[Fact_IntegrationTransaction]([SourceKey] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'LoadGroup', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Fact_IntegrationTransaction';

