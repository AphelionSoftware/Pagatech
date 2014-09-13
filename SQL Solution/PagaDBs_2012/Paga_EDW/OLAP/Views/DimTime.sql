  

CREATE VIEW [OLAP].[DimTime]
AS

SELECT 
	[DimTime_7155936738159303249].[DayTimeBucket] AS [TimeDayTimeBucket]
	,[DimTime_7155936738159303249].[DayTimeBucketGroupKey] AS [TimeDayTimeBucketGroupKey]
	,[DimTime_7155936738159303249].[DimTimeID] AS [TimeDimTimeID]
	,[DimTime_7155936738159303249].[FullTime] AS [TimeFullTime]
	,[DimTime_7155936738159303249].[HourlyBucket] AS [TimeHourlyBucket]
	,[DimTime_7155936738159303249].[HourNumber] AS [TimeHourNumber]
	,[DimTime_7155936738159303249].[MinuteNumber] AS [TimeMinuteNumber]
	,[DimTime_7155936738159303249].[SecondNumber] AS [TimeSecondNumber]
	,[DimTime_7155936738159303249].[TimeInSecond] AS [TimeTimeInSecond]
FROM [Shared].[DimTime] AS [DimTime_7155936738159303249]
GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimTime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'TimeTimeInSecond';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'TimeTimeInSecond';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'TimeInSecond', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'TimeTimeInSecond';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'TimeTimeInSecond';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimTime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'TimeSecondNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'TimeSecondNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SecondNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'TimeSecondNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'TimeSecondNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimTime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'TimeMinuteNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'TimeMinuteNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'MinuteNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'TimeMinuteNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'TimeMinuteNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimTime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'TimeHourNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'TimeHourNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'HourNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'TimeHourNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'TimeHourNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimTime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'TimeHourlyBucket';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'TimeHourlyBucket';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'HourlyBucket', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'TimeHourlyBucket';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'TimeHourlyBucket';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimTime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'TimeFullTime';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'TimeFullTime';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FullTime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'TimeFullTime';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'TimeFullTime';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimTime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'TimeDimTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'TimeDimTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimTimeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'TimeDimTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'TimeDimTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimTime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'TimeDayTimeBucketGroupKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'TimeDayTimeBucketGroupKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DayTimeBucketGroupKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'TimeDayTimeBucketGroupKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'TimeDayTimeBucketGroupKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimTime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'TimeDayTimeBucket';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'TimeDayTimeBucket';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DayTimeBucket', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'TimeDayTimeBucket';

