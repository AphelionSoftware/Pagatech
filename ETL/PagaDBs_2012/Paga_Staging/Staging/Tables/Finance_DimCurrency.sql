CREATE TABLE [Staging].[Finance_DimCurrency] (
    [SourceKey] VARCHAR (255) NOT NULL,
    [Name]      VARCHAR (255) NOT NULL,
    [Code]      VARCHAR (50)  NOT NULL,
    [ISOCode]   CHAR (3)      NULL,
    [Symbol]    VARCHAR (3)   NULL
);

