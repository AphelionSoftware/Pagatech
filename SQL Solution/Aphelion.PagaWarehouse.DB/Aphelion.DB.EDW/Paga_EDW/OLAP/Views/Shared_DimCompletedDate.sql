CREATE VIEW [OLAP].[Shared_DimCompletedDate] AS
	(
		SELECT 
			edw.DimDateID AS DimCompletedDateID,
			edw.FullDate,
			edw.DayOfMonth,
			edw.DayName,
			edw.DayOfYear,
			edw.Month,
			edw.MonthName,
			edw.Quarter,
			edw.QuarterName,
			edw.Year,
			edw.YearName,
			edw.MonthYear,
			edw.MMYYYY
		FROM Shared.DimDate AS edw

	);