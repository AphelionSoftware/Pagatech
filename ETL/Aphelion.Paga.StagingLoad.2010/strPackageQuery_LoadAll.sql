SELECT
	PackageName = CONVERT(VARCHAR,(base.prefix+100)) +'_' + base.StagingTableName,
	strParm1 = BaseQuery,
	strParm2 = ''

FROM
(
	SELECT
		ROW_NUMBER() OVER ( ORDER BY x.StagingTableName) AS prefix,
		x.StagingTableName, 
		CONVERT(VARCHAR(4000), MAX(CASE 
			WHEN extprop.name = 'BaseQuery'
			THEN extprop.value
		END)) AS BaseQuery
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
		AND y.name = 'BaseQuery'
	) as extProp
	GROUP BY
		x.StagingTableName
) AS base