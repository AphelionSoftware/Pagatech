CREATE TABLE [Staging].[DimFinancialHoldingAccount] (
    [DimFinancialHoldingAccountID] INT             NULL,
    [AccountNumber]                VARCHAR (20)    NULL,
    [DeltaHash]                    BIGINT          NULL,
    [Name]                         VARCHAR (255)   NOT NULL,
    [OpeningBalance]               DECIMAL (18, 2) NULL,
    [RestrictedBalance]            DECIMAL (18, 2) NULL,
    [SourceKey]                    VARCHAR (255)   NOT NULL,
    [SourceKeyHash]                BIGINT          NULL,
    [TotalBalance]                 DECIMAL (18, 2) NULL
);

