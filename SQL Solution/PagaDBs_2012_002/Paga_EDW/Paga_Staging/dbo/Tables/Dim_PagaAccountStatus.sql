CREATE TABLE [dbo].[Dim_PagaAccountStatus] (
    [PagaAccountStatus_SourceKey] VARCHAR (50) NULL
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimPagaAccountStatus_SourceKey]
    ON [dbo].[Dim_PagaAccountStatus]([PagaAccountStatus_SourceKey] ASC);

