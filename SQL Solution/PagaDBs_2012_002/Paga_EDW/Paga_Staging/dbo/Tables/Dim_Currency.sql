CREATE TABLE [dbo].[Dim_Currency] (
    [SourceKey]    VARCHAR (10)  NOT NULL,
    [Entity]       VARCHAR (300) NOT NULL,
    [CurrencyName] VARCHAR (300) NOT NULL
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ix_DimCurrency_SourceKey]
    ON [dbo].[Dim_Currency]([SourceKey] ASC);

