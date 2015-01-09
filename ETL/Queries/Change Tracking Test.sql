
--SELECT e.UserID
--FROM CHANGETABLE (CHANGES [User], 1) AS c
--    LEFT OUTER JOIN [User] AS e
--        ON e.UserID = c.UserID



	DECLARE 
		@CurrentVersion AS BIGINT = 5,
		@LastSyncVersion AS BIGINT = 1,
		@SourceTable AS VARCHAR(255) = '[User]',
		@KeyColumns AS VARCHAR(1000) = 'UserID'



SELECT
	[AgentCommissionTypeId] AS SourceKey,
	[AgentCommissionTypeId] AS Name
FROM PagaOpsDB.dbo.AgentCommissionType AS base_query
WHERE EXISTS
(
	SELECT 
		change_log.AgentCommissionTypeId
	FROM CHANGETABLE(CHANGES dbo.AgentCommissionType,0)  AS change_log
	WHERE
		change_log.sys_CHANGE_VERSION > @LastSyncVersion 
		AND change_log.sys_CHANGE_VERSION <= @CurrentVersion
		AND change_log.AgentCommissionTypeId = base_query.AgentCommissionTypeId
)

		