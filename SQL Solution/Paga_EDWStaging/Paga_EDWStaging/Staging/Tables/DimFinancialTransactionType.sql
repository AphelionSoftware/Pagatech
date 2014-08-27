CREATE TABLE [Staging].[DimFinancialTransactionType] (
    [DimFinancialTransactionTypeID] INT            NULL,
    [Code]                          VARCHAR (50)   NOT NULL,
    [DeltaHash]                     BIGINT         NOT NULL,
    [Description]                   VARCHAR (1000) NULL,
    [Name]                          VARCHAR (255)  NOT NULL,
    [SourceKey]                     VARCHAR (255)  NOT NULL,
    [SourceKeyHash]                 BIGINT         NOT NULL
);

