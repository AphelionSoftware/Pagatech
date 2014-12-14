CREATE TABLE [dbo].[Dim_Role] (
    [DimRoleID]         INT            IDENTITY (1, 1) NOT NULL,
    [SourceKey]         INT            NOT NULL,
    [DescriptionText]   NVARCHAR (255) NULL,
    [Name]              NVARCHAR (50)  NULL,
    [SystemDescription] VARCHAR (100)  NULL
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimRole_SourceKey]
    ON [dbo].[Dim_Role]([SourceKey] ASC);

