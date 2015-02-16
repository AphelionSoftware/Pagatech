CREATE TABLE [dbo].[ProcessData] (
    [ProcessID]            INT            NOT NULL,
    [ProcessDataID]        INT            NOT NULL,
    [Name]                 VARCHAR (255)  NULL,
    [Value]                VARCHAR (8000) NULL,
    [UpdatedDate]          DATETIME       NOT NULL,
    [row_id]               INT            IDENTITY (1, 1) NOT NULL,
    [SYS_CHANGE_VERSION]   BIGINT         DEFAULT ((0)) NOT NULL,
    [SYS_CHANGE_OPERATION] CHAR (1)       DEFAULT ('I') NULL,
    [paga_change_log_id]   INT            NULL
);








GO
CREATE UNIQUE CLUSTERED INDEX [ix_ProcessData]
    ON [dbo].[ProcessData]([ProcessID] ASC, [Name] ASC, [UpdatedDate] ASC, [row_id] ASC);

