﻿CREATE TABLE [Errors].[Shared_DimPrimaryUserRole] (
    [QueueID]          INT           NOT NULL,
    [SSISErrorCode]    INT           NOT NULL,
    [SSISErrorColumn]  INT           NOT NULL,
    [PackageName]      VARCHAR (255) NOT NULL,
    [ErrorType]        VARCHAR (255) NOT NULL,
    [DimRoleSourceKey] INT           NOT NULL,
    [DimUserSourceKey] INT           NOT NULL,
    [Name]             VARCHAR (255) NULL,
    [SourceKey]        INT           NOT NULL
);

