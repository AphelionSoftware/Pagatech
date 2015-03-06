CREATE TABLE [Errors].[Shared_DatePeriods] (
    [QueueID]              INT           NOT NULL,
    [SSISErrorCode]        INT           NOT NULL,
    [SSISErrorColumn]      INT           NOT NULL,
    [PackageName]          VARCHAR (255) NOT NULL,
    [ErrorType]            VARCHAR (255) NOT NULL,
    [PeriodType]           CHAR (3)      NOT NULL,
    [Period]               VARCHAR (7)   NOT NULL,
    [Aggregate]            VARCHAR (50)  NOT NULL,
    [Number]               SMALLINT      NOT NULL,
    [PeriodName]           VARCHAR (50)  NOT NULL,
    [OrderNumber]          INT           NOT NULL,
    [Version]              INT           NOT NULL,
    [SYS_CHANGE_VERSION]   BIGINT        NOT NULL,
    [SYS_CHANGE_OPERATION] CHAR (1)      NOT NULL
);

