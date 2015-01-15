SELECT
	*
FROM
(
	SELECT 
		AgentCommissionTypeId AS SourceKey, 
		CONVERT(VARCHAR(255),AgentCommissionTypeId) AS Name 
	FROM dbo.AgentCommissionType
) AS base_query

