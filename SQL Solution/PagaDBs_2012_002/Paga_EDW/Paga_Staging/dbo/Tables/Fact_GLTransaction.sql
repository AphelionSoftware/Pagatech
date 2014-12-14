CREATE TABLE [dbo].[Fact_GLTransaction] (
    [SourceKey]                  INT             NOT NULL,
    [AccountCode_SourceKey]      INT             NULL,
    [TextDescription]            NVARCHAR (200)  NULL,
    [FinancialAccount_SourceKey] INT             NULL,
    [FinancialTx_SourceKey]      INT             NULL,
    [TransactionLineNumber]      INT             NULL,
    [CreditAmount]               DECIMAL (18, 2) NULL,
    [DebitAmount]                DECIMAL (18, 2) NULL,
    [Movement]                   DECIMAL (19, 2) NULL
);


GO
CREATE UNIQUE CLUSTERED INDEX [ix_FactGLTransaction_SourceKey]
    ON [dbo].[Fact_GLTransaction]([FinancialTx_SourceKey] ASC, [SourceKey] ASC);

