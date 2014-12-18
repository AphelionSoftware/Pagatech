CREATE TABLE [Shared].[DimTime] (
    [DimTimeID]             INT           NOT NULL,
    [FullTime]              VARCHAR (8)   NOT NULL,
    [HourNumber]            TINYINT       NOT NULL,
    [MinuteNumber]          TINYINT       NOT NULL,
    [SecondNumber]          TINYINT       NOT NULL,
    [TimeInSecond]          INT           NOT NULL,
    [HourlyBucket]          VARCHAR (15)  NOT NULL,
    [DayTimeBucketGroupKey] INT           NOT NULL,
    [DayTimeBucket]         VARCHAR (100) NOT NULL,
    CONSTRAINT [PK_DimTime] PRIMARY KEY CLUSTERED ([DimTimeID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'LoadGroup', @value = N'1', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimTime';

