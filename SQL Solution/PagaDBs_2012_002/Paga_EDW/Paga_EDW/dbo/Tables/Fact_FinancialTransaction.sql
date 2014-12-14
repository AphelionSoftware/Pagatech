CREATE TABLE [dbo].[Fact_FinancialTransaction] (
    [FactFinancialTxID]         INT             IDENTITY (1, 1) NOT NULL,
    [SourceKey]                 INT             NOT NULL,
    [DimEffectiveDateID]        INT             NULL,
    [DimEffectiveTimeID]        INT             NULL,
    [DimFinancialTxDateID]      INT             NULL,
    [DimFinancialTxTimeID]      INT             NULL,
    [DimFinancialTxTypeID]      INT             NULL,
    [DimUserID]                 INT             NULL,
    [DimProcessEventID]         INT             NULL,
	[DimPaymentUseCaseID]       INT             NULL,
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
    [Cancelled]                 INT             NULL,
    [IsIntegrationTx]           BIT             NULL,
	[FactIntegrationTxID]       INT             NULL,
    [SourceKeyHash]             BIGINT          NULL,
    [DeltaHash]                 BIGINT          NULL,
    [sys_CreatedBy]             VARCHAR (255)   DEFAULT (user_name()) NOT NULL,
    [sys_CreatedOn]             DATETIME        DEFAULT (getdate()) NOT NULL,
    [sys_ModifiedBy]            VARCHAR (255)   DEFAULT (user_name()) NOT NULL,
    [sys_ModifiedOn]            DATETIME        DEFAULT (getdate()) NOT NULL,
    
    CONSTRAINT [pk_FactFinancialTx] PRIMARY KEY CLUSTERED ([FactFinancialTxID] ASC),
    CONSTRAINT [fk_Fact_FinancialTransaction_DimCurrencyID] FOREIGN KEY ([DimCurrencyID]) REFERENCES [dbo].[Dim_Currency] ([DimCurrencyID]),
    CONSTRAINT [fk_Fact_FinancialTransaction_DimEffectiveDateID] FOREIGN KEY ([DimEffectiveDateID]) REFERENCES [dbo].[Dim_Date] ([DimDateID]),
    CONSTRAINT [fk_Fact_FinancialTransaction_DimEffectiveTimeID] FOREIGN KEY ([DimEffectiveTimeID]) REFERENCES [dbo].[Dim_Time] ([DimTimeID]),
    CONSTRAINT [fk_Fact_FinancialTransaction_DimFinancialTxDateID] FOREIGN KEY ([DimFinancialTxDateID]) REFERENCES [dbo].[Dim_Date] ([DimDateID]),
    CONSTRAINT [fk_Fact_FinancialTransaction_DimFinancialTxTimeID] FOREIGN KEY ([DimFinancialTxTimeID]) REFERENCES [dbo].[Dim_Time] ([DimTimeID]),
    CONSTRAINT [fk_Fact_FinancialTransaction_DimFinancialTxTypeID] FOREIGN KEY ([DimFinancialTxTypeID]) REFERENCES [dbo].[Dim_FinancialTransactionType] ([DimFinancialTxTypeID]),
    CONSTRAINT [fk_Fact_FinancialTransaction_DimProcessEventID] FOREIGN KEY ([DimProcessEventID]) REFERENCES [dbo].[Dim_ProcessEvent] ([DimProcessEventID]),
    CONSTRAINT [fk_Fact_FinancialTransaction_DimUserID] FOREIGN KEY ([DimUserID]) REFERENCES [dbo].[Dim_User] ([DimUserID]),
    CONSTRAINT [fk_Fact_FinancialTransaction_OriginalFinancialTxID] FOREIGN KEY ([FactOriginalFinancialTxID]) REFERENCES [dbo].[Fact_FinancialTransaction] ([FactFinancialTxID]),
    CONSTRAINT [fk_Fact_FinancialTransaction_RelatedFinancialTxID] FOREIGN KEY ([FactRelatedFinancialTxID]) REFERENCES [dbo].[Fact_FinancialTransaction] ([FactFinancialTxID]),
	CONSTRAINT [fk_Fact_FinancialTransaction_DimPaymentUseCaseID] FOREIGN KEY ([DimPaymentUseCaseID]) REFERENCES [dbo].[Dim_PaymentUseCase] ([DimPaymentUseCaseID]),
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_FactFinancialTransaction_SourceKey]
    ON [dbo].[Fact_FinancialTransaction]([SourceKey] ASC);


GO
CREATE NONCLUSTERED INDEX [ix_FactFinancialTx_DimProcessEventID]
    ON [dbo].[Fact_FinancialTransaction]([DimProcessEventID] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'LoadGroup', @value = N'1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Fact_FinancialTransaction';

