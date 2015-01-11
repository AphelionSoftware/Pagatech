SELECT 
	SourceKey = COALESCE(base_query.SourceKey,change_log.change_log_SourceKey),
	Name, 
	TextDescription,
	change_operation = COALESCE(CONVERT(CHAR(1),change_log.change_operation),'I')
FROM 
(
	SELECT 
		SourceKey = pc.ProcessChannelId,
		Name = pc.ProcessChannelId, 
		TextDescription = pc.[Description]
	FROM dbo.ProcessChannel AS pc
) AS base_query
