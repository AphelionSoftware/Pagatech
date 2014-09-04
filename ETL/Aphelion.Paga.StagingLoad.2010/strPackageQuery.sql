SELECT
	PackageName = CONVERT(VARCHAR,(base.prefix+100)) +'_' + base.StagingTableName,
	strParm1 = 'WHERE EXISTS
	(
		SELECT ' +base.KeyColumn +'
		FROM CHANGETABLE(CHANGES ' +base.SourceTable +',0) AS change_log
		WHERE 
			change_log.SYS_CHANGE_VERSION > 6
			AND change_log.SYS_CHANGE_VERSION <= 6
			AND change_log.' +base.KeyColumn +'= base_query.SourceKey 
	);'
FROM
(
	SELECT
		prefix,
		StagingTableName,
		CONVERT(VARCHAR(1000), MAX(CASE WHEN ext_prop.name = 'KeyColumn' THEN ext_prop.value END)) AS KeyColumn,
		CONVERT(VARCHAR(1000), MAX(CASE WHEN ext_prop.name = 'SourceTable' THEN ext_prop.value END)) AS SourceTable
	FROM
	(
		SELECT 
			ROW_NUMBER() OVER ( ORDER BY t.TABLE_SCHEMA, t.TABLE_NAME) AS prefix,
			StagingTableName = t.TABLE_SCHEMA +'_' + t.TABLE_NAME,
			major_id = OBJECT_ID('' +t.TABLE_SCHEMA +'.' + t.TABLE_NAME +'')
		FROM INFORMATION_SCHEMA.TABLES AS t
		WHERE 
			t.TABLE_SCHEMA = 'Classification'
	) AS table_list
	INNER JOIN sys.extended_properties as ext_prop ON 
		table_list.major_id = ext_prop.major_id
	WHERE 
		ext_prop.name = 'KeyColumn' OR ext_prop.name = 'SourceTable'
	GROUP BY
		prefix, 
		StagingTableName
) AS base