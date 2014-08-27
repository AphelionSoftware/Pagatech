CREATE TABLE [Staging].[DimTime] (
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

