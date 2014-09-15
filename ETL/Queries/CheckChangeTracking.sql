SELECT OBJECT_NAME(ctt.object_id) AS TABLE_NAME INTO #Tables FROM PagaOpsDB.sys.change_tracking_tables AS ctt


SELECT DISTINCT
	'ALTER TABLE dbo. ' + y.TABLE_NAME +' ENABLE CHANGE_TRACKING WITH(TRACK_COLUMNS_UPDATED = ON)'
	
FROM
(
	SELECT TOP 123456789
		RIGHT(TABLE_NAME,LEN(TABLE_NAME)-4) AS TABLE_NAME
	FROM
	(
		SELECT CAST(value AS VARCHAR(100)) AS TABLE_NAME from Paga_EDW.sys.extended_properties
		WHERE name = 'SourceTable' AND LEN(CAST(value AS VARCHAR(100))) > 0
	)AS x
) AS y	
LEFT OUTER JOIN #TABLES as t ON
	y.TABLE_NAME = t.TABLE_NAME
WHERE t.TABLE_NAME IS NULL