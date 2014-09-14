﻿CREATE TABLE [Errors].[Finance_FactFinancialTxDetail] (
    [QueueID]                        INT             NOT NULL,
    [SSISErrorCode]                  INT             NOT NULL,
    [SSISErrorColumn]                INT             NOT NULL,
    [PackageName]                    VARCHAR (255)   NOT NULL,
    [ErrorType]                      VARCHAR (255)   NOT NULL,
    [change_operation]               CHAR (1)        NOT NULL,
    [CreditAmount]                   DECIMAL (18, 2) NULL,
    [DebitAmount]                    DECIMAL (18, 2) NULL,
    [DimCreatedDateID]               INT             NOT NULL,
    [DimCreatedTimeID]               INT             NOT NULL,
    [DimFinancialAccountSourceKey]   VARCHAR (255)   NULL,
    [DimPagaAccountSourceKey]        VARCHAR (255)   NULL,
    [FactFinancialTxHeaderSourceKey] INT             NOT NULL,
    [SourceKey]                      INT             NOT NULL,
    [TextDescription]                VARCHAR (200)   NOT NULL
);

