CREATE TABLE [Staging].[Dim_InitiatingUserRole] (
    [DeltaHash]               BIGINT        NULL,
    [DimInitiatingUserRoleID] INT           NULL,
    [Name]                    VARCHAR (255) NULL,
    [SourceKey]               INT           NOT NULL,
    [SourceKeyHash]           BIGINT        NULL,
    [Dim_RoleSourceKey]       INT           NOT NULL,
    [Dim_UserSourceKey]       INT           NOT NULL
);

