CREATE TABLE [Staging].[Fact_GLTransaction] (
    [CreditAmount]                       DECIMAL (18, 2) NULL,
    [DebitAmount]                        DECIMAL (18, 2) NULL,
    [DeltaHash]                          BIGINT          NULL,
    [FactGLTxID]                         INT             NULL,
    [Movement]                           DECIMAL (19, 2) NULL,
    [SourceKey]                          INT             NOT NULL,
    [SourceKeyHash]                      BIGINT          NULL,
    [TextDescription]                    NVARCHAR (200)  NULL,
    [TransactionLineNumber]              INT             NULL,
    [Dim_FinancialAccountSourceKey]      INT             NULL,
    [Dim_GLCodeSourceKey]                INT             NULL,
    [Fact_FinancialTransactionSourceKey] INT             NULL
);

