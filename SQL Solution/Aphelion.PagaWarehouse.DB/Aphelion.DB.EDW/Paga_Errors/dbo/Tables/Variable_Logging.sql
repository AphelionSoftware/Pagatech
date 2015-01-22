CREATE TABLE [dbo].[Variable_Logging] (
    [row_id]      INT            IDENTITY (1, 1) NOT NULL,
    [ErrorDate]   DATETIME       NULL,
    [PackageName] VARCHAR (8000) NULL,
    [SourceName]  VARCHAR (8000) NULL,
    [strParm1]    VARCHAR (8000) NULL,
    [WHEREClause] VARCHAR (8000) NULL
);

