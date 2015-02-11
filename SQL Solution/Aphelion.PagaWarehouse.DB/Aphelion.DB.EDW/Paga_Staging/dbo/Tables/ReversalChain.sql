CREATE TABLE [dbo].[ReversalChain] (
    [TxID]                 INT      NULL,
    [EffDate]              DATETIME NULL,
    [OrigTxID]             INT      NULL,
    [RelatedTxID]          INT      NULL,
    [row_id]               INT      IDENTITY (1, 1) NOT NULL,
    [SYS_CHANGE_VERSION]   BIGINT   NOT NULL,
    [SYS_CHANGE_OPERATION] CHAR (1) NOT NULL
);


GO
CREATE UNIQUE CLUSTERED INDEX [ix_Reversals_TxID]
    ON [dbo].[ReversalChain]([TxID] ASC, [row_id] ASC);

