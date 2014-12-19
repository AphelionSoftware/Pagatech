CREATE TABLE [Staging].[DimChartOfAccounts] (
    [DimChartOfAccountsID] INT           NULL,
    [DeltaHash]            BIGINT        NULL,
    [GLCodeRange]          VARCHAR (255) NULL,
    [Name]                 VARCHAR (255) NOT NULL,
    [SourceKey]            VARCHAR (255) NOT NULL,
    [SourceKeyHash]        BIGINT        NULL
);

