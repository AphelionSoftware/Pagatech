


/****** Object:  View [OLAP].[Shared_DimDate]    Script Date: 2/20/2015 12:16:32 PM ******/

CREATE VIEW [OLAP].[Shared_DatePeriodSelector] AS
	(
		SELECT 
			*
		FROM OLAP.Shared_DimDate AS edw
		WHERE 
			DateID >= CAST(CAST(year(getdate()) - 5 AS CHAR(4)) +'0101' AS INT)
			AND DateID <= CAST(CONVERT(VARCHAR(8), EOMONTH(getdate()),112) AS INT)


	);