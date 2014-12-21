﻿CREATE TABLE [Errors].[Location_DimRegion] (
    [QueueID]             INT           NOT NULL,
    [SSISErrorCode]       INT           NOT NULL,
    [SSISErrorColumn]     INT           NOT NULL,
    [PackageName]         VARCHAR (255) NOT NULL,
    [ErrorType]           VARCHAR (255) NOT NULL,
    [DeltaHash]           BIGINT        NULL,
    [DimGeoZoneSourceKey] INT           NOT NULL,
    [DimRegionID]         INT           NULL,
    [Name]                VARCHAR (255) NOT NULL,
    [SourceKey]           INT           NOT NULL,
    [SourceKeyHash]       BIGINT        NULL
);



