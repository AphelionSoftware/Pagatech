CREATE TABLE [Updates].[Finance_FactFinancialTransaction] (
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
    [SYS_CHANGE_VERSION]        BIGINT          DEFAULT ((0)) NOT NULL,
    [SYS_CHANGE_OPERATION]      CHAR (1)        DEFAULT ('I') NOT NULL
);




GO
CREATE CLUSTERED INDEX [ix_Finance_FactFinancialTransaction_SourceKey]
    ON [Updates].[Finance_FactFinancialTransaction]([SourceKey] ASC, [SYS_CHANGE_VERSION] DESC);

