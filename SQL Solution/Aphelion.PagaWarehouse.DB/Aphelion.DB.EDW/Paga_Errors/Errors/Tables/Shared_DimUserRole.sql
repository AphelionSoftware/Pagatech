CREATE TABLE [Errors].[Shared_DimUserRole] (
    [QueueID]              INT           NOT NULL,
    [SSISErrorCode]        INT           NOT NULL,
    [SSISErrorColumn]      INT           NOT NULL,
    [PackageName]          VARCHAR (255) NOT NULL,
    [ErrorType]            VARCHAR (255) NOT NULL,
    [SourceKey]            INT           NOT NULL,
    [Name]                 VARCHAR (255) NULL,
    [UserSourceKey]        INT           NOT NULL,
    [RoleSourceKey]        INT           NOT NULL,
    [RolePriority]         SMALLINT      NOT NULL,
    [SYS_CHANGE_VERSION]   BIGINT        NOT NULL,
    [SYS_CHANGE_OPERATION] CHAR (1)      NOT NULL
);

