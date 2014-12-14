CREATE TABLE [dbo].[Dim_ExternalOrganization] (
    [DimExternalOrganizationID] INT            IDENTITY (1, 1) NOT NULL,
    [SourceKey]                 INT            NULL,
    [Name]                      NVARCHAR (100) NULL
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimExternalOrganization_SourceKey]
    ON [dbo].[Dim_ExternalOrganization]([SourceKey] ASC, [Name] ASC);

