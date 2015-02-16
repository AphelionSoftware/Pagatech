CREATE TABLE [Staging].[Finance_DimFinancialHoldingAccount] (
    [AccountNumber]        VARCHAR (20)    NULL,
    [Name]                 VARCHAR (255)   NOT NULL,
    [OpeningBalance]       DECIMAL (18, 2) NULL,
    [RestrictedBalance]    DECIMAL (18, 2) NULL,
    [SourceKey]            INT             NOT NULL,
    [TotalBalance]         DECIMAL (18, 2) NULL,
    [SYS_CHANGE_VERSION]   BIGINT          DEFAULT ((0)) NOT NULL,
    [SYS_CHANGE_OPERATION] CHAR (1)        DEFAULT ('I') NULL,
    [paga_change_log_id]   INT             NULL,
    [row_id]               INT             IDENTITY (1, 1) NOT NULL
);
























GO
CREATE UNIQUE CLUSTERED INDEX [ix_Finance_DimFinancialHoldingAccount]
    ON [Staging].[Finance_DimFinancialHoldingAccount]([SourceKey] ASC, [SYS_CHANGE_VERSION] ASC, [SYS_CHANGE_OPERATION] ASC, [row_id] ASC);



