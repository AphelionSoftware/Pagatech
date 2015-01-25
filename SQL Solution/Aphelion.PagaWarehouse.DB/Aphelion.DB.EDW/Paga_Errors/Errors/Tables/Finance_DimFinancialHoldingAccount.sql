CREATE TABLE [Errors].[Finance_DimFinancialHoldingAccount] (
    [QueueID]              INT             NOT NULL,
    [SSISErrorCode]        INT             NOT NULL,
    [SSISErrorColumn]      INT             NOT NULL,
    [PackageName]          VARCHAR (255)   NOT NULL,
    [ErrorType]            VARCHAR (255)   NOT NULL,
    [AccountNumber]        VARCHAR (20)    NULL,
    [Name]                 VARCHAR (255)   NOT NULL,
    [OpeningBalance]       DECIMAL (18, 2) NULL,
    [RestrictedBalance]    DECIMAL (18, 2) NULL,
    [SourceKey]            INT             NOT NULL,
    [SYS_CHANGE_OPERATION] CHAR (1)        NOT NULL,
    [SYS_CHANGE_VERSION]   BIGINT          NOT NULL,
    [TotalBalance]         DECIMAL (18, 2) NULL
);







