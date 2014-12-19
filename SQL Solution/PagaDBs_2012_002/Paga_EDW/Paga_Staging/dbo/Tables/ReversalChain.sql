CREATE TABLE [dbo].[ReversalChain] (
    [TxID]        INT      NULL,
    [EffDate]     DATETIME NULL,
    [OrigTxID]    INT      NULL,
    [RelatedTxID] INT      NULL
);


GO
CREATE UNIQUE CLUSTERED INDEX [ix_Reversals_TxID]
    ON [dbo].[ReversalChain]([TxID] ASC);

