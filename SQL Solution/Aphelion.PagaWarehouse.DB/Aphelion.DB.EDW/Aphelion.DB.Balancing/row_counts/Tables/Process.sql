CREATE TABLE [row_counts].[Process] (
    [row_id]               INT      IDENTITY (1, 1) NOT NULL,
    [created_on]           DATETIME DEFAULT (getdate()) NOT NULL,
    [as_of_change_version] BIGINT   NOT NULL,
    [row_count]            INT      NOT NULL
);


GO
CREATE UNIQUE CLUSTERED INDEX [ix_row_counts_Process]
    ON [row_counts].[Process]([as_of_change_version] ASC, [row_id] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'BaseQuery', @value = N'SELECT as_of_change_version = CHANGE_TRACKING_CURRENT_VERSION(), row_count = COUNT(ProcessId) FROM dbo.Process', @level0type = N'SCHEMA', @level0name = N'row_counts', @level1type = N'TABLE', @level1name = N'Process';

