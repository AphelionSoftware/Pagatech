CREATE TABLE [Staging].[Dim_RecipientUserRole] (
    [DeltaHash]              BIGINT        NULL,
    [DimRecipientUserRoleID] INT           NULL,
    [Name]                   VARCHAR (255) NULL,
    [SourceKey]              INT           NOT NULL,
    [SourceKeyHash]          BIGINT        NULL,
    [Dim_RoleSourceKey]      INT           NOT NULL,
    [Dim_UserSourceKey]      INT           NOT NULL
);

