CREATE TABLE [Staging].[Finance_FactFinancialTransaction] (
    [Cancelled]                 INT             NULL,
    [DeltaHash]                 BIGINT          NULL,
    [DimBusinessTypeID]         INT             NULL,
    [DimCurrencyID]             INT             NULL,
    [DimEffectiveDateID]        INT             NULL,
    [DimEffectiveTimeID]        INT             NULL,
    [DimFinancialTxDateID]      INT             NULL,
    [DimFinancialTxTimeID]      INT             NULL,
    [DimFinancialTxTypeID]      INT             NULL,
    [DimUserID]                 INT             NULL,
    [ExchangeRate]              DECIMAL (16, 4) NULL,
    [ExternalReferenceNumber]   VARCHAR (100)   NULL,
    [FactFinancialTxID]         INT             NULL,
    [FactIntegrationTxID]       INT             NULL,
    [FactOriginalFinancialTxID] INT             NULL,
    [FactProcessEventID]        INT             NULL,
    [FactRelatedFinancialTxID]  INT             NULL,
    [FinancialTx_Amount]        DECIMAL (18, 2) NULL,
    [FinancialTx_Fee]           DECIMAL (18, 2) NULL,
    [ForeignCurrencyAmount]     DECIMAL (18, 2) NULL,
    [IsIntegrationTx]           BIT             NULL,
    [ReferenceNumber]           VARCHAR (50)    NULL,
    [Reversed]                  BIT             NOT NULL,
    [ShortCode]                 VARCHAR (10)    NULL,
    [SourceKey]                 INT             NOT NULL,
    [SourceKeyHash]             BIGINT          NULL,
    [TextDescription]           VARCHAR (100)   NULL,
    [SYS_CHANGE_OPERATION]      CHAR (1)        DEFAULT ('I') NOT NULL
);



