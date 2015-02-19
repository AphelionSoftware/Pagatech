CREATE VIEW OLAP.Shared_DimDate AS
	(
		SELECT 
			edw.DimDateID,edw.FullDate,edw.FullDateUK,edw.FullDateUSA,edw.DayOfMonth,edw.DaySuffix,edw.DayName,edw.DayOfWeekUSA,edw.DayOfWeekUK,edw.DayOfWeekInMonth,edw.DayOfWeekInYear,edw.DayOfQuarter,edw.DayOfYear,edw.WeekOfMonth,edw.WeekOfQuarter,edw.WeekOfYear,edw.Month,edw.MonthName,edw.MonthOfQuarter,edw.Quarter,edw.QuarterName,edw.Year,edw.YearName,edw.MonthYear,edw.MMYYYY,edw.FirstDayOfMonth,edw.LastDayOfMonth,edw.FirstDayOfQuarter,edw.LastDayOfQuarter,edw.FirstDayOfYear,edw.LastDayOfYear,edw.IsWeekday,edw.IsHolidayUSA,edw.HolidayUSA,edw.IsHolidayUK,edw.HolidayUK,edw.IsHolidayNG,edw.HolidayNG,edw.FiscalDayOfYear,edw.FiscalWeekOfYear,edw.FiscalMonth,edw.FiscalQuarter,edw.FiscalQuarterName,edw.FiscalYear,edw.FiscalYearName,edw.FiscalMonthYear,edw.FiscalMMYYYY,edw.FiscalFirstDayOfMonth,edw.FiscalLastDayOfMonth,edw.FiscalFirstDayOfQuarter,edw.FiscalLastDayOfQuarter,edw.FiscalFirstDayOfYear,edw.FiscalLastDayOfYear
		FROM Shared.DimDate AS edw

	);