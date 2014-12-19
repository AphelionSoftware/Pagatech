CREATE TABLE [Staging].[Finance_DimChartOfAccounts] (
    [DimChartOfAccountsID] INT           NULL,
    [DeltaHash]            BIGINT        NULL,
    [GLCodeRange]          VARCHAR (255) NULL,
    [Name]                 VARCHAR (255) NOT NULL,
    [SourceKey]            INT           NOT NULL,
    [SourceKeyHash]        BIGINT        NULL
);

