﻿CREATE TABLE [Staging].[Shared_DimPrimaryUserRole] (
    [Name]                 VARCHAR (255) NULL,
    [SourceKey]            INT           NOT NULL,
    [DimRoleSourceKey]     INT           NOT NULL,
    [DimUserSourceKey]     INT           NOT NULL,
    [SYS_CHANGE_VERSION]   BIGINT        DEFAULT ((0)) NOT NULL,
    [SYS_CHANGE_OPERATION] CHAR (1)      DEFAULT ('I') NOT NULL
);






GO
CREATE UNIQUE CLUSTERED INDEX [ix_Shared_DimPrimaryUserRole]
    ON [Staging].[Shared_DimPrimaryUserRole]([SourceKey] ASC, [SYS_CHANGE_VERSION] ASC, [SYS_CHANGE_OPERATION] ASC);

