CREATE TABLE [row_counts].[FinancialTransactionSubType] (
    [row_id]               INT      IDENTITY (1, 1) NOT NULL,
    [created_on]           DATETIME DEFAULT (getdate()) NOT NULL,
    [as_of_change_version] BIGINT   NOT NULL,
    [row_count]            INT      NOT NULL
);


GO
CREATE UNIQUE CLUSTERED INDEX [ix_row_counts_FinancialTransactionSubType]
    ON [row_counts].[FinancialTransactionSubType]([as_of_change_version] ASC, [row_id] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'BaseQuery', @value = N'SELECT as_of_change_version = CHANGE_TRACKING_CURRENT_VERSION(), row_count = COUNT(FinancialTransactionSubTypeId) FROM dbo.FinancialTransactionSubType', @level0type = N'SCHEMA', @level0name = N'row_counts', @level1type = N'TABLE', @level1name = N'FinancialTransactionSubType';

