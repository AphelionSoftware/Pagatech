CREATE TABLE [dbo].[PackageExecutionVariables] (
    [row_id]           INT            IDENTITY (1, 1) NOT NULL,
    [RunDate]          DATETIME       NULL,
    [TaskName]         VARCHAR (300)  NULL,
    [SourceName]       VARCHAR (300)  NULL,
    [PackageToExecute] VARCHAR (300)  NULL,
    [strParm1]         VARCHAR (8000) NULL
);


GO
CREATE UNIQUE CLUSTERED INDEX [ix_PackageExecutionVariables]
    ON [dbo].[PackageExecutionVariables]([row_id] ASC);

