CREATE TABLE [Staging].[Finance_FactFinancialTxHeader] (
    [Amount]                                  DECIMAL (18, 2) NULL,
    [ExchangeRate]                            DECIMAL (16, 4) NULL,
    [ExternalReferenceNumber]                 VARCHAR (100)   NULL,
    [Fee]                                     DECIMAL (18, 2) NULL,
    [ForeignCurrencyAmount]                   DECIMAL (18, 2) NULL,
    [ReferenceNumber]                         VARCHAR (50)    NULL,
    [ShortCode]                               VARCHAR (10)    NOT NULL,
    [SourceKey]                               INT             NOT NULL,
    [TextDescription]                         VARCHAR (100)   NOT NULL,
    [DimCreatedDateID]                        INT             NOT NULL,
    [DimCreatedTimeID]                        INT             NOT NULL,
    [DimEffectiveDateID]                      INT             NOT NULL,
    [DimEffectiveTimeID]                      INT             NOT NULL,
    [DimTransactionDateID]                    INT             NOT NULL,
    [DimTransactionTimeID]                    INT             NOT NULL,
    [DimCurrencySourceKey]                    VARCHAR (255)   NULL,
    [DimFinancialTxSubTypeSourceKey]          VARCHAR (255)   NULL,
    [DimFinancialTxTypeSourceKey]             VARCHAR (255)   NOT NULL,
    [DimOrganizationUnitLevel4SourceKey]      VARCHAR (255)   NULL,
    [DimUserSourceKey]                        VARCHAR (255)   NULL,
    [FactProcessTxSourceKey]                  INT             NOT NULL,
    [OriginalFactFinancialTxHeaderSourceKey]  INT             NULL,
    [RelatedFactFinancialTxHeaderSourceKey]   INT             NULL,
    [Void]                                    BIT             DEFAULT ((0)) NOT NULL,
    [CancelledFactFinancialTxHeaderSourceKey] INT             NULL,
    [change_operation]                        CHAR (1)        DEFAULT ((1)) NOT NULL
);


















GO
CREATE UNIQUE NONCLUSTERED INDEX [is_FactFinancialTxHeader_TxType]
    ON [Staging].[Finance_FactFinancialTxHeader]([DimFinancialTxTypeSourceKey] ASC, [SourceKey] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [is_FactFinancialTxHeader_TxSubType]
    ON [Staging].[Finance_FactFinancialTxHeader]([DimFinancialTxSubTypeSourceKey] ASC, [SourceKey] ASC);


GO
CREATE UNIQUE CLUSTERED INDEX [is_FactFinancialTxHeader_SourceKey]
    ON [Staging].[Finance_FactFinancialTxHeader]([SourceKey] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [is_FactFinancialTxHeader_FactProcessTxSourceKey]
    ON [Staging].[Finance_FactFinancialTxHeader]([FactProcessTxSourceKey] ASC, [SourceKey] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [is_FactFinancialTxHeader_DimUserID]
    ON [Staging].[Finance_FactFinancialTxHeader]([DimUserSourceKey] ASC, [SourceKey] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [is_FactFinancialTxHeader_DimOrganizationUnitLevel4SourceKey]
    ON [Staging].[Finance_FactFinancialTxHeader]([DimOrganizationUnitLevel4SourceKey] ASC, [SourceKey] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [is_FactFinancialTxHeader_CurrencyID]
    ON [Staging].[Finance_FactFinancialTxHeader]([DimCurrencySourceKey] ASC, [SourceKey] ASC);

