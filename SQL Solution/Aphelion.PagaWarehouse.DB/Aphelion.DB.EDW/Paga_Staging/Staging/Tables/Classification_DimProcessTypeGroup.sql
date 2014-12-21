﻿CREATE TABLE [Staging].[Classification_DimProcessTypeGroup] (
    [DimProcessTypeGroupID] INT           NULL,
    [DeltaHash]             BIGINT        NULL,
    [Name]                  VARCHAR (255) NOT NULL,
    [SourceKey]             VARCHAR (255) NOT NULL,
    [SourceKeyHash]         BIGINT        NULL
);

