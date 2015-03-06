CREATE TABLE [Errors].[Classification_DimFinancialAccountType] (
    [QueueID]              INT            NOT NULL,
    [SSISErrorCode]        INT            NOT NULL,
    [SSISErrorColumn]      INT            NOT NULL,
    [PackageName]          VARCHAR (255)  NOT NULL,
    [ErrorType]            VARCHAR (255)  NOT NULL,
    [Name]                 VARCHAR (255)  NOT NULL,
    [paga_change_log_id]   INT            NULL,
    [row_id]               INT            NOT NULL,
    [SourceKey]            VARCHAR (255)  NOT NULL,
    [SYS_CHANGE_OPERATION] CHAR (1)       NULL,
    [SYS_CHANGE_VERSION]   BIGINT         NOT NULL,
    [TextDesciption]       VARCHAR (1000) NULL
);

