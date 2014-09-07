﻿CREATE TABLE [Errors].[Finance_FactFinancialTransaction] (
    [QueueID]                                   INT             NOT NULL,
    [SSISErrorCode]                             INT             NOT NULL,
    [SSISErrorColumn]                           INT             NOT NULL,
    [PackageName]                               VARCHAR (255)   NOT NULL,
    [ErrorType]                                 VARCHAR (255)   NOT NULL,
    [change_operation]                          CHAR (1)        NOT NULL,
    [CreditAmount]                              DECIMAL (18, 2) NULL,
    [DebitAmount]                               DECIMAL (18, 2) NULL,
    [DimCreatedDateID]                          INT             NULL,
    [DimCreatedTimeID]                          INT             NULL,
    [DimEffectiveDateID]                        INT             NULL,
    [DimEffectiveTimeID]                        INT             NULL,
    [DimFinancialAccountSourceKey]              VARCHAR (255)   NULL,
    [DimFinancialTransactionTypeSourceKey]      VARCHAR (255)   NULL,
    [DimPagaAccountSourceKey]                   VARCHAR (255)   NULL,
    [DimProcessTypeSourceKey]                   VARCHAR (255)   NULL,
    [DimTransactionDateID]                      INT             NULL,
    [DimTransactionTimeID]                      INT             NULL,
    [DimUserSourceKey]                          VARCHAR (255)   NULL,
    [OriginalFactFinancialTransactionSourceKey] INT             NULL,
    [SourceKey]                                 INT             NOT NULL
);



