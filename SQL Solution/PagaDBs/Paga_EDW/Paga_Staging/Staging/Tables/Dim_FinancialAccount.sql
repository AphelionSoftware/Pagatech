CREATE TABLE [Staging].[Dim_FinancialAccount] (
    [AccountNumber]                        NVARCHAR (20) NULL,
    [DeltaHash]                            BIGINT        NULL,
    [DimFinancialAccountID]                INT           NULL,
    [SourceKey]                            INT           NOT NULL,
    [SourceKeyHash]                        BIGINT        NULL,
    [Dim_CurrencySourceKey]                VARCHAR (255) NULL,
    [Dim_FinancialAccountTypeSourceKey]    VARCHAR (255) NOT NULL,
    [Dim_GLCodeSourceKey]                  INT           NOT NULL,
    [Dim_HoldingFinancialAccountSourceKey] INT           NULL,
    [Dim_PagaAccountSourceKey]             INT           NOT NULL
);

