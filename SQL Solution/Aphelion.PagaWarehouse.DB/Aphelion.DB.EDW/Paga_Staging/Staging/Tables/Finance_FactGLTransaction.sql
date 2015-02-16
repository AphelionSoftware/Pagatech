CREATE TABLE [Staging].[Finance_FactGLTransaction] (
    [CreditAmount]                 DECIMAL (18, 2) NULL,
    [DebitAmount]                  DECIMAL (18, 2) NULL,
    [Movement]                     DECIMAL (19, 2) NULL,
    [SourceKey]                    INT             NOT NULL,
    [TextDescription]              NVARCHAR (200)  NULL,
    [TransactionLineNumber]        INT             NULL,
    [DimFinancialAccountSourceKey] INT             NULL,
    [DimGLCodeSourceKey]           INT             NULL,
    [FactFinancialTxSourceKey]     INT             NULL,
    [SYS_CHANGE_OPERATION]         CHAR (1)        DEFAULT ('I') NULL,
    [paga_change_log_id]           INT             NULL,
    [row_id]                       INT             IDENTITY (1, 1) NOT NULL,
    [SYS_CHANGE_VERSION]           BIGINT          DEFAULT ((0)) NOT NULL
);
























GO
CREATE UNIQUE CLUSTERED INDEX [ix_Finance_FactGLTransaction]
    ON [Staging].[Finance_FactGLTransaction]([SYS_CHANGE_VERSION] ASC, [SYS_CHANGE_OPERATION] ASC, [SourceKey] ASC, [row_id] ASC);





