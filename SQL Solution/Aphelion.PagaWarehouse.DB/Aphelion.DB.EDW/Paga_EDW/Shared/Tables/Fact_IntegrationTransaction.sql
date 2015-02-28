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
    [MessageText]               VARCHAR (300)   NULL,
    [IntegrationTx_Amount]      DECIMAL (18, 2) NULL,
    [HasFinancialTx]            INT             NOT NULL,
    [FactFinancialTxID]         INT             NULL,
    [sys_CreatedBy]             VARCHAR (255)   DEFAULT (user_name()) NOT NULL,
    [sys_CreatedOn]             DATETIME        DEFAULT (getdate()) NOT NULL,
    [sys_ModifiedBy]            VARCHAR (255)   DEFAULT (user_name()) NOT NULL,
    [sys_ModifiedOn]            DATETIME        DEFAULT (getdate()) NOT NULL,
    [IsActive]                  BIT             DEFAULT ((1)) NOT NULL,
    [SYS_CHANGE_VERSION]        BIGINT          DEFAULT ((0)) NOT NULL,
    [SYS_CHANGE_OPERATION]      CHAR (1)        DEFAULT ('I') NOT NULL,
    CONSTRAINT [pk_FactIntegrationTx] PRIMARY KEY CLUSTERED ([FactIntegrationTxID] ASC),
    CONSTRAINT [fk_FactIntegrationTransaction_DimExternalOrganizationID] FOREIGN KEY ([DimExternalOrganizationID]) REFERENCES [Shared].[DimOrganization] ([DimOrganizationID]),
    CONSTRAINT [fk_FactIntegrationTransaction_DimIntegrationTxDateID] FOREIGN KEY ([DimIntegrationTxDateID]) REFERENCES [Shared].[DimDate] ([DateID]),
    CONSTRAINT [fk_FactIntegrationTransaction_DimIntegrationTxResultID] FOREIGN KEY ([DimIntegrationTxResultID]) REFERENCES [Classification].[DimIntegrationTransactionResult] ([DimIntegrationTxResultID]),
    CONSTRAINT [fk_FactIntegrationTransaction_DimIntegrationTxTimeID] FOREIGN KEY ([DimIntegrationTxTimeID]) REFERENCES [Shared].[DimTime] ([DimTimeID]),
    CONSTRAINT [fk_FactIntegrationTransaction_DimIntegrationTxTypeID] FOREIGN KEY ([DimIntegrationTxTypeID]) REFERENCES [Classification].[DimIntegrationTransactionType] ([DimIntegrationTxTypeID]),
    CONSTRAINT [fk_FactIntegrationTransaction_DimProcessTypeID] FOREIGN KEY ([DimProcessTypeID]) REFERENCES [Classification].[DimProcessType] ([DimProcessTypeID]),
    CONSTRAINT [fk_FactIntegrationTransaction_DimUserID] FOREIGN KEY ([DimUserID]) REFERENCES [Shared].[DimUser] ([DimUserID]),
    CONSTRAINT [fk_FactIntegrationTransaction_FactFinancialTxID] FOREIGN KEY ([FactFinancialTxID]) REFERENCES [Finance].[FactFinancialTransaction] ([FactFinancialTxID])
);


























GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_FactIntegrationTransaction_SourceKey]
    ON [Shared].[FactIntegrationTransaction]([SourceKey] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'LoadGroup', @value = N'3100', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'FactIntegrationTransaction';










GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'dbo.IntegrationTransaction', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'FactIntegrationTransaction';


GO
EXECUTE sp_addextendedproperty @name = N'LoadOrder', @value = N'11', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'FactIntegrationTransaction';




GO
EXECUTE sp_addextendedproperty @name = N'KeyColumn', @value = N'IntegrationTransactionId', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'FactIntegrationTransaction';


GO
EXECUTE sp_addextendedproperty @name = N'BaseQuery', @value = N'PlaceHolder', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'FactIntegrationTransaction';










GO
EXECUTE sp_addextendedproperty @name = N'UpdateQuery', @value = N'UPDATE edw 
	SET 
	edw.SourceKey = stg.SourceKey,edw.DimIntegrationTxDateID = stg.DimIntegrationTxDateID,edw.DimIntegrationTxTimeID = stg.DimIntegrationTxTimeID,edw.DimExternalOrganizationID = stg.DimExternalOrganizationID,edw.DimUserID = stg.DimUserID,edw.DimIntegrationTxTypeID = stg.DimIntegrationTxTypeID,edw.DimProcessTypeID = stg.DimProcessTypeID,edw.DimIntegrationTxResultID = stg.DimIntegrationTxResultID,edw.ExternalReferenceNumber = stg.ExternalReferenceNumber,edw.MessageText = stg.MessageText,edw.IntegrationTx_Amount = stg.IntegrationTx_Amount,edw.HasFinancialTx = stg.HasFinancialTx,edw.FactFinancialTxID = stg.FactFinancialTxID
	FROM Shared.FactIntegrationTransaction AS edw
	INNER JOIN Paga_Staging.Updates.Shared_FactIntegrationTransaction AS stg ON
		edw.SourceKey = stg.SourceKey;
	GO', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'FactIntegrationTransaction';

