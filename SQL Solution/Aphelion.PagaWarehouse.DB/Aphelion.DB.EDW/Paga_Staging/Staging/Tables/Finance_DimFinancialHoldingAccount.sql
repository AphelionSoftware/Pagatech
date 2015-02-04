CREATE TABLE [Staging].[Finance_DimFinancialHoldingAccount] (
    [AccountNumber]     VARCHAR (20)    NULL,
    [Name]              VARCHAR (255)   NOT NULL,
    [OpeningBalance]    DECIMAL (18, 2) NULL,
    [RestrictedBalance] DECIMAL (18, 2) NULL,
    [SourceKey]         INT             NOT NULL,
    [TotalBalance]      DECIMAL (18, 2) NULL
);
















GO


