﻿CREATE TABLE [Staging].[Classification_DimProcessType] (
    [DimProcessTypeID] INT            NULL,
    [DeltaHash]        BIGINT         NULL,
    [DescriptionText]  VARCHAR (1000) NULL,
    [Name]             VARCHAR (255)  NOT NULL,
    [SourceKey]        VARCHAR (255)  NOT NULL,
    [SourceKeyHash]    BIGINT         NULL
);



