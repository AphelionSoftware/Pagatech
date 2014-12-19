CREATE TABLE [Staging].[Dim_BankingStatus] (
    [DeltaHash]          BIGINT        NULL,
    [DimBankingStatusID] INT           NULL,
    [Name]               VARCHAR (255) NULL,
    [SourceKey]          VARCHAR (255) NOT NULL,
    [SourceKeyHash]      BIGINT        NULL
);

