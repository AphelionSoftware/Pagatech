CREATE TABLE [dbo].[Reversals] (
    [FinancialTransactionId] INT      NULL,
    [EffDate]                DATETIME NULL,
    [OrigTxID]               INT      NULL,
    [RelatedTxID]            INT      NULL,
    [row_id]                 INT      IDENTITY (1, 1) NOT NULL,
    [SYS_CHANGE_VERSION]     BIGINT   NOT NULL,
    [SYS_CHANGE_OPERATION]   CHAR (1) NOT NULL,
    [paga_change_log_id]     INT      NULL
);




GO
CREATE NONCLUSTERED INDEX [ix_Reversals_RelatedTxID]
    ON [dbo].[Reversals]([RelatedTxID] ASC);


GO
CREATE NONCLUSTERED INDEX [ix_Reversals_NullRelatedTxID]
    ON [dbo].[Reversals]([RelatedTxID] ASC) WHERE ([RelatedTxID] IS NULL);


GO
CREATE UNIQUE CLUSTERED INDEX [ix_Reversals_TxID]
    ON [dbo].[Reversals]([FinancialTransactionId] ASC, [RelatedTxID] ASC, [row_id] ASC);

