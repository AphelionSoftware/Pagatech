CREATE TABLE [Updates].[Finance_DimFinancialHoldingAccount] (
    [SourceKey]         INT             NOT NULL,
    [Name]              VARCHAR (255)   NOT NULL,
    [AccountNumber]     VARCHAR (20)    NULL,
    [RestrictedBalance] DECIMAL (18, 2) NULL,
    [OpeningBalance]    DECIMAL (18, 2) NULL,
    [TotalBalance]      DECIMAL (18, 2) NULL
);

