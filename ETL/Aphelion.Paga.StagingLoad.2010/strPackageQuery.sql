SELECT
	PackageName = CONVERT(VARCHAR,(base.prefix+100)) +'_' + base.StagingTableName,
	BaseQuery,
	WhereClause = 'WHERE EXISTS
	(
		SELECT 
		FROM CHANGETABLE(CHANGES ,' +base.keycolumn +') AS change_log
		WHERE 
			change_log.SYS_CHANGE_VERSION > 0
			AND change_log.SYS_CHANGE_VERSION <= 0,
			AND change_log.' +base.keycolumn +'= base_query.' +base.keycolumn +'
	);',
	SourceTable
FROM
(
	SELECT
		ROW_NUMBER() OVER ( ORDER BY x.StagingTableName) AS prefix,
		x.StagingTableName, 
		CONVERT(VARCHAR(4000), MAX(CASE 
			WHEN extprop.name = 'BaseQuery'
			THEN extprop.value
		END)) AS BaseQuery,
		CONVERT(VARCHAR(255), MAX(CASE 
			WHEN extprop.name = 'KeyColumn'
			THEN extprop.value
		END)) AS KeyColumn,
		MAX(CASE 
			WHEN extprop.name = 'SourceTable'
			THEN extprop.value
		END) AS SourceTable
	FROM 
	(
		SELECT DISTINCT
			StagingTableName = SCHEMA_NAME(t.schema_id) +'_' + t.name,
			ep.major_id
		FROM sys.extended_properties AS ep
		INNER JOIN sys.tables AS t ON
			ep.major_id = t.object_id
		WHERE 
			SCHEMA_NAME(t.schema_id) = 'Classification'
	) AS x 
	CROSS APPLY
	(
		SELECT 
			name, 
			value 
		FROM sys.extended_properties AS y 
		WHERE	x.major_id = y.major_id	
		AND (y.name = 'KeyColumn' OR y.name = 'SourceTable' OR y.name = 'BaseQuery')
	) as extProp
	GROUP BY
		x.StagingTableName
) AS base