SELECT 
	SourceKey = COALESCE(base_query.SourceKey,change_log.change_log_SourceKey),
	base_query.name,
	DimProcessTypeGroupSourceKey,
	change_operation = COALESCE(CONVERT(CHAR(1),change_log.change_operation),'I')
FROM 
(
	SELECT
		SourceKey,
		Name= SourceKey,
		DimProcessTypeGroupSourceKey = COALESCE(DimProcessTypeGroupSourceKey,'UNKNOWN'),
		DescriptionText
		FROM
		(
		SELECT
			pt.ProcessTypeID AS SourceKey, 
			CONVERT(VARCHAR(255),pt.Description) AS Name,
			CONVERT(VARCHAR(255), ptg.ProcessTypeGroupId) AS DimProcessTypeGroupSourceKey,
			CONVERT(VARCHAR(1000),pt.description) AS DescriptionText
		FROM dbo.ProcessType AS pt
		LEFT JOIN dbo.ProcessTypeProcessTypeGroup AS ptg ON
		pt.ProcessTypeID = ptg.ProcessTypeID
	) AS bq
) as base_query
