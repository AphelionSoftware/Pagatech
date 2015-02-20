
/****** Object:  View [OLAP].[Shared_DimDate]    Script Date: 2/20/2015 12:16:32 PM ******/

CREATE VIEW [OLAP].[Shared_DatePeriodSelector] AS
	(
		SELECT 
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
		WHERE 
			DimDateID >= CAST(CAST(year(getdate()) - 5 AS CHAR(4)) +'0101' AS INT)
			AND DimDateID <= CAST(CONVERT(VARCHAR(8), EOMONTH(getdate()),112) AS INT)


	);