﻿CREATE TABLE [Staging].[Dim_IntegrationTransactionType] (
    [DeltaHash]              BIGINT        NULL,
    [DimIntegrationTxTypeID] INT           NULL,
    [Name]                   VARCHAR (255) NULL,
    [SourceKey]              VARCHAR (255) NOT NULL,
    [SourceKeyHash]          BIGINT        NULL
);

