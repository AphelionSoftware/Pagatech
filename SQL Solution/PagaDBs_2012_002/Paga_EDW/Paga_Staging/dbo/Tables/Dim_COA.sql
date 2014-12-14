CREATE TABLE [dbo].[Dim_COA] (
    [SourceKey] INT            NULL,
    [name]      NVARCHAR (100) NULL
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimCOA_SourceKey]
    ON [dbo].[Dim_COA]([SourceKey] ASC);

