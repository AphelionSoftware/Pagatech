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
    [SourceKeyHash]             BIGINT          NULL,
    [DeltaHash]                 BIGINT          NULL,
    [sys_CreatedBy]             VARCHAR (255)   DEFAULT (user_name()) NOT NULL,
    [sys_CreatedOn]             DATETIME        DEFAULT (getdate()) NOT NULL,
    [sys_ModifiedBy]            VARCHAR (255)   DEFAULT (user_name()) NOT NULL,
    [sys_ModifiedOn]            DATETIME        DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [pk_FactIntegrationTx] PRIMARY KEY CLUSTERED ([FactIntegrationTxID] ASC),
    CONSTRAINT [fk_FactIntegrationTransaction_DimExternalOrganizationID] FOREIGN KEY ([DimExternalOrganizationID]) REFERENCES [Shared].[DimOrganization] ([DimOrganizationID]),
    CONSTRAINT [fk_FactIntegrationTransaction_DimIntegrationTxDateID] FOREIGN KEY ([DimIntegrationTxDateID]) REFERENCES [Shared].[DimDate] ([DimDateID]),
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
EXECUTE sp_addextendedproperty @name = N'BaseQuery', @value = N'SELECT
	ExternalReferenceNumber,
   	HasFinancialTx,
	IntegrationTx_Amount,
	MessageText,
	SourceKey,
	DimIntegrationTxDateID, 
	DimIntegrationTxTimeID,
	DimExternalOrganizationSourceKey,
	DimIntegrationTransactionResultSourceKey,
	DimIntegrationTransactionTypeSourceKey,
	DimProcessTypeSourceKey,
	DimUserSourceKey,
	FactFinancialTransactionSourceKey
	FROM
(
	SELECT 
		SourceKey = [IntegrationTransactionId],  
		DimIntegrationTxDateID = CONVERT(INT,CONVERT(VARCHAR(8), [IntegrationTransactionTimestamp], 112)),
		DimIntegrationTxTimeID = CONVERT(INT,REPLACE(CONVERT(TIME(0) ,IntegrationTransactionTimestamp),'':'','''')), 
		DimExternalOrganizationSourceKey = CAST([ExternalOrganizationId] AS VARCHAR(300)),
		ExternalOrganization_Name = CAST(it.ExternalOrganizationName AS VARCHAR(300)),
		DimUserSourceKey = [UserId],
		DimIntegrationTransactionTypeSourceKey = CAST([IntegrationTransactionTypeId] AS VARCHAR(50)),
		DimProcessTypeSourceKey = COALESCE(-1,CAST([ProcessTypeId] AS VARCHAR(50))),
		DimIntegrationTransactionResultSourceKey = CAST([IntegrationTransactionResultId] AS VARCHAR(50)),
		[ExternalReferenceNumber] = CAST([ExternalReferenceNumber] AS VARCHAR(50)),
		[MessageText] = CAST([Message] AS VARCHAR(300)),
		IntegrationTx_Amount = [Amount],
		CASE 
			WHEN [FinancialTransactionId] IS NULL THEN CAST(0 AS BIT)
			ELSE CAST (1 AS BIT)
		END AS HasFinancialTx,
		FactFinancialTransactionSourceKey = [FinancialTransactionId]
	FROM [dbo].[IntegrationTransaction] as it
) AS base_query', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'FactIntegrationTransaction';







