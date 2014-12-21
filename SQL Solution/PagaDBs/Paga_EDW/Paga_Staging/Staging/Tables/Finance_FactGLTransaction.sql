CREATE TABLE [Staging].[Finance_FactGLTransaction] (
    [CreditAmount]                      DECIMAL (18, 2) NULL,
    [DebitAmount]                       DECIMAL (18, 2) NULL,
    [DeltaHash]                         BIGINT          NULL,
    [FactGLTxID]                        INT             NULL,
    [Movement]                          DECIMAL (19, 2) NULL,
    [SourceKey]                         INT             NOT NULL,
    [SourceKeyHash]                     BIGINT          NULL,
    [TextDescription]                   NVARCHAR (200)  NULL,
    [TransactionLineNumber]             INT             NULL,
    [DimFinancialAccountSourceKey]      INT             NULL,
    [DimGLCodeSourceKey]                INT             NULL,
    [FactFinancialTransactionSourceKey] INT             NULL
);

