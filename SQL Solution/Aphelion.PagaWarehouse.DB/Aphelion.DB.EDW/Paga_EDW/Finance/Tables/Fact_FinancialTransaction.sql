CREATE TABLE [Finance].[FactFinancialTransaction] (
    [FactFinancialTxID]         INT             IDENTITY (1, 1) NOT NULL,
    [SourceKey]                 INT             NOT NULL,
    [DimEffectiveDateID]        INT             NULL,
    [DimEffectiveTimeID]        INT             NULL,
    [DimFinancialTxDateID]      INT             NULL,
    [DimFinancialTxTimeID]      INT             NULL,
    [DimFinancialTxTypeID]      INT             NULL,
    [DimUserID]                 INT             NULL,
    [FactProcessEventID]        INT             NULL,
    [Reversed]                  BIT             NOT NULL,
    [FactRelatedFinancialTxID]  INT             NULL,
    [FactOriginalFinancialTxID] INT             NULL,
    [DimCurrencyID]             INT             NULL,
    [TextDescription]           VARCHAR (100)   NULL,
    [FinancialTx_Amount]        DECIMAL (18, 2) NULL,
    [ExchangeRate]              DECIMAL (16, 4) NULL,
    [ExternalReferenceNumber]   VARCHAR (100)   NULL,
    [FinancialTx_Fee]           DECIMAL (18, 2) NULL,
    [ForeignCurrencyAmount]     DECIMAL (18, 2) NULL,
    [ReferenceNumber]           VARCHAR (50)    NULL,
    [ShortCode]                 VARCHAR (10)    NULL,
    [Cancelled]                 BIT             DEFAULT ((0)) NULL,
    [IsIntegrationTx]           BIT             NULL,
    [FactIntegrationTxID]       INT             NULL,
    [sys_CreatedBy]             VARCHAR (255)   DEFAULT (user_name()) NOT NULL,
    [sys_CreatedOn]             DATETIME        DEFAULT (getdate()) NOT NULL,
    [sys_ModifiedBy]            VARCHAR (255)   DEFAULT (user_name()) NOT NULL,
    [sys_ModifiedOn]            DATETIME        DEFAULT (getdate()) NOT NULL,
    [IsActive]                  BIT             DEFAULT ((1)) NOT NULL,
    CONSTRAINT [pk_FactFinancialTx] PRIMARY KEY CLUSTERED ([FactFinancialTxID] ASC),
    CONSTRAINT [fk_FactFinancialTransaction_DimCurrencyID] FOREIGN KEY ([DimCurrencyID]) REFERENCES [Finance].[DimCurrency] ([DimCurrencyID]),
    CONSTRAINT [fk_FactFinancialTransaction_DimEffectiveDateID] FOREIGN KEY ([DimEffectiveDateID]) REFERENCES [Shared].[DimDate] ([DateID]),
    CONSTRAINT [fk_FactFinancialTransaction_DimEffectiveTimeID] FOREIGN KEY ([DimEffectiveTimeID]) REFERENCES [Shared].[DimTime] ([DimTimeID]),
    CONSTRAINT [fk_FactFinancialTransaction_DimFinancialTxDateID] FOREIGN KEY ([DimFinancialTxDateID]) REFERENCES [Shared].[DimDate] ([DateID]),
    CONSTRAINT [fk_FactFinancialTransaction_DimFinancialTxTimeID] FOREIGN KEY ([DimFinancialTxTimeID]) REFERENCES [Shared].[DimTime] ([DimTimeID]),
    CONSTRAINT [fk_FactFinancialTransaction_DimFinancialTxTypeID] FOREIGN KEY ([DimFinancialTxTypeID]) REFERENCES [Classification].[DimFinancialTransactionType] ([DimFinancialTxTypeID]),
    CONSTRAINT [fk_FactFinancialTransaction_DimUserID] FOREIGN KEY ([DimUserID]) REFERENCES [Shared].[DimUser] ([DimUserID]),
    CONSTRAINT [fk_FactFinancialTransaction_FactIntegrationTxID] FOREIGN KEY ([FactIntegrationTxID]) REFERENCES [Shared].[FactIntegrationTransaction] ([FactIntegrationTxID]),
    CONSTRAINT [fk_FactFinancialTransaction_FactOriginalFinancialTxID] FOREIGN KEY ([FactOriginalFinancialTxID]) REFERENCES [Finance].[FactFinancialTransaction] ([FactFinancialTxID]),
    CONSTRAINT [fk_FactFinancialTransaction_FactProcessEventID] FOREIGN KEY ([FactProcessEventID]) REFERENCES [Shared].[FactProcessEvent] ([FactProcessEventID]),
    CONSTRAINT [fk_FactFinancialTransaction_FactRelatedFinancialTxID] FOREIGN KEY ([FactRelatedFinancialTxID]) REFERENCES [Finance].[FactFinancialTransaction] ([FactFinancialTxID])
);






















