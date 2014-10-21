    

CREATE VIEW [OLAP].[DimDate]
AS

SELECT 
	[DimDate].[DimDateID] 
	,[DimDate].[DayName] 
	,[DimDate].[DayOfMonth] 
	,[DimDate].[DayOfQuarter] 
	,[DimDate].[DayOfWeekInMonth] 
	,[DimDate].[DayOfWeekInYear] 
	,[DimDate].[DayOfWeekUK] 
	,[DimDate].[DayOfWeekUSA] 
	,[DimDate].[DayOfYear] 
	,[DimDate].[DaySuffix] 
	,[DimDate].[FirstDayOfMonth] 
	,[DimDate].[FirstDayOfQuarter] 
	,[DimDate].[FirstDayOfYear] 
	,[DimDate].[FiscalDayOfYear] 
	,[DimDate].[FiscalFirstDayOfMonth] 
	,[DimDate].[FiscalFirstDayOfQuarter] 
	,[DimDate].[FiscalFirstDayOfYear] 
	,[DimDate].[FiscalLastDayOfMonth] 
	,[DimDate].[FiscalLastDayOfQuarter] 
	,[DimDate].[FiscalLastDayOfYear] 
	,[DimDate].[FiscalMMYYYY] 
	,[DimDate].[FiscalMonth] 
	,[DimDate].[FiscalMonthYear] 
	,[DimDate].[FiscalQuarter] 
	,[DimDate].[FiscalQuarterName] 
	,[DimDate].[FiscalWeekOfYear] 
	,[DimDate].[FiscalYear] 
	,[DimDate].[FiscalYearName] 
	,[DimDate].[FullDate] 
	,[DimDate].[FullDateUK] 
	,[DimDate].[FullDateUSA] 
	,[DimDate].[HolidayNG] 
	,[DimDate].[HolidayUK] 
	,[DimDate].[HolidayUSA] 
	,[DimDate].[IsHolidayNG] 
	,[DimDate].[IsHolidayUK] 
	,[DimDate].[IsHolidayUSA] 
	,[DimDate].[IsWeekday] 
	,[DimDate].[LastDayOfMonth] 
	,[DimDate].[LastDayOfQuarter] 
	,[DimDate].[LastDayOfYear] 
	,[DimDate].[MMYYYY] 
	,[DimDate].[Month] 
	,[DimDate].[MonthName] 
	,[DimDate].[MonthOfQuarter] 
	,[DimDate].[MonthYear] 
	,[DimDate].[Quarter] 
	,[DimDate].[QuarterName] 
	,[DimDate].[WeekOfMonth] 
	,[DimDate].[WeekOfQuarter] 
	,[DimDate].[WeekOfYear] 
	,[DimDate].[Year] 
	,[DimDate].[YearName] 

FROM [Shared].[DimDate] [DimDate]
GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO



