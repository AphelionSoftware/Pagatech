CREATE TABLE [Staging].[Shared_DimRole] (
    [DimRoleID]      INT            NULL,
    [DeltaHash]      BIGINT         NULL,
    [Name]           VARCHAR (255)  NOT NULL,
    [RoleGroupName]  VARCHAR (255)  NOT NULL,
    [SourceKey]      INT            NOT NULL,
    [SourceKeyHash]  BIGINT         NULL,
    [TextDesciption] VARCHAR (1000) NULL
);

