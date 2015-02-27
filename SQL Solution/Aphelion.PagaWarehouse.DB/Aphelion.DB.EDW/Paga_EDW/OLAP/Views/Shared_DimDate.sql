






CREATE VIEW [OLAP].[Shared_DimDate] AS
	(
		SELECT  TOP 2147483647 
			DateSK
			  ,DateID
			  ,Date
			  ,Day
			  ,DaySuffix
			  ,USDayOfWeek
			  ,DayOfWeek
			  ,DOWInMonth
			  ,DayOfYear
			  ,WeekOfYear
			  ,WeekOfMonth
			  ,MonthNumber
			  ,MonthName
			  ,MonthAllTime = DENSE_RANK() over (order by YearNumber, MonthNumber)
			  ,Quarter
			  ,QuarterName
			  ,QuarterAllTime = DENSE_RANK() over (order by YearNumber, Quarter)
			  ,YearName
			  ,YearNumber
			  ,StandardDate
			  ,IsPublicHoliday
			  ,HolidayText
			  ,FinancialYearNumber
			  ,FinancialYearName
			  ,FinancialPeriodNumber
			  ,FinancialPeriodName
			  ,FinancialPeriodAllTime = DENSE_RANK() over (order by FinancialYearNumber, FinancialPeriodNumber)
	  
		FROM Shared.DimDate
		
		ORDER BY DateID
		);