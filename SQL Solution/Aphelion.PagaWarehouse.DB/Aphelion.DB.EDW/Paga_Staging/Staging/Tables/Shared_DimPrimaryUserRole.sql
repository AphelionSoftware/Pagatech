CREATE TABLE [Staging].[Shared_DimPrimaryUserRole] (
    [Name]             VARCHAR (255) NULL,
    [SourceKey]        INT           NOT NULL,
    [DimRoleSourceKey] INT           NOT NULL,
    [DimUserSourceKey] INT           NOT NULL
);

