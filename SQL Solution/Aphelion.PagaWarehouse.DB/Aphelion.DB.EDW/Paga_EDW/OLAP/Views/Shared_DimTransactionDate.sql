
CREATE VIEW [OLAP].[Shared_DimTransactionDate] AS
	(
		SELECT 
			edw.DimDateID AS DimTransactionDateID,
			edw.FullDate,
			DayOfMonth = CAST(edw.DayOfMonth AS TINYINT),
			edw.DayName,
			Month = CAST (edw.Month AS TINYINT),
			edw.MonthName,
			edw.Quarter,
			edw.QuarterName,
			Year = CAST(edw.Year AS SMALLINT),
			edw.YearName,
			edw.MonthYear,
			edw.MMYYYY
		FROM Shared.DimDate AS edw

	);