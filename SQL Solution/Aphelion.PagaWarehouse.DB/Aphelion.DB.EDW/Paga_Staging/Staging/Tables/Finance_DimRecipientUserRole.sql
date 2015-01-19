﻿CREATE TABLE [Staging].[Finance_DimRecipientUserRole] (
    [DimRecipientUserRoleID] INT           NULL,
    [DeltaHash]              BIGINT        NULL,
    [Name]                   VARCHAR (255) NULL,
    [SourceKey]              INT           NOT NULL,
    [SourceKeyHash]          BIGINT        NULL,
    [DimRoleSourceKey]       INT           NOT NULL,
    [DimUserSourceKey]       INT           NOT NULL,
    [SYS_CHANGE_OPERATION]   CHAR (1)      DEFAULT ('I') NOT NULL
);



