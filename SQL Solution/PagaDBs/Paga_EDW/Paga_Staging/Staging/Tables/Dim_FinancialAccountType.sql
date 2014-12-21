CREATE TABLE [Staging].[Dim_FinancialAccountType] (
    [DeltaHash]                 BIGINT        NULL,
    [DimFinancialAccountTypeID] INT           NULL,
    [Name]                      VARCHAR (255) NOT NULL,
    [SourceKey]                 VARCHAR (255) NOT NULL,
    [SourceKeyHash]             BIGINT        NULL
);

