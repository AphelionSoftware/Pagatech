SELECT t.name, value FROM sys.extended_properties as ep
INNER JOIN sys.tables AS t ON
	ep.major_id = t.object_id
WHERE ep.name = 'BaseQuery'
AND SCHEMA_NAME(t.schema_id) = 'Classification'
