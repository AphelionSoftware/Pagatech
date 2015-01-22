CREATE TABLE [dbo].[StreamVariables] (
    [row_id]           INT           IDENTITY (1, 1) NOT NULL,
    [RunDate]          DATETIME      NULL,
    [TaskName]         VARCHAR (300) NULL,
    [SourceName]       VARCHAR (300) NULL,
    [UserSQLStatement] VARCHAR (MAX) NULL
);


GO
CREATE UNIQUE CLUSTERED INDEX [ix_StreamVariables]
    ON [dbo].[StreamVariables]([row_id] ASC);

