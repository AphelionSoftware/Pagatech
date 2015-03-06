CREATE TABLE [Errors].[Finance_FactGLTransaction] (
    [QueueID]                   INT             NOT NULL,
    [SSISErrorCode]             INT             NOT NULL,
    [SSISErrorColumn]           INT             NOT NULL,
    [PackageName]               VARCHAR (255)   NOT NULL,
    [ErrorType]                 VARCHAR (255)   NOT NULL,
    [SourceKey]                 INT             NOT NULL,
    [GLCodeSourceKey]           INT             NULL,
    [TextDescription]           NVARCHAR (200)  NULL,
    [FinancialAccountSourceKey] INT             NULL,
    [FinancialTxSourceKey]      INT             NULL,
    [TransactionLineNumber]     INT             NULL,
    [CreditAmount]              DECIMAL (18, 2) NULL,
    [DebitAmount]               DECIMAL (18, 2) NULL,
    [Movement]                  DECIMAL (19, 2) NULL,
    [SYS_CHANGE_VERSION]        BIGINT          NOT NULL,
    [SYS_CHANGE_OPERATION]      CHAR (1)        NOT NULL
);

