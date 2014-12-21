CREATE TABLE [Staging].[Dim_HoldingFinancialAccount] (
    [AccountNumber]                     NVARCHAR (20) NULL,
    [DeltaHash]                         BIGINT        NULL,
    [DimHoldingFinancialAccountID]      INT           NULL,
    [SourceKey]                         INT           NOT NULL,
    [SourceKeyHash]                     BIGINT        NULL,
    [Dim_CurrencySourceKey]             VARCHAR (255) NULL,
    [Dim_FinancialAccountTypeSourceKey] VARCHAR (255) NULL,
    [Dim_GLCodeSourceKey]               INT           NULL,
    [Dim_PagaAccountSourceKey]          INT           NOT NULL
);

