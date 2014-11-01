CREATE TABLE [Mapping].[UserRoleMapping] (
    [UserRoleMappingID] INT IDENTITY (1, 1) NOT NULL,
    [DimUserID]         INT NOT NULL,
    [UserSourceKey]     INT NOT NULL,
    [DimRoleID]         INT NOT NULL,
    [RoleSourceKey]     INT NULL
);

