SELECT *

	--'IF OBJECT_ID(''' +'Staging.' +TABLE_SCHEMA +'_' +TABLE_NAME +''') IS NOT NULL DROP TABLE Staging.' +TABLE_SCHEMA +'_' +TABLE_NAME +';
	--GO

	--CREATE TABLE Staging.' + TABLE_SCHEMA +'_' +TABLE_NAME +'(' +col_def +');
	--GO' AS code_snippet

FROM
(
	SELECT
		TABLE_SCHEMA,
		TABLE_NAME,
		REVERSE(STUFF(REVERSE(col_def.cd),1,1,'')) as col_def
	FROM INFORMATION_SCHEMA.TABLES as t
	CROSS APPLY
	(
		SELECT
			CAST
			(
				(
					SELECT
					(
						SELECT
							COLUMN_DEF +',' AS [*]
						FROM
						(
							SELECT
								cols.TABLE_SCHEMA,
								cols.TABLE_NAME,
								cols.COLUMN_NAME AS COLUMN_DEF
							FROM
							(
								SELECT 
									TABLE_SCHEMA,
									TABLE_NAME,
									COLUMN_NAME
								FROM INFORMATION_SCHEMA.COLUMNS

								WHERE 
									TABLE_NAME = t.TABLE_NAME
									AND TABLE_SCHEMA = t.TABLE_SCHEMA
									AND ORDINAL_POSITION > 1
									AND COLUMN_NAME NOT IN 
									(
										'sys_ModifiedBy',
										'sys_ModifiedOn',
										'sys_CreatedBy',
										'sys_CreatedOn',
										'IsActive',
										'SYS_CHANGE_VERSION',
										'SYS_CHANGE_OPERATION'
									)
							) AS cols
							
						) AS x
						WHERE 
							(x.TABLE_SCHEMA <> 'Mapping' AND x.TABLE_SCHEMA <> 'dbo')
							AND (x.TABLE_NAME <> 'DimDate' AND x.TABLE_NAME <> 'DimTime')
						ORDER BY
							x.TABLE_NAME
						FOR XML PATH (''), TYPE
				)
			) AS VARCHAR(MAX)) AS cd
	) as col_def
	WHERE 
		t.TABLE_TYPE = 'BASE TABLE'
) as table_list
WHERE
	table_list.col_def IS NOT NULL
ORDER BY
	TABLE_SCHEMA, 
	TABLE_NAME