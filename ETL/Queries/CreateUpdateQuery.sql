SELECT *


INTO #PartOne
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
							COLUMN_DEF1 +',' AS [*]
						FROM
						(
							SELECT
								cols.TABLE_SCHEMA,
								cols.TABLE_NAME,
								'Target.' + cols.COLUMN_NAME +' = Source.' + cols.COLUMN_NAME AS COLUMN_DEF1,
								'Source.' + cols.COLUMN_NAME AS COLUMN_DEF3,
								cols.COLUMN_NAME AS COLUMN_DEF2
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
										'IsActive'
										
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

SELECT *


INTO #PartTwo
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
							COLUMN_DEF2 +',' AS [*]
						FROM
						(
							SELECT
								cols.TABLE_SCHEMA,
								cols.TABLE_NAME,
								'Target.' + cols.COLUMN_NAME +' = Source.' + cols.COLUMN_NAME AS COLUMN_DEF1,
								'Source.' + cols.COLUMN_NAME AS COLUMN_DEF3,
								cols.COLUMN_NAME AS COLUMN_DEF2
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
										'IsActive'
										
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

SELECT *


INTO #PartThree
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
							COLUMN_DEF3 +',' AS [*]
						FROM
						(
							SELECT
								cols.TABLE_SCHEMA,
								cols.TABLE_NAME,
								'Target.' + cols.COLUMN_NAME +' = Source.' + cols.COLUMN_NAME AS COLUMN_DEF1,
								'Source.' + cols.COLUMN_NAME AS COLUMN_DEF3,
								cols.COLUMN_NAME AS COLUMN_DEF2
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
										'IsActive'
										
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












	SELECT 
		'EXEC sys.sp_updateextendedproperty @name=N''UpdateQuery'', @value=''' +y.QueryText +''', @level0type=N''SCHEMA'',@level0name=N'''+ x.TABLE_SCHEMA +''', @level1type=N''TABLE'',@level1name=N''' + x.TABLE_NAME +'''
		
		' AS sql_snippet	
	FROM
	(
		SELECT TOP 123456789
			OBJECT_NAME(table_list.object_id) AS TABLE_NAME,
			 SCHEMA_NAME(table_list.schema_id) as TABLE_SCHEMA
			
		FROM 
		( 
			SELECT  
				StagingTableName = SCHEMA_NAME(t.schema_id) +'_' + t.name, 
				t.object_id,
				t.schema_id  
			FROM sys.tables AS t  
			--WHERE  
			--	SCHEMA_NAME(t.schema_id) = @Schema 
		) table_list 
		INNER JOIN sys.extended_properties AS ext_prop ON 
			table_list.object_id = ext_prop.major_id 
		WHERE  
			ext_prop.name = 'UpdateQuery'

	)as x
	CROSS APPLY
	(
		
		SELECT
			'MERGE  Paga_EDW.[' +t1.TABLE_SCHEMA +'].[' +t1.Table_NAME +'] AS Target
			USING 
			(
				SELECT
						x.*
				FROM
				(
					SELECT
						ROW_NUMBER() OVER (PARTITION BY stg.SourceKey ORDER BY stg.SYS_CHANGE_VERSION DESC) AS rn,
						stg.*
					FROM Paga_Staging.Updates.'+t1.TABLE_SCHEMA +'_' +t1.Table_NAME +' AS stg
				) as x
				WHERE x.rn = 1

			) AS Source ON 
				Target.sourcekey = Source.sourcekey


			WHEN MATCHED  
			THEN
				UPDATE SET 
				' +t1.col_def +'
			WHEN NOT MATCHED BY TARGET
			THEN
				INSERT 
				(
					SourceKey,
				'+t2.col_def +'
				)
			VALUES 
			(
				Source.SourceKey, 
				'+ t3.col_def +'
			);' AS QueryText


		FROM #PartOne as t1
		INNER JOIN #PartTwo AS t2 ON 
			t1.TABLE_NAME = t2.TABLE_NAME
			AND t1.TABLE_SCHEMA = t2.TABLE_SCHEMA
		INNER JOIN #PartThree AS t3 ON
			t3.TABLE_NAME = t1.TABLE_NAME
			AND t3.TABLE_SCHEMA = t1.TABLE_SCHEMA
		WHERE
			t1.TABLE_NAME = x.TABLE_NAME
			AND t1.TABLE_SCHEMA = x.TABLE_SCHEMA	
	) AS y	
	






