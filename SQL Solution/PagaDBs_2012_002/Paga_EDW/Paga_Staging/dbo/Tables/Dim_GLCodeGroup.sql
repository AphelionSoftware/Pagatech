CREATE TABLE [dbo].[Dim_GLCodeGroup] (
    [SourceKey]     INT            NULL,
    [Name]          NVARCHAR (100) NULL,
    [COA_SourceKey] INT            NULL,
    [GLCodeRange]   VARCHAR (50)   NULL
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimGLCodeGroup_SourceKey]
    ON [dbo].[Dim_GLCodeGroup]([SourceKey] ASC);

