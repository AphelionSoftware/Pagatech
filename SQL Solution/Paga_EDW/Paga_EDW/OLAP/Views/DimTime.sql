  

CREATE VIEW [OLAP].[DimTime]
WITH SCHEMABINDING
AS

SELECT 
	[DimTime_7155936738159303249].[DayTimeBucket] AS [DimTimeDayTimeBucket]
	,[DimTime_7155936738159303249].[DayTimeBucketGroupKey] AS [DimTimeDayTimeBucketGroupKey]
	,[DimTime_7155936738159303249].[DimTimeID] AS [DimTimeID]
	,[DimTime_7155936738159303249].[FullTime] AS [DimTimeFullTime]
	,[DimTime_7155936738159303249].[HourlyBucket] AS [DimTimeHourlyBucket]
	,[DimTime_7155936738159303249].[HourNumber] AS [DimTimeHourNumber]
	,[DimTime_7155936738159303249].[MinuteNumber] AS [DimTimeMinuteNumber]
	,[DimTime_7155936738159303249].[SecondNumber] AS [DimTimeSecondNumber]
	,[DimTime_7155936738159303249].[TimeInSecond] AS [DimTimeTimeInSecond]
FROM [Shared].[DimTime] AS [DimTime_7155936738159303249]



    