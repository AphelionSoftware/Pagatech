﻿
CREATE VIEW [OLAP].[Shared_DimDate] AS
	(
		SELECT TOP 10
			edw.DimDateID,
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