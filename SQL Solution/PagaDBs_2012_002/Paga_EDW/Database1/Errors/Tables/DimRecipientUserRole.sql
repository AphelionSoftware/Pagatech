﻿CREATE TABLE [Errors].[DimRecipientUserRole] (
    [QueueID]                INT           NOT NULL,
    [SSISErrorCode]          INT           NOT NULL,
    [SSISErrorColumn]        INT           NOT NULL,
    [PackageName]            VARCHAR (255) NOT NULL,
    [ErrorType]              VARCHAR (255) NOT NULL,
    [DimRecipientUserRoleID] INT           NULL,
    [DeltaHash]              BIGINT        NULL,
    [DimRoleSourceKey]       VARCHAR (255) NOT NULL,
    [DimUserSourceKey]       VARCHAR (255) NOT NULL,
    [Name]                   VARCHAR (255) NULL,
    [SourceKey]              INT           NOT NULL,
    [SourceKeyHash]          BIGINT        NULL,
    [DimRoleID]              INT           NULL,
    [DimUserID]              INT           NULL
);

