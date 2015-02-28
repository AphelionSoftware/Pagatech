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
    [sys_ModifiedBy]        VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_ModifiedOn]        DATETIME      DEFAULT (getdate()) NOT NULL,
    [sys_CreatedBy]         VARCHAR (255) DEFAULT (suser_sname()) NOT NULL,
    [sys_CreatedOn]         DATETIME      DEFAULT (getdate()) NOT NULL,
    [SYS_CHANGE_VERSION]    BIGINT        DEFAULT ((0)) NOT NULL,
    [SYS_CHANGE_OPERATION]  CHAR (1)      DEFAULT ('I') NOT NULL,
    CONSTRAINT [pk_DimTimeID] PRIMARY KEY CLUSTERED ([DimTimeID] ASC)
);










GO
EXECUTE sp_addextendedproperty @name = N'PackageType', @value = N'1', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimTime';


GO
EXECUTE sp_addextendedproperty @name = N'ExcludeFromStaging', @value = N'true', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimTime';


GO
EXECUTE sp_addextendedproperty @name = N'LoadOrder', @value = N'0', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimTime';


GO
EXECUTE sp_addextendedproperty @name = N'LoadGroup', @value = N'0', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimTime';


GO
EXECUTE sp_addextendedproperty @name = N'UpdateQuery', @value = N'UPDATE edw 
	SET 
	edw.FullTime = stg.FullTime,edw.HourNumber = stg.HourNumber,edw.MinuteNumber = stg.MinuteNumber,edw.SecondNumber = stg.SecondNumber,edw.TimeInSecond = stg.TimeInSecond,edw.HourlyBucket = stg.HourlyBucket,edw.DayTimeBucketGroupKey = stg.DayTimeBucketGroupKey,edw.DayTimeBucket = stg.DayTimeBucket
	FROM Shared.DimTime AS edw
	INNER JOIN Paga_Staging.Updates.Shared_DimTime AS stg ON
		edw.SourceKey = stg.SourceKey;
	GO', @level0type = N'SCHEMA', @level0name = N'Shared', @level1type = N'TABLE', @level1name = N'DimTime';

