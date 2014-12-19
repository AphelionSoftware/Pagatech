CREATE TABLE [Staging].[FactGLTransaction] (
    [CreditAmount]                      DECIMAL (18, 2) NULL,
    [DebitAmount]                       DECIMAL (18, 2) NULL,
    [DeltaHash]                         BIGINT          NULL,
    [FactGLTxID]                        INT             NULL,
    [Movement]                          DECIMAL (19, 2) NULL,
    [SourceKey]                         INT             NOT NULL,
    [SourceKeyHash]                     BIGINT          NULL,
    [TextDescription]                   NVARCHAR (200)  NULL,
    [TransactionLineNumber]             INT             NULL,
    [DimFinancialAccountSourceKey]      VARCHAR (255)   NULL,
    [DimGLCodeSourceKey]                VARCHAR (255)   NULL,
    [FactFinancialTransactionSourceKey] INT             NULL
);

