﻿CREATE TABLE [Errors].[Location_DimLocalGovernmentArea] (
    [QueueID]                 INT           NOT NULL,
    [SSISErrorCode]           INT           NOT NULL,
    [SSISErrorColumn]         INT           NOT NULL,
    [PackageName]             VARCHAR (255) NOT NULL,
    [ErrorType]               VARCHAR (255) NOT NULL,
    [Code]                    VARCHAR (50)  NOT NULL,
    [LocalGovernmentAreaCode] VARCHAR (5)   NULL,
    [Name]                    VARCHAR (255) NOT NULL,
    [RegionSourceKey]         INT           NOT NULL
);

