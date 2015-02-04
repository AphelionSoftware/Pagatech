CREATE TABLE [Staging].[Shared_DimUserRole] (
    [Name]             VARCHAR (255) NULL,
    [RolePriority]     SMALLINT      NOT NULL,
    [SourceKey]        INT           NOT NULL,
    [DimRoleSourceKey] INT           NOT NULL,
    [DimUserSourceKey] INT           NOT NULL
);

