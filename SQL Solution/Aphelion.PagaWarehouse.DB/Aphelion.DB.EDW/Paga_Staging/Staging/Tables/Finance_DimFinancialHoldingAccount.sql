CREATE TABLE [Staging].[Finance_DimFinancialHoldingAccount] (
    [AccountNumber]        VARCHAR (20)    NULL,
    [Name]                 VARCHAR (255)   NOT NULL,
    [OpeningBalance]       DECIMAL (18, 2) NULL,
    [RestrictedBalance]    DECIMAL (18, 2) NULL,
    [SourceKey]            INT             NOT NULL,
    [TotalBalance]         DECIMAL (18, 2) NULL,
    [SYS_CHANGE_VERSION]   BIGINT          DEFAULT ((0)) NOT NULL,
    [SYS_CHANGE_OPERATION] CHAR (1)        DEFAULT ('I') NOT NULL
);














GO
CREATE UNIQUE CLUSTERED INDEX [ix_Finance_DimFinancialHoldingAccount]
    ON [Staging].[Finance_DimFinancialHoldingAccount]([SourceKey] ASC, [SYS_CHANGE_VERSION] ASC, [SYS_CHANGE_OPERATION] ASC);

