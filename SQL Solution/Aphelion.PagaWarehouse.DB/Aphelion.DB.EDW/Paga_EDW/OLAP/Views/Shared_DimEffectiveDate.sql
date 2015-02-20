
CREATE VIEW [OLAP].[Shared_DimEffectiveDate] AS
	(
		SELECT 
			edw.DimDateID AS DimEffectiveDateID,
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