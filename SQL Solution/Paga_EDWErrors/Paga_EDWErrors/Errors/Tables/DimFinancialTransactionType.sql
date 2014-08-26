﻿CREATE TABLE [Errors].[DimFinancialTransactionType] (
    [QueueID]                       INT            NOT NULL,
    [ErrorCode]                     INT            NOT NULL,
    [ErrorColumn]                   INT            NOT NULL,
    [PackageName]                   VARCHAR (255)  NOT NULL,
    [DimFinancialTransactionTypeID] INT            NULL,
    [Code]                          VARCHAR (50)   NOT NULL,
    [DeltaHash]                     BIGINT         NOT NULL,
    [Description]                   VARCHAR (1000) NULL,
    [Name]                          VARCHAR (255)  NOT NULL,
    [SourceKey]                     VARCHAR (255)  NOT NULL,
    [SourceKeyHash]                 BIGINT         NOT NULL
);



