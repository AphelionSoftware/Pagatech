SELECT 
	SourceKey ,
	Name = CONVERT(VARCHAR(255),base_query.name)
FROM 
(
	SELECT
		SourceKey = CurrencyId,
		Name = [Description]
	FROM dbo.Currency
) AS base_query
