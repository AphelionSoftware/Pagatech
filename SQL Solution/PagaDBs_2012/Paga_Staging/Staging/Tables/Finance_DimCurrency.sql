CREATE TABLE [Staging].[Finance_DimCurrency] (
    [DimCurrencyID]    INT           NULL,
    [Code]             VARCHAR (50)  NOT NULL,
    [ISOCode]          CHAR (3)      NULL,
    [Name]             VARCHAR (255) NOT NULL,
    [SourceKey]        VARCHAR (255) NOT NULL,
    [Symbol]           VARCHAR (3)   NULL,
    [change_operation] CHAR (1)      DEFAULT ((1)) NOT NULL
);





