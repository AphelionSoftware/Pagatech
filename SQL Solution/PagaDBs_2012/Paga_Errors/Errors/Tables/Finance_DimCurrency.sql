CREATE TABLE [Errors].[Finance_DimCurrency] (
    [QueueID]         INT           NOT NULL,
    [SSISErrorCode]   INT           NOT NULL,
    [SSISErrorColumn] INT           NOT NULL,
    [PackageName]     VARCHAR (255) NOT NULL,
    [ErrorType]       VARCHAR (255) NOT NULL,
    [Code]            VARCHAR (50)  NOT NULL,
    [ISOCode]         CHAR (3)      NULL,
    [Name]            VARCHAR (255) NOT NULL,
    [Symbol]          VARCHAR (3)   NULL
);

