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
    [SYS_CHANGE_VERSION]        BIGINT          DEFAULT ((0)) NOT NULL,
    [SYS_CHANGE_OPERATION]      CHAR (1)        DEFAULT ('I') NOT NULL,
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
EXECUTE sp_addextendedproperty @name = N'UpdateQuery', @value = 'MERGE  Paga_EDW.[Finance].[FactFinancialTransaction] AS Target
			USING 
			(
				SELECT
						x.*
				FROM
				(
					SELECT
						ROW_NUMBER() OVER (PARTITION BY stg.SourceKey ORDER BY stg.SYS_CHANGE_VERSION DESC) AS rn,
						stg.*
					FROM Paga_Staging.Updates.Finance_FactFinancialTransaction AS stg
				) as x
				WHERE x.rn = 1

			) AS Source ON 
				Target.sourcekey = Source.sourcekey


			WHEN MATCHED  
			THEN
				UPDATE SET 
				Target.SourceKey = Source.SourceKey,Target.DimEffectiveDateID = Source.DimEffectiveDateID,Target.DimEffectiveTimeID = Source.DimEffectiveTimeID,Target.DimFinancialTxDateID = Source.DimFinancialTxDateID,Target.DimFinancialTxTimeID = Source.DimFinancialTxTimeID,Target.DimFinancialTxTypeID = Source.DimFinancialTxTypeID,Target.DimUserID = Source.DimUserID,Target.FactProcessEventID = Source.FactProcessEventID,Target.Reversed = Source.Reversed,Target.FactRelatedFinancialTxID = Source.FactRelatedFinancialTxID,Target.FactOriginalFinancialTxID = Source.FactOriginalFinancialTxID,Target.DimCurrencyID = Source.DimCurrencyID,Target.TextDescription = Source.TextDescription,Target.FinancialTx_Amount = Source.FinancialTx_Amount,Target.ExchangeRate = Source.ExchangeRate,Target.ExternalReferenceNumber = Source.ExternalReferenceNumber,Target.FinancialTx_Fee = Source.FinancialTx_Fee,Target.ForeignCurrencyAmount = Source.ForeignCurrencyAmount,Target.ReferenceNumber = Source.ReferenceNumber,Target.ShortCode = Source.ShortCode,Target.Cancelled = Source.Cancelled,Target.IsIntegrationTx = Source.IsIntegrationTx,Target.FactIntegrationTxID = Source.FactIntegrationTxID,Target.SYS_CHANGE_VERSION = Source.SYS_CHANGE_VERSION,Target.SYS_CHANGE_OPERATION = Source.SYS_CHANGE_OPERATION
			WHEN NOT MATCHED BY TARGET
			THEN
				INSERT 
				(
					SourceKey,DimEffectiveDateID,DimEffectiveTimeID,DimFinancialTxDateID,DimFinancialTxTimeID,DimFinancialTxTypeID,DimUserID,FactProcessEventID,Reversed,FactRelatedFinancialTxID,FactOriginalFinancialTxID,DimCurrencyID,TextDescription,FinancialTx_Amount,ExchangeRate,ExternalReferenceNumber,FinancialTx_Fee,ForeignCurrencyAmount,ReferenceNumber,ShortCode,Cancelled,IsIntegrationTx,FactIntegrationTxID,SYS_CHANGE_VERSION,SYS_CHANGE_OPERATION
				)
			VALUES 
			(
				Source.SourceKey,Source.DimEffectiveDateID,Source.DimEffectiveTimeID,Source.DimFinancialTxDateID,Source.DimFinancialTxTimeID,Source.DimFinancialTxTypeID,Source.DimUserID,Source.FactProcessEventID,Source.Reversed,Source.FactRelatedFinancialTxID,Source.FactOriginalFinancialTxID,Source.DimCurrencyID,Source.TextDescription,Source.FinancialTx_Amount,Source.ExchangeRate,Source.ExternalReferenceNumber,Source.FinancialTx_Fee,Source.ForeignCurrencyAmount,Source.ReferenceNumber,Source.ShortCode,Source.Cancelled,Source.IsIntegrationTx,Source.FactIntegrationTxID,Source.SYS_CHANGE_VERSION,Source.SYS_CHANGE_OPERATION
			);', @level0type = N'SCHEMA', @level0name = N'Finance', @level1type = N'TABLE', @level1name = N'FactFinancialTransaction';






GO
CREATE NONCLUSTERED INDEX [ix_FactFinancialTransaction_DimUserID]
    ON [Finance].[FactFinancialTransaction]([DimUserID] ASC);


GO
CREATE NONCLUSTERED INDEX [ix_FactFinancialTransaction_ChangeVersion]
    ON [Finance].[FactFinancialTransaction]([SYS_CHANGE_VERSION] ASC);

