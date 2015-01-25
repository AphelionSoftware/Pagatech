CREATE TABLE [Errors].[Finance_DimCurrency] (
    [QueueID]              INT           NOT NULL,
    [SSISErrorCode]        INT           NOT NULL,
    [SSISErrorColumn]      INT           NOT NULL,
    [PackageName]          VARCHAR (255) NOT NULL,
    [ErrorType]            VARCHAR (255) NOT NULL,
    [ISOCode]              CHAR (3)      NULL,
    [Name]                 VARCHAR (255) NOT NULL,
    [SourceKey]            VARCHAR (255) NOT NULL,
    [Symbol]               VARCHAR (3)   NULL,
    [SYS_CHANGE_OPERATION] CHAR (1)      NOT NULL,
    [SYS_CHANGE_VERSION]   BIGINT        NOT NULL
);





