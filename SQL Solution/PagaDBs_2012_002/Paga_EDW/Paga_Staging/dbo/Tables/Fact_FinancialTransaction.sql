CREATE TABLE [dbo].[Fact_FinancialTransaction] (
    [SourceKey]                     INT             NOT NULL,
    [DimEffectiveDateID]            INT             NULL,
    [DimEffectiveTimeID]            INT             NULL,
    [DimFinancialTxDateID]          INT             NULL,
    [DimFinancialTxTimeID]          INT             NULL,
    [FinancialTxType_SourceKey]     VARCHAR (50)    NULL,
    [FinancialTxSubType_SourceKey]  VARCHAR (50)    NULL,
    [User_SourceKey]                INT             NULL,
    [ProcessEvent_SourceKey]        INT             NULL,
    [Reversed]                      BIT             NOT NULL,
    [RelatedFinancialTx_SourceKey]  INT             NULL,
    [OriginalFinancialTx_SourceKey] INT             NULL,
    [Currency_SourceKey]            VARCHAR (50)    NULL,
    [TextDescription]               VARCHAR (100)   NULL,
    [FinancialTx_Amount]            DECIMAL (18, 2) NULL,
    [ExchangeRate]                  DECIMAL (16, 4) NULL,
    [ExternalReferenceNumber]       VARCHAR (100)   NULL,
    [FinancialTx_Fee]               DECIMAL (18, 2) NULL,
    [ForeignCurrencyAmount]         DECIMAL (18, 2) NULL,
    [ReferenceNumber]               VARCHAR (50)    NULL,
    [ShortCode]                     VARCHAR (10)    NULL,
    [Cancelled]                     INT             NULL,
    [IsIntegrationTx]               BIT             NULL,
    [FactIntegrationTx_SourceKey]   INT             NULL
);


GO
CREATE UNIQUE CLUSTERED INDEX [ix_FinancialTransaction_SourceKey]
    ON [dbo].[Fact_FinancialTransaction]([SourceKey] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_IsIntegrationTx]
    ON [dbo].[Fact_FinancialTransaction]([IsIntegrationTx] ASC, [SourceKey] ASC) WHERE ([IsIntegrationTx]=(1));


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_FactFinancialTransaction_SourceKey]
    ON [dbo].[Fact_FinancialTransaction]([SourceKey] ASC);

