﻿CREATE TABLE [Staging].[Finance_FactFinancialTxHeader] (
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
    [DimFinancialTxSubTypeSourceKey] VARCHAR (255)   NULL,
    [DimFinancialTxTypeSourceKey]    VARCHAR (255)   NOT NULL,
    [DimOrganizationUnitLevel4SourceKey]      VARCHAR (255)   NULL,
    [DimUserSourceKey]                        VARCHAR (255)   NULL,
    [FactProcessTxSourceKey]                  INT             NOT NULL,
    [OriginalFactFinancialTxHeaderSourceKey]  INT             NULL,
    [RelatedFactFinancialTxHeaderSourceKey]   INT             NULL,
    [change_operation]                        CHAR (1)        DEFAULT ((1)) NOT NULL
);













