﻿CREATE TABLE [Errors].[DimGLCodeSubGroup] (
    [QueueID]                 INT           NOT NULL,
    [SSISErrorCode]           INT           NOT NULL,
    [SSISErrorColumn]         INT           NOT NULL,
    [PackageName]             VARCHAR (255) NOT NULL,
    [ErrorType]               VARCHAR (255) NOT NULL,
    [DimGLCodeSubGroupID]     INT           NULL,
    [DeltaHash]               BIGINT        NULL,
    [DimGLCodeGroupSourceKey] VARCHAR (255) NOT NULL,
    [GLCodeRange]             VARCHAR (255) NULL,
    [Name]                    VARCHAR (255) NOT NULL,
    [SourceKey]               VARCHAR (255) NOT NULL,
    [SourceKeyHash]           BIGINT        NULL,
    [DimGLCodeGroupID]        INT           NULL
);

