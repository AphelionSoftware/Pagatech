CREATE TABLE [Errors].[Shared_DimTime] (
    [QueueID]               INT           NOT NULL,
    [SSISErrorCode]         INT           NOT NULL,
    [SSISErrorColumn]       INT           NOT NULL,
    [PackageName]           VARCHAR (255) NOT NULL,
    [ErrorType]             VARCHAR (255) NOT NULL,
    [FullTime]              VARCHAR (8)   NOT NULL,
    [HourNumber]            TINYINT       NOT NULL,
    [MinuteNumber]          TINYINT       NOT NULL,
    [SecondNumber]          TINYINT       NOT NULL,
    [TimeInSecond]          INT           NOT NULL,
    [HourlyBucket]          VARCHAR (15)  NOT NULL,
    [DayTimeBucketGroupKey] INT           NOT NULL,
    [DayTimeBucket]         VARCHAR (100) NOT NULL,
    [SYS_CHANGE_VERSION]    BIGINT        NOT NULL,
    [SYS_CHANGE_OPERATION]  CHAR (1)      NOT NULL
);

