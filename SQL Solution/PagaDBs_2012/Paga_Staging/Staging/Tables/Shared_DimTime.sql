CREATE TABLE [Staging].[Shared_DimTime] (
    [FullTime]              VARCHAR (8)   NOT NULL,
    [HourNumber]            TINYINT       NOT NULL,
    [MinuteNumber]          TINYINT       NOT NULL,
    [SecondNumber]          TINYINT       NOT NULL,
    [TimeInSecond]          INT           NOT NULL,
    [HourlyBucket]          VARCHAR (15)  NOT NULL,
    [DayTimeBucketGroupKey] INT           NOT NULL,
    [DayTimeBucket]         VARCHAR (100) NOT NULL,
    [change_operation]      CHAR (1)      NULL
);



