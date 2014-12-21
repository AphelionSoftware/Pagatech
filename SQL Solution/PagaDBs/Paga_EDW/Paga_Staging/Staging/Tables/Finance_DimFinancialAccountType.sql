CREATE TABLE [Staging].[Finance_DimFinancialAccountType] (
    [DimFinancialAccountTypeID] INT            NULL,
    [DeltaHash]                 BIGINT         NULL,
    [Name]                      VARCHAR (255)  NOT NULL,
    [SourceKey]                 VARCHAR (255)  NOT NULL,
    [SourceKeyHash]             BIGINT         NULL,
    [TextDesciption]            VARCHAR (1000) NULL,
    [DimGLCodeSourceKey]        INT            NOT NULL
);

