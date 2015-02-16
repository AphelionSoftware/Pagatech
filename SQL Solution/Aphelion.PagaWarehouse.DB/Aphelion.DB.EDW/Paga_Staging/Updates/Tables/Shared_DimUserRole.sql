CREATE TABLE [Updates].[Shared_DimUserRole] (
    [SourceKey]    INT           NOT NULL,
    [Name]         VARCHAR (255) NULL,
    [DimUserID]    INT           NOT NULL,
    [DimRoleID]    INT           NOT NULL,
    [RolePriority] SMALLINT      NOT NULL
);

