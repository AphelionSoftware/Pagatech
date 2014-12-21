﻿CREATE TABLE [Staging].[Dim_ProcessType] (
    [DeltaHash]        BIGINT        NULL,
    [DimProcessTypeID] INT           NULL,
    [Name]             VARCHAR (255) NULL,
    [SourceKey]        VARCHAR (255) NOT NULL,
    [SourceKeyHash]    BIGINT        NULL
);

