  

CREATE VIEW [OLAP].[DimTime]
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
GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimTime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'DimTimeTimeInSecond';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'DimTimeTimeInSecond';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'TimeInSecond', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'DimTimeTimeInSecond';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'DimTimeTimeInSecond';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimTime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'DimTimeSecondNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'DimTimeSecondNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'SecondNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'DimTimeSecondNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'DimTimeSecondNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimTime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'DimTimeMinuteNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'DimTimeMinuteNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'MinuteNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'DimTimeMinuteNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'DimTimeMinuteNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimTime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'DimTimeHourNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'DimTimeHourNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'HourNumber', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'DimTimeHourNumber';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'DimTimeHourNumber';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimTime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'DimTimeHourlyBucket';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'DimTimeHourlyBucket';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'HourlyBucket', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'DimTimeHourlyBucket';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'DimTimeHourlyBucket';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimTime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'DimTimeFullTime';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'DimTimeFullTime';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FullTime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'DimTimeFullTime';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'DimTimeFullTime';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimTime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'DimTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'DimTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DimTimeID', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'DimTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'DimTimeID';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimTime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'DimTimeDayTimeBucketGroupKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'DimTimeDayTimeBucketGroupKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DayTimeBucketGroupKey', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'DimTimeDayTimeBucketGroupKey';


GO
EXECUTE sp_addextendedproperty @name = N'HierarchyLevel', @value = N'0', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'DimTimeDayTimeBucketGroupKey';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimTime', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'DimTimeDayTimeBucket';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'DimTimeDayTimeBucket';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DayTimeBucket', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimTime', @level2type = N'COLUMN', @level2name = N'DimTimeDayTimeBucket';