GO



GO
CREATE NONCLUSTERED INDEX [ix_FactFinancialTx_DimProcessEventID]
    ON [Finance].[FactFinancialTransaction]([FactProcessEventID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_FactFinancialTransaction_SourceKey]
    ON [Finance].[FactFinancialTransaction]([SourceKey] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'SourceTable', @value = N'dbo.FinancialTransaction', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'FactFinancialTransaction';


GO
EXECUTE sp_addextendedproperty @name = N'LoadOrder', @value = N'9', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'FactFinancialTransaction';


GO
EXECUTE sp_addextendedproperty @name = N'LoadGroup', @value = N'3200', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'FactFinancialTransaction';






GO
EXECUTE sp_addextendedproperty @name = N'KeyColumn', @value = N'FinancialTransactionId', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'FactFinancialTransaction';


GO
EXECUTE sp_addextendedproperty @name = N'BaseQuery', @value = N'PlaceHolder', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'FactFinancialTransaction';


GO
EXECUTE sp_addextendedproperty @name = N'UpdateQuery', @value = N'UPDATE edw 
	SET 
	edw.SourceKey = stg.SourceKey,edw.DimEffectiveDateID = stg.DimEffectiveDateID,edw.DimEffectiveTimeID = stg.DimEffectiveTimeID,edw.DimFinancialTxDateID = stg.DimFinancialTxDateID,edw.DimFinancialTxTimeID = stg.DimFinancialTxTimeID,edw.DimFinancialTxTypeID = stg.DimFinancialTxTypeID,edw.DimUserID = stg.DimUserID,edw.FactProcessEventID = stg.FactProcessEventID,edw.Reversed = stg.Reversed,edw.FactRelatedFinancialTxID = stg.FactRelatedFinancialTxID,edw.FactOriginalFinancialTxID = stg.FactOriginalFinancialTxID,edw.DimCurrencyID = stg.DimCurrencyID,edw.TextDescription = stg.TextDescription,edw.FinancialTx_Amount = stg.FinancialTx_Amount,edw.ExchangeRate = stg.ExchangeRate,edw.ExternalReferenceNumber = stg.ExternalReferenceNumber,edw.FinancialTx_Fee = stg.FinancialTx_Fee,edw.ForeignCurrencyAmount = stg.ForeignCurrencyAmount,edw.ReferenceNumber = stg.ReferenceNumber,edw.ShortCode = stg.ShortCode,edw.Cancelled = stg.Cancelled,edw.IsIntegrationTx = stg.IsIntegrationTx,edw.FactIntegrationTxID = stg.FactIntegrationTxID
	FROM Finance.FactFinancialTransaction AS edw
	INNER JOIN Paga_Staging.Updates.Finance_FactFinancialTransaction AS stg ON
		edw.SourceKey = stg.SourceKey;
	GO', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'FactFinancialTransaction';

