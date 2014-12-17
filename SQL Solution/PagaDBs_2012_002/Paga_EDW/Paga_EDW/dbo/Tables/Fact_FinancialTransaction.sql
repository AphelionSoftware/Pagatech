CREATE TABLE [dbo].[Fact_FinancialTransaction] (
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
    [Cancelled]                 INT             NULL,
    [IsIntegrationTx]           BIT             NULL,
    [FactIntegrationTxID]       INT             NULL,
    [SourceKeyHash]             BIGINT          NULL,
    [DeltaHash]                 BIGINT          NULL,
    [sys_CreatedBy]             VARCHAR (255)   DEFAULT (user_name()) NOT NULL,
    [sys_CreatedOn]             DATETIME        DEFAULT (getdate()) NOT NULL,
    [sys_ModifiedBy]            VARCHAR (255)   DEFAULT (user_name()) NOT NULL,
    [sys_ModifiedOn]            DATETIME        DEFAULT (getdate()) NOT NULL,
    [DimBusinessTypeID]         INT             NULL,
    CONSTRAINT [pk_FactFinancialTx] PRIMARY KEY CLUSTERED ([FactFinancialTxID] ASC)
);




GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_FactFinancialTransaction_SourceKey]
    ON [dbo].[Fact_FinancialTransaction]([SourceKey] ASC);


GO
CREATE NONCLUSTERED INDEX [ix_FactFinancialTx_DimProcessEventID]
    ON [dbo].[Fact_FinancialTransaction]([FactProcessEventID] ASC);




GO
CREATE NONCLUSTERED INDEX [ix_FactFinancialTransaction_TxDate_NotCancelled]
    ON [dbo].[Fact_FinancialTransaction]([DimFinancialTxDateID] ASC, [Cancelled] ASC)
    INCLUDE([DimFinancialTxTypeID], [FactProcessEventID]) WHERE ([Cancelled]=(0));

