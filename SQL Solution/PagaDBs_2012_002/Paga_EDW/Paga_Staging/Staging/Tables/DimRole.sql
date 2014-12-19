CREATE TABLE [Staging].[DimRole] (
    [DimRoleID]      INT            NULL,
    [DeltaHash]      BIGINT         NULL,
    [Name]           VARCHAR (255)  NOT NULL,
    [RoleGroupName]  VARCHAR (255)  NOT NULL,
    [SourceKey]      VARCHAR (255)  NOT NULL,
    [SourceKeyHash]  BIGINT         NULL,
    [TextDesciption] VARCHAR (1000) NULL
);

