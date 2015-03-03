CREATE TABLE [Updates].[Finance_FactGLTransaction] (
    [SourceKey]             INT             NOT NULL,
    [DimGLCodeID]           INT             NULL,
    [TextDescription]       NVARCHAR (200)  NULL,
    [DimFinancialAccountID] INT             NULL,
    [FactFinancialTxID]     INT             NULL,
    [TransactionLineNumber] INT             NULL,
    [CreditAmount]          DECIMAL (18, 2) NULL,
    [DebitAmount]           DECIMAL (18, 2) NULL,
    [Movement]              DECIMAL (19, 2) NULL,
    [SYS_CHANGE_VERSION]    BIGINT          DEFAULT ((0)) NOT NULL,
    [SYS_CHANGE_OPERATION]  CHAR (1)        DEFAULT ('I') NOT NULL
);




GO
CREATE CLUSTERED INDEX [ix_Finance_FactGLTransaction_SourceKey]
    ON [Updates].[Finance_FactGLTransaction]([SourceKey] ASC, [SYS_CHANGE_VERSION] DESC);

