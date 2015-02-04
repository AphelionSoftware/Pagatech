CREATE TABLE [Staging].[Finance_FactFinancialTransaction] (
    [Cancelled]                            INT             NULL,
    [ExchangeRate]                         DECIMAL (16, 4) NULL,
    [ExternalReferenceNumber]              VARCHAR (100)   NULL,
    [FinancialTx_Amount]                   DECIMAL (18, 2) NULL,
    [FinancialTx_Fee]                      DECIMAL (18, 2) NULL,
    [ForeignCurrencyAmount]                DECIMAL (18, 2) NULL,
    [IsIntegrationTx]                      BIT             NULL,
    [ReferenceNumber]                      VARCHAR (50)    NULL,
    [Reversed]                             BIT             NOT NULL,
    [ShortCode]                            VARCHAR (10)    NULL,
    [SourceKey]                            INT             NOT NULL,
    [TextDescription]                      VARCHAR (100)   NULL,
    [DimEffectiveDateID]                   INT             NULL,
    [DimEffectiveTimeID]                   INT             NULL,
    [DimFinancialTxDateID]                 INT             NULL,
    [DimFinancialTxTimeID]                 INT             NULL,
    [DimCurrencySourceKey]                 VARCHAR (255)   NULL,
    [DimFinancialTransactionTypeSourceKey] VARCHAR (255)   NULL,
    [DimUserSourceKey]                     INT             NULL,
    [FactIntegrationTransactionSourceKey]  INT             NULL,
    [FactOriginalFinancialTxID]            INT             NULL,
    [FactProcessEventSourceKey]            INT             NULL,
    [FactRelatedFinancialTxID]             INT             NULL,
    [SYS_CHANGE_VERSION]                   BIGINT          DEFAULT ((0)) NOT NULL,
    [SYS_CHANGE_OPERATION]                 CHAR (1)        DEFAULT ('I') NOT NULL
);


















GO
CREATE UNIQUE CLUSTERED INDEX [ix_Finance_FactFinancialTransaction]
    ON [Staging].[Finance_FactFinancialTransaction]([SourceKey] ASC, [SYS_CHANGE_VERSION] ASC, [SYS_CHANGE_OPERATION] ASC);

