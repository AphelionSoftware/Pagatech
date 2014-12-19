CREATE TABLE [Staging].[Dim_PagaAccount] (
    [DeltaHash]                      BIGINT        NULL,
    [DimPagaAccountID]               INT           NULL,
    [PagaAccountNumber]              VARCHAR (12)  NULL,
    [SourceKey]                      INT           NOT NULL,
    [SourceKeyHash]                  BIGINT        NULL,
    [Dim_BankingStatusSourceKey]     VARCHAR (255) NULL,
    [Dim_PagaAccountStatusSourceKey] VARCHAR (255) NULL
);

