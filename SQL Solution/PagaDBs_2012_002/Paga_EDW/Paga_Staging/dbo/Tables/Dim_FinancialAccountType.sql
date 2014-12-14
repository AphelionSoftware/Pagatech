CREATE TABLE [dbo].[Dim_FinancialAccountType] (
    [SourceKey] VARCHAR (100) NULL
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimFinancialAccountType_SourceKey]
    ON [dbo].[Dim_FinancialAccountType]([SourceKey] ASC);

