SELECT 
	SourceKey = COALESCE(base_query.SourceKey,change_log.change_log_SourceKey),
	base_query.name,
	base_query.code,
	base_query.DimRegionSourceKey,
	change_operation = COALESCE(CONVERT(CHAR(1),change_log.change_operation),'I')
FROM 

(SELECT LocalGovernmentAreaId AS SourceKey,  CONVERT(VARCHAR(255),Name) AS Name, CONVERT(VARCHAR(50),LgaCode) as Code, RegionId AS DimRegionSourceKey FROM dbo.LocalGovernmentArea) as base_query