GO
EXECUTE sp_addextendedproperty @name = N'XMLATableType', @value = N'MeasureGroup', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'YearName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'YearName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'YearName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'YearName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'Year';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'Year';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Year', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'Year';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'WeekOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'WeekOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'WeekOfYear', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'WeekOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'WeekOfQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'WeekOfQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'WeekOfQuarter', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'WeekOfQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'WeekOfMonth';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'WeekOfMonth';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'WeekOfMonth', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'WeekOfMonth';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'QuarterName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'QuarterName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'QuarterName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'QuarterName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'Quarter';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'Quarter';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Quarter', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'Quarter';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'MonthYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'MonthYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'MonthYear', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'MonthYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'MonthOfQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'MonthOfQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'MonthOfQuarter', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'MonthOfQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'MonthName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'MonthName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'MonthName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'MonthName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'Month';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'Month';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'Month', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'Month';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'MMYYYY';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'MMYYYY';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'MMYYYY', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'MMYYYY';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'LastDayOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'LastDayOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'LastDayOfYear', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'LastDayOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'LastDayOfQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'LastDayOfQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'LastDayOfQuarter', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'LastDayOfQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'LastDayOfMonth';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'LastDayOfMonth';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'LastDayOfMonth', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'LastDayOfMonth';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'IsWeekday';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'IsWeekday';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsWeekday', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'IsWeekday';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'IsHolidayUSA';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'IsHolidayUSA';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsHolidayUSA', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'IsHolidayUSA';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'IsHolidayUK';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'IsHolidayUK';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsHolidayUK', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'IsHolidayUK';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'IsHolidayNG';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'IsHolidayNG';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'IsHolidayNG', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'IsHolidayNG';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'HolidayUSA';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'HolidayUSA';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'HolidayUSA', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'HolidayUSA';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'HolidayUK';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'HolidayUK';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'HolidayUK', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'HolidayUK';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'HolidayNG';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'HolidayNG';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'HolidayNG', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'HolidayNG';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FullDateUSA';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FullDateUSA';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FullDateUSA', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FullDateUSA';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FullDateUK';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FullDateUK';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FullDateUK', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FullDateUK';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FullDate';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FullDate';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FullDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FullDate';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FiscalYearName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FiscalYearName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FiscalYearName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FiscalYearName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FiscalYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FiscalYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FiscalYear', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FiscalYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FiscalWeekOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FiscalWeekOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FiscalWeekOfYear', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FiscalWeekOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FiscalQuarterName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FiscalQuarterName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FiscalQuarterName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FiscalQuarterName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FiscalQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FiscalQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FiscalQuarter', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FiscalQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FiscalMonthYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FiscalMonthYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FiscalMonthYear', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FiscalMonthYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FiscalMonth';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FiscalMonth';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FiscalMonth', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FiscalMonth';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FiscalMMYYYY';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FiscalMMYYYY';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FiscalMMYYYY', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FiscalMMYYYY';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FiscalLastDayOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FiscalLastDayOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FiscalLastDayOfYear', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FiscalLastDayOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FiscalLastDayOfQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FiscalLastDayOfQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FiscalLastDayOfQuarter', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FiscalLastDayOfQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FiscalLastDayOfMonth';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FiscalLastDayOfMonth';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FiscalLastDayOfMonth', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FiscalLastDayOfMonth';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FiscalFirstDayOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FiscalFirstDayOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FiscalFirstDayOfYear', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FiscalFirstDayOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FiscalFirstDayOfQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FiscalFirstDayOfQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FiscalFirstDayOfQuarter', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FiscalFirstDayOfQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FiscalFirstDayOfMonth';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FiscalFirstDayOfMonth';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FiscalFirstDayOfMonth', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FiscalFirstDayOfMonth';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FiscalDayOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FiscalDayOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FiscalDayOfYear', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FiscalDayOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FirstDayOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FirstDayOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FirstDayOfYear', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FirstDayOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FirstDayOfQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FirstDayOfQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FirstDayOfQuarter', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FirstDayOfQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FirstDayOfMonth';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FirstDayOfMonth';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'FirstDayOfMonth', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'FirstDayOfMonth';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DaySuffix';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DaySuffix';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DaySuffix', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DaySuffix';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DayOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DayOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DayOfYear', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DayOfYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DayOfWeekUSA';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DayOfWeekUSA';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DayOfWeekUSA', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DayOfWeekUSA';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DayOfWeekUK';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DayOfWeekUK';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DayOfWeekUK', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DayOfWeekUK';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DayOfWeekInYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DayOfWeekInYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DayOfWeekInYear', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DayOfWeekInYear';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DayOfWeekInMonth';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DayOfWeekInMonth';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DayOfWeekInMonth', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DayOfWeekInMonth';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DayOfQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DayOfQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DayOfQuarter', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DayOfQuarter';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DayOfMonth';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DayOfMonth';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DayOfMonth', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DayOfMonth';


GO
EXECUTE sp_addextendedproperty @name = N'SrcTable', @value = N'DimDate', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DayName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcSchema', @value = N'Shared', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DayName';


GO
EXECUTE sp_addextendedproperty @name = N'SrcColumn', @value = N'DayName', @level0type = N'SCHEMA', @level0name = N'OLAP', @level1type = N'VIEW', @level1name = N'DimDate', @level2type = N'COLUMN', @level2name = N'DayName';

