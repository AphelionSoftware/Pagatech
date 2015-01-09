SELECT 
	SourceKey = COALESCE(base_query.SourceKey,change_log.change_log_SourceKey),
	Name = CONVERT(VARCHAR(255),base_query.name),
	change_operation = COALESCE(CONVERT(CHAR(1),change_log.change_operation),'I')
FROM 
(
	SELECT
		SourceKey = CurrencyId,
		Name = [Description]
	FROM dbo.Currency
) AS base_query
