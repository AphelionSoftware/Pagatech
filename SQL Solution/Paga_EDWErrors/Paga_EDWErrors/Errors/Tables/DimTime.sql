CREATE TABLE [Errors].[DimTime] (
    [QueueID]               INT           NOT NULL,
    [ErrorCode]             INT           NOT NULL,
    [ErrorColumn]           INT           NOT NULL,
    [PackageName]           VARCHAR (255) NOT NULL,
    [DimTimeID]             INT           NULL,
    [DayTimeBucket]         VARCHAR (100) NOT NULL,
    [DayTimeBucketGroupKey] INT           NOT NULL,
    [FullTime]              VARCHAR (8)   NOT NULL,
    [HourlyBucket]          VARCHAR (15)  NOT NULL,
    [HourNumber]            TINYINT       NOT NULL,
    [MinuteNumber]          TINYINT       NOT NULL,
    [SecondNumber]          TINYINT       NOT NULL,
    [TimeInSecond]          INT           NOT NULL
);

