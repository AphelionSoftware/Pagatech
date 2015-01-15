SELECT 
	SourceKey,
	Name, 
	TextDescription
FROM 
(
	SELECT 
		SourceKey = pc.ProcessChannelId,
		Name = pc.ProcessChannelId, 
		TextDescription = pc.[Description]
	FROM dbo.ProcessChannel AS pc
) AS base_query
