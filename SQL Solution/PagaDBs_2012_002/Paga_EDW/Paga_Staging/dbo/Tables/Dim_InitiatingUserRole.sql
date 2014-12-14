CREATE TABLE [dbo].[Dim_InitiatingUserRole] (
    [DimInitiatingUserRoleID] INT IDENTITY (1, 1) NOT NULL,
    [DimUserID]               INT NULL,
    [DimRoleID]               INT NULL,
    [User_SourceKey]          INT NULL,
    [Role_SourceKey]          INT NULL
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimInitiatingUserRole_SourceKey]
    ON [dbo].[Dim_InitiatingUserRole]([Role_SourceKey] ASC, [User_SourceKey] ASC);

