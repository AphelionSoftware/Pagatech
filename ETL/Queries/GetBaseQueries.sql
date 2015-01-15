SELECT 
	t.name, 
	value = CONVERT(VARCHAR(max), value)
FROM sys.extended_properties as ep
INNER JOIN sys.tables AS t ON
	ep.major_id = t.object_id
WHERE ep.name ='BaseQuery'
AND CONVERT(VARCHAR(max), value) LIKE '%UPPER%'