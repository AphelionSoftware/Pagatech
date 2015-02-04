CREATE TABLE [Errors].[Finance_FactFinancialTransaction] (
    [QueueID]                              INT             NOT NULL,
    [SSISErrorCode]                        INT             NOT NULL,
    [SSISErrorColumn]                      INT             NOT NULL,
    [PackageName]                          VARCHAR (255)   NOT NULL,
    [ErrorType]                            VARCHAR (255)   NOT NULL,
    [Cancelled]                            INT             NULL,
    [DimBusinessTypeSourceKey]             VARCHAR (255)   NULL,
    [DimCurrencySourceKey]                 VARCHAR (255)   NULL,
    [DimEffectiveDateID]                   INT             NULL,
    [DimEffectiveTimeID]                   INT             NULL,
    [DimFinancialTransactionTypeSourceKey] VARCHAR (255)   NULL,
    [DimFinancialTxDateID]                 INT             NULL,
    [DimFinancialTxTimeID]                 INT             NULL,
    [DimUserSourceKey]                     INT             NULL,
    [ExchangeRate]                         DECIMAL (16, 4) NULL,
    [ExternalReferenceNumber]              VARCHAR (100)   NULL,
    [FactIntegrationTransactionSourceKey]  INT             NULL,
    [FactOriginalFinancialTxID]            INT             NULL,
    [FactProcessEventSourceKey]            INT             NULL,
    [FacttRelaedFinancialTxID]             INT             NULL,
    [FinancialTx_Amount]                   DECIMAL (18, 2) NULL,
    [FinancialTx_Fee]                      DECIMAL (18, 2) NULL,
    [ForeignCurrencyAmount]                DECIMAL (18, 2) NULL,
    [IsIntegrationTx]                      BIT             NULL,
    [ReferenceNumber]                      VARCHAR (50)    NULL,
    [Reversed]                             BIT             NOT NULL,
    [ShortCode]                            VARCHAR (10)    NULL,
    [SourceKey]                            INT             NOT NULL,
    [TextDescription]                      VARCHAR (100)   NULL
);









